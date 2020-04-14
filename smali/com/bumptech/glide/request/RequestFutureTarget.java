package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.support.annotation.Nullable;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class RequestFutureTarget<R>
  implements FutureTarget<R>, Runnable
{
  private static final Waiter DEFAULT_WAITER = new Waiter();
  private final boolean assertBackgroundThread;
  private final int height;
  private boolean isCancelled;
  private boolean loadFailed;
  private final Handler mainHandler;
  @Nullable
  private Request request;
  @Nullable
  private R resource;
  private boolean resultReceived;
  private final Waiter waiter;
  private final int width;
  
  public RequestFutureTarget(Handler paramHandler, int paramInt1, int paramInt2)
  {
    this(paramHandler, paramInt1, paramInt2, true, DEFAULT_WAITER);
  }
  
  RequestFutureTarget(Handler paramHandler, int paramInt1, int paramInt2, boolean paramBoolean, Waiter paramWaiter)
  {
    this.mainHandler = paramHandler;
    this.width = paramInt1;
    this.height = paramInt2;
    this.assertBackgroundThread = paramBoolean;
    this.waiter = paramWaiter;
  }
  
  private void clearOnMainThread()
  {
    this.mainHandler.post(this);
  }
  
  private R doGet(Long paramLong)
    throws ExecutionException, InterruptedException, TimeoutException
  {
    try
    {
      if ((this.assertBackgroundThread) && (!isDone())) {
        Util.assertBackgroundThread();
      }
      if (this.isCancelled) {
        throw new CancellationException();
      }
    }
    finally {}
    if (this.loadFailed) {
      throw new ExecutionException(new IllegalStateException("Load failed"));
    }
    if (this.resultReceived) {}
    for (paramLong = this.resource;; paramLong = this.resource)
    {
      return paramLong;
      if (paramLong == null) {
        this.waiter.waitForTimeout(this, 0L);
      }
      while (Thread.interrupted())
      {
        throw new InterruptedException();
        if (paramLong.longValue() > 0L) {
          this.waiter.waitForTimeout(this, paramLong.longValue());
        }
      }
      if (this.loadFailed) {
        throw new ExecutionException(new IllegalStateException("Load failed"));
      }
      if (this.isCancelled) {
        throw new CancellationException();
      }
      if (!this.resultReceived) {
        throw new TimeoutException();
      }
    }
  }
  
  /* Error */
  public boolean cancel(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: invokevirtual 73	com/bumptech/glide/request/RequestFutureTarget:isDone	()Z
    //   8: istore_2
    //   9: iload_2
    //   10: ifeq +9 -> 19
    //   13: iconst_0
    //   14: istore_2
    //   15: aload_0
    //   16: monitorexit
    //   17: iload_2
    //   18: ireturn
    //   19: aload_0
    //   20: iconst_1
    //   21: putfield 79	com/bumptech/glide/request/RequestFutureTarget:isCancelled	Z
    //   24: aload_0
    //   25: getfield 54	com/bumptech/glide/request/RequestFutureTarget:waiter	Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
    //   28: aload_0
    //   29: invokevirtual 124	com/bumptech/glide/request/RequestFutureTarget$Waiter:notifyAll	(Ljava/lang/Object;)V
    //   32: iload_3
    //   33: istore_2
    //   34: iload_1
    //   35: ifeq -20 -> 15
    //   38: aload_0
    //   39: invokespecial 126	com/bumptech/glide/request/RequestFutureTarget:clearOnMainThread	()V
    //   42: iload_3
    //   43: istore_2
    //   44: goto -29 -> 15
    //   47: astore 4
    //   49: aload_0
    //   50: monitorexit
    //   51: aload 4
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	RequestFutureTarget
    //   0	54	1	paramBoolean	boolean
    //   8	36	2	bool1	boolean
    //   1	42	3	bool2	boolean
    //   47	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	9	47	finally
    //   19	32	47	finally
    //   38	42	47	finally
  }
  
  public R get()
    throws InterruptedException, ExecutionException
  {
    try
    {
      Object localObject = doGet(null);
      return (R)localObject;
    }
    catch (TimeoutException localTimeoutException)
    {
      throw new AssertionError(localTimeoutException);
    }
  }
  
  public R get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    return (R)doGet(Long.valueOf(paramTimeUnit.toMillis(paramLong)));
  }
  
  @Nullable
  public Request getRequest()
  {
    return this.request;
  }
  
  public void getSize(SizeReadyCallback paramSizeReadyCallback)
  {
    paramSizeReadyCallback.onSizeReady(this.width, this.height);
  }
  
  public boolean isCancelled()
  {
    try
    {
      boolean bool = this.isCancelled;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean isDone()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 79	com/bumptech/glide/request/RequestFutureTarget:isCancelled	Z
    //   6: ifne +12 -> 18
    //   9: aload_0
    //   10: getfield 96	com/bumptech/glide/request/RequestFutureTarget:resultReceived	Z
    //   13: istore_1
    //   14: iload_1
    //   15: ifeq +9 -> 24
    //   18: iconst_1
    //   19: istore_1
    //   20: aload_0
    //   21: monitorexit
    //   22: iload_1
    //   23: ireturn
    //   24: iconst_0
    //   25: istore_1
    //   26: goto -6 -> 20
    //   29: astore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_2
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	RequestFutureTarget
    //   13	13	1	bool	boolean
    //   29	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
  }
  
  public void onDestroy() {}
  
  public void onLoadCleared(Drawable paramDrawable) {}
  
  public void onLoadFailed(Drawable paramDrawable)
  {
    try
    {
      this.loadFailed = true;
      this.waiter.notifyAll(this);
      return;
    }
    finally
    {
      paramDrawable = finally;
      throw paramDrawable;
    }
  }
  
  public void onLoadStarted(Drawable paramDrawable) {}
  
  public void onResourceReady(R paramR, Transition<? super R> paramTransition)
  {
    try
    {
      this.resultReceived = true;
      this.resource = paramR;
      this.waiter.notifyAll(this);
      return;
    }
    finally
    {
      paramR = finally;
      throw paramR;
    }
  }
  
  public void onStart() {}
  
  public void onStop() {}
  
  public void removeCallback(SizeReadyCallback paramSizeReadyCallback) {}
  
  public void run()
  {
    if (this.request != null)
    {
      this.request.clear();
      this.request = null;
    }
  }
  
  public void setRequest(@Nullable Request paramRequest)
  {
    this.request = paramRequest;
  }
  
  static class Waiter
  {
    public void notifyAll(Object paramObject)
    {
      paramObject.notifyAll();
    }
    
    public void waitForTimeout(Object paramObject, long paramLong)
      throws InterruptedException
    {
      paramObject.wait(paramLong);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\bumptech\glide\request\RequestFutureTarget.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */