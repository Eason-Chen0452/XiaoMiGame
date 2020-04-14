package com.bumptech.glide;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.drawable.DrawableTransitionOptions;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.manager.TargetTracker;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.target.ViewTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class RequestManager
  implements LifecycleListener
{
  private static final RequestOptions DECODE_TYPE_BITMAP = RequestOptions.decodeTypeOf(Bitmap.class).lock();
  private static final RequestOptions DECODE_TYPE_GIF = RequestOptions.decodeTypeOf(GifDrawable.class).lock();
  private static final RequestOptions DOWNLOAD_ONLY_OPTIONS = RequestOptions.diskCacheStrategyOf(DiskCacheStrategy.DATA).priority(Priority.LOW).skipMemoryCache(true);
  private final Runnable addSelfToLifecycle = new Runnable()
  {
    public void run()
    {
      RequestManager.this.lifecycle.addListener(RequestManager.this);
    }
  };
  private final ConnectivityMonitor connectivityMonitor;
  protected final Glide glide;
  final Lifecycle lifecycle;
  private final Handler mainHandler = new Handler(Looper.getMainLooper());
  @NonNull
  private RequestOptions requestOptions;
  private final RequestTracker requestTracker;
  private final TargetTracker targetTracker = new TargetTracker();
  private final RequestManagerTreeNode treeNode;
  
  public RequestManager(Glide paramGlide, Lifecycle paramLifecycle, RequestManagerTreeNode paramRequestManagerTreeNode)
  {
    this(paramGlide, paramLifecycle, paramRequestManagerTreeNode, new RequestTracker(), paramGlide.getConnectivityMonitorFactory());
  }
  
  RequestManager(Glide paramGlide, Lifecycle paramLifecycle, RequestManagerTreeNode paramRequestManagerTreeNode, RequestTracker paramRequestTracker, ConnectivityMonitorFactory paramConnectivityMonitorFactory)
  {
    this.glide = paramGlide;
    this.lifecycle = paramLifecycle;
    this.treeNode = paramRequestManagerTreeNode;
    this.requestTracker = paramRequestTracker;
    this.connectivityMonitor = paramConnectivityMonitorFactory.build(paramGlide.getGlideContext().getBaseContext(), new RequestManagerConnectivityListener(paramRequestTracker));
    if (Util.isOnBackgroundThread()) {
      this.mainHandler.post(this.addSelfToLifecycle);
    }
    for (;;)
    {
      paramLifecycle.addListener(this.connectivityMonitor);
      setRequestOptions(paramGlide.getGlideContext().getDefaultRequestOptions());
      paramGlide.registerRequestManager(this);
      return;
      paramLifecycle.addListener(this);
    }
  }
  
  private void untrackOrDelegate(Target<?> paramTarget)
  {
    if (!untrack(paramTarget)) {
      this.glide.removeFromManagers(paramTarget);
    }
  }
  
  private void updateRequestOptions(RequestOptions paramRequestOptions)
  {
    this.requestOptions.apply(paramRequestOptions);
  }
  
  public RequestManager applyDefaultRequestOptions(RequestOptions paramRequestOptions)
  {
    updateRequestOptions(paramRequestOptions);
    return this;
  }
  
  public <ResourceType> RequestBuilder<ResourceType> as(Class<ResourceType> paramClass)
  {
    return new RequestBuilder(this.glide, this, paramClass);
  }
  
  public RequestBuilder<Bitmap> asBitmap()
  {
    return as(Bitmap.class).transition(new GenericTransitionOptions()).apply(DECODE_TYPE_BITMAP);
  }
  
  public RequestBuilder<Drawable> asDrawable()
  {
    return as(Drawable.class).transition(new DrawableTransitionOptions());
  }
  
  public RequestBuilder<File> asFile()
  {
    return as(File.class).apply(RequestOptions.skipMemoryCacheOf(true));
  }
  
  public RequestBuilder<GifDrawable> asGif()
  {
    return as(GifDrawable.class).transition(new DrawableTransitionOptions()).apply(DECODE_TYPE_GIF);
  }
  
  public void clear(View paramView)
  {
    clear(new ClearTarget(paramView));
  }
  
  public void clear(@Nullable final Target<?> paramTarget)
  {
    if (paramTarget == null) {
      return;
    }
    if (Util.isOnMainThread())
    {
      untrackOrDelegate(paramTarget);
      return;
    }
    this.mainHandler.post(new Runnable()
    {
      public void run()
      {
        RequestManager.this.clear(paramTarget);
      }
    });
  }
  
  public RequestBuilder<File> download(@Nullable Object paramObject)
  {
    return downloadOnly().load(paramObject);
  }
  
  public RequestBuilder<File> downloadOnly()
  {
    return as(File.class).apply(DOWNLOAD_ONLY_OPTIONS);
  }
  
  RequestOptions getDefaultRequestOptions()
  {
    return this.requestOptions;
  }
  
  public boolean isPaused()
  {
    Util.assertMainThread();
    return this.requestTracker.isPaused();
  }
  
  public RequestBuilder<Drawable> load(@Nullable Object paramObject)
  {
    return asDrawable().load(paramObject);
  }
  
  public void onDestroy()
  {
    this.targetTracker.onDestroy();
    Iterator localIterator = this.targetTracker.getAll().iterator();
    while (localIterator.hasNext()) {
      clear((Target)localIterator.next());
    }
    this.targetTracker.clear();
    this.requestTracker.clearRequests();
    this.lifecycle.removeListener(this);
    this.lifecycle.removeListener(this.connectivityMonitor);
    this.mainHandler.removeCallbacks(this.addSelfToLifecycle);
    this.glide.unregisterRequestManager(this);
  }
  
  public void onLowMemory()
  {
    this.glide.getGlideContext().onLowMemory();
  }
  
  public void onStart()
  {
    resumeRequests();
    this.targetTracker.onStart();
  }
  
  public void onStop()
  {
    pauseRequests();
    this.targetTracker.onStop();
  }
  
  public void onTrimMemory(int paramInt)
  {
    this.glide.getGlideContext().onTrimMemory(paramInt);
  }
  
  public void pauseRequests()
  {
    Util.assertMainThread();
    this.requestTracker.pauseRequests();
  }
  
  public void pauseRequestsRecursive()
  {
    Util.assertMainThread();
    pauseRequests();
    Iterator localIterator = this.treeNode.getDescendants().iterator();
    while (localIterator.hasNext()) {
      ((RequestManager)localIterator.next()).pauseRequests();
    }
  }
  
  public void resumeRequests()
  {
    Util.assertMainThread();
    this.requestTracker.resumeRequests();
  }
  
  public void resumeRequestsRecursive()
  {
    Util.assertMainThread();
    resumeRequests();
    Iterator localIterator = this.treeNode.getDescendants().iterator();
    while (localIterator.hasNext()) {
      ((RequestManager)localIterator.next()).resumeRequests();
    }
  }
  
  public RequestManager setDefaultRequestOptions(RequestOptions paramRequestOptions)
  {
    setRequestOptions(paramRequestOptions);
    return this;
  }
  
  protected void setRequestOptions(@NonNull RequestOptions paramRequestOptions)
  {
    this.requestOptions = paramRequestOptions.clone().autoClone();
  }
  
  public String toString()
  {
    return super.toString() + "{tracker=" + this.requestTracker + ", treeNode=" + this.treeNode + "}";
  }
  
  void track(Target<?> paramTarget, Request paramRequest)
  {
    this.targetTracker.track(paramTarget);
    this.requestTracker.runRequest(paramRequest);
  }
  
  boolean untrack(Target<?> paramTarget)
  {
    Request localRequest = paramTarget.getRequest();
    if (localRequest == null) {
      return true;
    }
    if (this.requestTracker.clearRemoveAndRecycle(localRequest))
    {
      this.targetTracker.untrack(paramTarget);
      paramTarget.setRequest(null);
      return true;
    }
    return false;
  }
  
  private static class ClearTarget
    extends ViewTarget<View, Object>
  {
    public ClearTarget(View paramView)
    {
      super();
    }
    
    public void onResourceReady(Object paramObject, Transition<? super Object> paramTransition) {}
  }
  
  private static class RequestManagerConnectivityListener
    implements ConnectivityMonitor.ConnectivityListener
  {
    private final RequestTracker requestTracker;
    
    public RequestManagerConnectivityListener(RequestTracker paramRequestTracker)
    {
      this.requestTracker = paramRequestTracker;
    }
    
    public void onConnectivityChanged(boolean paramBoolean)
    {
      if (paramBoolean) {
        this.requestTracker.restartRequests();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\RequestManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */