package org.cocos2dx.lib;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.opengl.GLSurfaceView.EGLConfigChooser;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.preference.PreferenceManager.OnActivityResultListener;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import java.util.Iterator;
import java.util.Set;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public abstract class Cocos2dxActivity
  extends Activity
  implements Cocos2dxHelper.Cocos2dxHelperListener
{
  private static final String TAG = Cocos2dxActivity.class.getSimpleName();
  private static Cocos2dxActivity sContext = null;
  private int[] glContextAttrs;
  protected FrameLayout mFrameLayout = null;
  private Cocos2dxGLSurfaceView mGLSurfaceView;
  private Cocos2dxHandler mHandler;
  private Cocos2dxVideoHelper mVideoHelper = null;
  private Cocos2dxWebViewHelper mWebViewHelper = null;
  
  public static Context getContext()
  {
    return sContext;
  }
  
  private static native int[] getGLContextAttrs();
  
  private static final boolean isAndroidEmulator()
  {
    String str = Build.MODEL;
    Log.d(TAG, "model=" + str);
    str = Build.PRODUCT;
    Log.d(TAG, "product=" + str);
    boolean bool = false;
    if (str != null) {
      if ((!str.equals("sdk")) && (!str.contains("_sdk")) && (!str.contains("sdk_"))) {
        break label123;
      }
    }
    label123:
    for (bool = true;; bool = false)
    {
      Log.d(TAG, "isEmulator=" + bool);
      return bool;
    }
  }
  
  public void init()
  {
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    this.mFrameLayout = new FrameLayout(this);
    this.mFrameLayout.setLayoutParams(localLayoutParams);
    localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
    Cocos2dxEditText localCocos2dxEditText = new Cocos2dxEditText(this);
    localCocos2dxEditText.setLayoutParams(localLayoutParams);
    this.mFrameLayout.addView(localCocos2dxEditText);
    this.mGLSurfaceView = onCreateView();
    this.mFrameLayout.addView(this.mGLSurfaceView);
    if (isAndroidEmulator()) {
      this.mGLSurfaceView.setEGLConfigChooser(8, 8, 8, 8, 16, 0);
    }
    this.mGLSurfaceView.setCocos2dxRenderer(new Cocos2dxRenderer());
    this.mGLSurfaceView.setCocos2dxEditText(localCocos2dxEditText);
    this.mGLSurfaceView.setFocusable(true);
    this.mGLSurfaceView.setFocusableInTouchMode(true);
    setContentView(this.mFrameLayout);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Iterator localIterator = Cocos2dxHelper.getOnActivityResultListeners().iterator();
    while (localIterator.hasNext()) {
      ((PreferenceManager.OnActivityResultListener)localIterator.next()).onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((getIntent().getFlags() & 0x400000) != 0) {
      finish();
    }
    do
    {
      return;
      System.loadLibrary("bladeflurry");
      getAssets();
      sContext = this;
      this.mHandler = new Cocos2dxHandler(this);
      Cocos2dxHelper.init(this);
      this.glContextAttrs = getGLContextAttrs();
      init();
      if (this.mVideoHelper == null) {
        this.mVideoHelper = new Cocos2dxVideoHelper(this, this.mFrameLayout);
      }
    } while (this.mWebViewHelper != null);
    this.mWebViewHelper = new Cocos2dxWebViewHelper(this.mFrameLayout);
  }
  
  public Cocos2dxGLSurfaceView onCreateView()
  {
    Cocos2dxGLSurfaceView localCocos2dxGLSurfaceView = new Cocos2dxGLSurfaceView(this);
    if (this.glContextAttrs[3] > 0) {
      localCocos2dxGLSurfaceView.getHolder().setFormat(-3);
    }
    localCocos2dxGLSurfaceView.setEGLConfigChooser(new GLSurfaceView.EGLConfigChooser()
    {
      protected int[] configAttribs;
      
      private int findConfigAttrib(EGL10 paramAnonymousEGL10, EGLDisplay paramAnonymousEGLDisplay, EGLConfig paramAnonymousEGLConfig, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        int[] arrayOfInt = new int[1];
        if (paramAnonymousEGL10.eglGetConfigAttrib(paramAnonymousEGLDisplay, paramAnonymousEGLConfig, paramAnonymousInt1, arrayOfInt)) {
          paramAnonymousInt2 = arrayOfInt[0];
        }
        return paramAnonymousInt2;
      }
      
      public EGLConfig chooseConfig(EGL10 paramAnonymousEGL10, EGLDisplay paramAnonymousEGLDisplay)
      {
        int[] arrayOfInt1 = new int[1];
        if (paramAnonymousEGL10.eglGetConfigs(paramAnonymousEGLDisplay, null, 0, arrayOfInt1))
        {
          EGLConfig[] arrayOfEGLConfig = new EGLConfig[arrayOfInt1[0]];
          int i = this.configAttribs[0];
          int j = this.configAttribs[1];
          int k = this.configAttribs[2];
          int m = this.configAttribs[3];
          int n = this.configAttribs[4];
          int i1 = this.configAttribs[5];
          int[] arrayOfInt2 = new int[1];
          int i2 = arrayOfInt1[0];
          paramAnonymousEGL10.eglChooseConfig(paramAnonymousEGLDisplay, new int[] { 12324, i, 12323, j, 12322, k, 12321, m, 12325, n, 12326, i1, 12352, 4, 12344 }, arrayOfEGLConfig, i2, arrayOfInt2);
          if (arrayOfInt2[0] > 0) {
            return selectConfig(paramAnonymousEGL10, paramAnonymousEGLDisplay, arrayOfEGLConfig, this.configAttribs);
          }
          if (this.configAttribs[3] == 0)
          {
            i = arrayOfInt1[0];
            paramAnonymousEGL10.eglChooseConfig(paramAnonymousEGLDisplay, new int[] { 12324, 5, 12323, 6, 12322, 5, 12321, 0, 12325, 0, 12326, 0, 12352, 4, 12344 }, arrayOfEGLConfig, i, arrayOfInt2);
            arrayOfInt1 = new int[6];
            int[] tmp339_337 = arrayOfInt1;
            tmp339_337[0] = 5;
            int[] tmp343_339 = tmp339_337;
            tmp343_339[1] = 6;
            int[] tmp348_343 = tmp343_339;
            tmp348_343[2] = 5;
            int[] tmp352_348 = tmp348_343;
            tmp352_348[3] = 0;
            int[] tmp356_352 = tmp352_348;
            tmp356_352[4] = 0;
            int[] tmp360_356 = tmp356_352;
            tmp360_356[5] = 0;
            tmp360_356;
          }
          while (arrayOfInt2[0] > 0)
          {
            return selectConfig(paramAnonymousEGL10, paramAnonymousEGLDisplay, arrayOfEGLConfig, arrayOfInt1);
            i = arrayOfInt1[0];
            paramAnonymousEGL10.eglChooseConfig(paramAnonymousEGLDisplay, new int[] { 12324, 4, 12323, 4, 12322, 4, 12321, 4, 12325, 0, 12326, 0, 12352, 4, 12344 }, arrayOfEGLConfig, i, arrayOfInt2);
            arrayOfInt1 = new int[6];
            int[] tmp498_496 = arrayOfInt1;
            tmp498_496[0] = 4;
            int[] tmp502_498 = tmp498_496;
            tmp502_498[1] = 4;
            int[] tmp506_502 = tmp502_498;
            tmp506_502[2] = 4;
            int[] tmp510_506 = tmp506_502;
            tmp510_506[3] = 4;
            int[] tmp514_510 = tmp510_506;
            tmp514_510[4] = 0;
            int[] tmp518_514 = tmp514_510;
            tmp518_514[5] = 0;
            tmp518_514;
          }
          Log.e("device_policy", "Can not select an EGLConfig for rendering.");
          return null;
        }
        Log.e("device_policy", "Can not select an EGLConfig for rendering.");
        return null;
      }
      
      public EGLConfig selectConfig(EGL10 paramAnonymousEGL10, EGLDisplay paramAnonymousEGLDisplay, EGLConfig[] paramAnonymousArrayOfEGLConfig, int[] paramAnonymousArrayOfInt)
      {
        int j = paramAnonymousArrayOfEGLConfig.length;
        int i = 0;
        while (i < j)
        {
          EGLConfig localEGLConfig = paramAnonymousArrayOfEGLConfig[i];
          int k = findConfigAttrib(paramAnonymousEGL10, paramAnonymousEGLDisplay, localEGLConfig, 12325, 0);
          int m = findConfigAttrib(paramAnonymousEGL10, paramAnonymousEGLDisplay, localEGLConfig, 12326, 0);
          if ((k >= paramAnonymousArrayOfInt[4]) && (m >= paramAnonymousArrayOfInt[5]))
          {
            k = findConfigAttrib(paramAnonymousEGL10, paramAnonymousEGLDisplay, localEGLConfig, 12324, 0);
            m = findConfigAttrib(paramAnonymousEGL10, paramAnonymousEGLDisplay, localEGLConfig, 12323, 0);
            int n = findConfigAttrib(paramAnonymousEGL10, paramAnonymousEGLDisplay, localEGLConfig, 12322, 0);
            int i1 = findConfigAttrib(paramAnonymousEGL10, paramAnonymousEGLDisplay, localEGLConfig, 12321, 0);
            if ((k >= paramAnonymousArrayOfInt[0]) && (m >= paramAnonymousArrayOfInt[1]) && (n >= paramAnonymousArrayOfInt[2]) && (i1 >= paramAnonymousArrayOfInt[3])) {
              return localEGLConfig;
            }
          }
          i += 1;
        }
        return null;
      }
    });
    Log.i("lzwsActivity", "after setEGLConfigChooser");
    int i = 0;
    while (i < 6)
    {
      Log.i("lzwsActivity", "index : " + i + " = " + this.glContextAttrs[i]);
      i += 1;
    }
    return localCocos2dxGLSurfaceView;
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
  }
  
  protected void onPause()
  {
    super.onPause();
    Cocos2dxHelper.onPause();
    this.mGLSurfaceView.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    Cocos2dxHelper.onResume();
    this.mGLSurfaceView.onResume();
  }
  
  public void runOnGLThread(Runnable paramRunnable)
  {
    this.mGLSurfaceView.queueEvent(paramRunnable);
  }
  
  public void showDialog(String paramString1, String paramString2)
  {
    Message localMessage = new Message();
    localMessage.what = 1;
    localMessage.obj = new Cocos2dxHandler.DialogMessage(paramString1, paramString2);
    this.mHandler.sendMessage(localMessage);
  }
  
  public void showEditTextDialog(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Message localMessage = new Message();
    localMessage.what = 2;
    localMessage.obj = new Cocos2dxHandler.EditBoxMessage(paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramInt4);
    this.mHandler.sendMessage(localMessage);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\lib\Cocos2dxActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */