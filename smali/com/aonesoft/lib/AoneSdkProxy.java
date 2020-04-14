package com.aonesoft.lib;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.res.Configuration;
import android.opengl.GLSurfaceView;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Toast;
import com.aonesoft.lib.utils.AoneAdvertisingIdClient;
import com.aonesoft.lib.utils.PermissionHelper;
import indi.cputils.Helper;
import java.io.File;
import java.io.PrintStream;
import java.util.Hashtable;
import org.cocos2dx.plugin.ActivityEventListener;
import org.cocos2dx.plugin.PluginWrapper;

public class AoneSdkProxy
{
  private static final int REQUEST_CODE_ASK_PERMISSIONS = 123;
  private static final String TAG = AoneSdkProxy.class.getSimpleName();
  private static Context mContext;
  private static boolean s_isLoaded = false;
  
  public static void init(AoneResultListener paramAoneResultListener)
  {
    AoneJni.nativeInit(paramAoneResultListener);
  }
  
  public static void load(Context paramContext, Bundle paramBundle, GLSurfaceView paramGLSurfaceView)
  {
    mContext = paramContext;
    AoneAdvertisingIdClient.initAdId(paramContext);
    PermissionHelper.requestPermissionDialog((Activity)mContext, 123);
    int i;
    String str;
    if (!s_isLoaded)
    {
      s_isLoaded = true;
      i = Build.VERSION.SDK_INT;
      if (i >= 9)
      {
        str = paramContext.getApplicationInfo().nativeLibraryDir + "/libaonesdk.so";
        if (!new File(str).exists()) {}
      }
    }
    for (;;)
    {
      try
      {
        System.loadLibrary("aonesdk");
        Helper.Init(paramContext);
        PluginWrapper.init(paramContext);
        PluginWrapper.setGLSurfaceView(paramGLSurfaceView);
        AoneJni.nativeSetJavaVM();
        AoneHelper.init(paramContext);
        AoneWifiManager.init(paramContext);
        AoneDevice.init(paramContext);
        AoneScreenShot.init(paramContext);
        AoneFixHeadImg.init(paramContext);
        AoneUpdateWithAppVersion.init(paramContext);
        AoneJni.nativeLoadSdk();
        PluginWrapper.getActivityEventListener().onActivityCreate(paramBundle);
        AoneNetAsync.init(paramGLSurfaceView);
        paramContext = AoneInstallation.id(paramContext);
        System.out.println("AoneSdkProxy uuid:" + paramContext);
        return;
        if (i >= 4)
        {
          str = paramContext.getApplicationInfo().dataDir + "/lib/libaonesdk.so";
          break;
        }
        str = "/data/data/" + paramContext.getPackageName() + "/lib/libaonesdk.so";
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        continue;
      }
      Helper.Init(paramContext);
      PluginWrapper.init(paramContext);
      PluginWrapper.setGLSurfaceView(paramGLSurfaceView);
      AoneHelper.init(paramContext);
      AoneDevice.init(paramContext);
      AoneScreenShot.init(paramContext);
      AoneFixHeadImg.init(paramContext);
      AoneUpdateWithAppVersion.init(paramContext);
      AoneNetAsync.init(paramGLSurfaceView);
    }
  }
  
  public static void login(AoneResultListener paramAoneResultListener)
  {
    AoneJni.nativeLogin(paramAoneResultListener);
  }
  
  public static void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    System.out.println("data==" + paramIntent);
    AoneFixHeadImg.onActivityResult(paramInt1, paramInt2, paramIntent);
    PluginWrapper.getActivityEventListener().onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public static void onBackPressed()
  {
    PluginWrapper.getActivityEventListener().onBackPressed();
  }
  
  public static void onConfigurationChanged(Configuration paramConfiguration)
  {
    PluginWrapper.getActivityEventListener().onConfigurationChanged(paramConfiguration);
  }
  
  public static void onDestroy()
  {
    PluginWrapper.getActivityEventListener().onActivityDestroy();
  }
  
  public static boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return PluginWrapper.getActivityEventListener().onKeyDown(paramInt, paramKeyEvent);
  }
  
  public static void onNewIntent(Intent paramIntent)
  {
    AoneDeepLink.onNewIntent(paramIntent);
    PluginWrapper.getActivityEventListener().onNewIntent(paramIntent);
  }
  
  public static void onPause()
  {
    PluginWrapper.getActivityEventListener().onActivityPause();
  }
  
  public static void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      PluginWrapper.getActivityEventListener().onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
      return;
      if (PermissionHelper.hasPermission(mContext, "android.permission.READ_PHONE_STATE")) {
        System.out.println("有权限：Manifest.permission.READ_PHONE_STATE");
      }
    }
  }
  
  public static void onRestart()
  {
    PluginWrapper.getActivityEventListener().onActivityRestart();
  }
  
  public static void onResume()
  {
    PluginWrapper.getActivityEventListener().onActivityResume();
  }
  
  public static void onSaveInstanceState(Bundle paramBundle)
  {
    PluginWrapper.getActivityEventListener().onSaveInstanceState(paramBundle);
  }
  
  public static void onStart()
  {
    PluginWrapper.getActivityEventListener().onActivityStart();
  }
  
  public static void onStop()
  {
    PluginWrapper.getActivityEventListener().onActivityStop();
  }
  
  public static void onWindowFocusChanged(boolean paramBoolean)
  {
    PluginWrapper.getActivityEventListener().onWindowFocusChanged(paramBoolean);
  }
  
  public static void pay(Hashtable<String, String> paramHashtable, AoneResultListener paramAoneResultListener)
  {
    AoneJni.nativePay(paramHashtable, paramAoneResultListener);
  }
  
  private static void toast(String paramString)
  {
    Toast.makeText(mContext, paramString, 1).show();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\AoneSdkProxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */