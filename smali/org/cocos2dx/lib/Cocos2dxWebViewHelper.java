package org.cocos2dx.lib;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

public class Cocos2dxWebViewHelper
{
  private static final String TAG = Cocos2dxWebViewHelper.class.getSimpleName();
  private static Cocos2dxActivity sCocos2dxActivity;
  private static Handler sHandler;
  private static FrameLayout sLayout;
  private static int viewTag = 0;
  private static SparseArray<Cocos2dxWebView> webViews;
  
  public Cocos2dxWebViewHelper(FrameLayout paramFrameLayout)
  {
    sLayout = paramFrameLayout;
    sHandler = new Handler(Looper.myLooper());
    sCocos2dxActivity = (Cocos2dxActivity)Cocos2dxActivity.getContext();
    webViews = new SparseArray();
  }
  
  public static void _didFailLoading(int paramInt, String paramString)
  {
    didFailLoading(paramInt, paramString);
  }
  
  public static void _didFinishLoading(int paramInt, String paramString)
  {
    didFinishLoading(paramInt, paramString);
  }
  
  public static void _onJsCallback(int paramInt, String paramString)
  {
    onJsCallback(paramInt, paramString);
  }
  
  public static boolean _shouldStartLoading(int paramInt, String paramString)
  {
    return !shouldStartLoading(paramInt, paramString);
  }
  
  public static <T> T callInMainThread(Callable<T> paramCallable)
    throws ExecutionException, InterruptedException
  {
    paramCallable = new FutureTask(paramCallable);
    sHandler.post(paramCallable);
    return (T)paramCallable.get();
  }
  
  public static boolean canGoBack(int paramInt)
  {
    Callable local12 = new Callable()
    {
      public Boolean call()
        throws Exception
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if ((localCocos2dxWebView != null) && (localCocos2dxWebView.canGoBack())) {}
        for (boolean bool = true;; bool = false) {
          return Boolean.valueOf(bool);
        }
      }
    };
    try
    {
      boolean bool = ((Boolean)callInMainThread(local12)).booleanValue();
      return bool;
    }
    catch (ExecutionException localExecutionException)
    {
      return false;
    }
    catch (InterruptedException localInterruptedException) {}
    return false;
  }
  
  public static boolean canGoForward(int paramInt)
  {
    Callable local13 = new Callable()
    {
      public Boolean call()
        throws Exception
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if ((localCocos2dxWebView != null) && (localCocos2dxWebView.canGoForward())) {}
        for (boolean bool = true;; bool = false) {
          return Boolean.valueOf(bool);
        }
      }
    };
    try
    {
      boolean bool = ((Boolean)callInMainThread(local13)).booleanValue();
      return bool;
    }
    catch (ExecutionException localExecutionException)
    {
      return false;
    }
    catch (InterruptedException localInterruptedException) {}
    return false;
  }
  
  public static int createWebView()
  {
    int i = viewTag;
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = new Cocos2dxWebView(Cocos2dxWebViewHelper.sCocos2dxActivity, this.val$index);
        FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
        Cocos2dxWebViewHelper.sLayout.addView(localCocos2dxWebView, localLayoutParams);
        Cocos2dxWebViewHelper.webViews.put(this.val$index, localCocos2dxWebView);
      }
    });
    i = viewTag;
    viewTag = i + 1;
    return i;
  }
  
  private static native void didFailLoading(int paramInt, String paramString);
  
  private static native void didFinishLoading(int paramInt, String paramString);
  
  public static void evaluateJS(int paramInt, final String paramString)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.loadUrl("javascript:" + paramString);
        }
      }
    });
  }
  
  public static void goBack(int paramInt)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.goBack();
        }
      }
    });
  }
  
  public static void goForward(int paramInt)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.goForward();
        }
      }
    });
  }
  
  public static void loadData(int paramInt, final String paramString1, final String paramString2, final String paramString3, final String paramString4)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.loadDataWithBaseURL(paramString4, paramString1, paramString2, paramString3, null);
        }
      }
    });
  }
  
  public static void loadFile(int paramInt, final String paramString)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.loadUrl(paramString);
        }
      }
    });
  }
  
  public static void loadHTMLString(int paramInt, final String paramString1, final String paramString2)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.loadDataWithBaseURL(paramString2, paramString1, null, null, null);
        }
      }
    });
  }
  
  public static void loadUrl(int paramInt, final String paramString)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.loadUrl(paramString);
        }
      }
    });
  }
  
  private static native void onJsCallback(int paramInt, String paramString);
  
  public static void reload(int paramInt)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.reload();
        }
      }
    });
  }
  
  public static void removeWebView(int paramInt)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null)
        {
          Cocos2dxWebViewHelper.webViews.remove(this.val$index);
          Cocos2dxWebViewHelper.sLayout.removeView(localCocos2dxWebView);
        }
      }
    });
  }
  
  public static void setJavascriptInterfaceScheme(int paramInt, final String paramString)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.setJavascriptInterfaceScheme(paramString);
        }
      }
    });
  }
  
  public static void setScalesPageToFit(int paramInt, final boolean paramBoolean)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.setScalesPageToFit(paramBoolean);
        }
      }
    });
  }
  
  public static void setVisible(int paramInt, final boolean paramBoolean)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          if (!paramBoolean) {
            break label33;
          }
        }
        label33:
        for (int i = 0;; i = 8)
        {
          localCocos2dxWebView.setVisibility(i);
          return;
        }
      }
    });
  }
  
  public static void setWebViewRect(int paramInt1, final int paramInt2, final int paramInt3, final int paramInt4, final int paramInt5)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.setWebViewRect(paramInt2, paramInt3, paramInt4, paramInt5);
        }
      }
    });
  }
  
  private static native boolean shouldStartLoading(int paramInt, String paramString);
  
  public static void stopLoading(int paramInt)
  {
    sCocos2dxActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        Cocos2dxWebView localCocos2dxWebView = (Cocos2dxWebView)Cocos2dxWebViewHelper.webViews.get(this.val$index);
        if (localCocos2dxWebView != null) {
          localCocos2dxWebView.stopLoading();
        }
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\lib\Cocos2dxWebViewHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */