package org.cocos2dx.lib;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Process;
import android.preference.PreferenceManager.OnActivityResultListener;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Set;

public class Cocos2dxHelper
{
  private static final String PREFS_NAME = "Cocos2dxPrefsFile";
  private static final int RUNNABLES_PER_FRAME = 5;
  private static Set<PreferenceManager.OnActivityResultListener> onActivityResultListeners = new LinkedHashSet();
  private static boolean sAccelerometerEnabled;
  private static Activity sActivity = null;
  private static boolean sActivityVisible;
  private static AssetManager sAssetManager;
  private static Cocos2dxMusic sCocos2dMusic;
  private static Cocos2dxSound sCocos2dSound;
  private static Cocos2dxAccelerometer sCocos2dxAccelerometer;
  private static Cocos2dxHelperListener sCocos2dxHelperListener;
  private static String sFileDirectory;
  private static boolean sInited = false;
  private static String sPackageName;
  
  public static void addOnActivityResultListener(PreferenceManager.OnActivityResultListener paramOnActivityResultListener)
  {
    onActivityResultListeners.add(paramOnActivityResultListener);
  }
  
  public static void disableAccelerometer()
  {
    sAccelerometerEnabled = false;
    sCocos2dxAccelerometer.disable();
  }
  
  public static void enableAccelerometer()
  {
    sAccelerometerEnabled = true;
    sCocos2dxAccelerometer.enable();
  }
  
  public static void end()
  {
    sCocos2dMusic.end();
    sCocos2dSound.end();
  }
  
  public static Activity getActivity()
  {
    return sActivity;
  }
  
  public static AssetManager getAssetManager()
  {
    return sAssetManager;
  }
  
  public static float getBackgroundMusicVolume()
  {
    return sCocos2dMusic.getBackgroundVolume();
  }
  
  public static boolean getBoolForKey(String paramString, boolean paramBoolean)
  {
    return sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).getBoolean(paramString, paramBoolean);
  }
  
  public static String getCocos2dxPackageName()
  {
    return sPackageName;
  }
  
  public static String getCocos2dxWritablePath()
  {
    return sFileDirectory;
  }
  
  public static String getCurrentLanguage()
  {
    return Locale.getDefault().getLanguage();
  }
  
  public static int getDPI()
  {
    if (sActivity != null)
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      Object localObject = sActivity.getWindowManager();
      if (localObject != null)
      {
        localObject = ((WindowManager)localObject).getDefaultDisplay();
        if (localObject != null)
        {
          ((Display)localObject).getMetrics(localDisplayMetrics);
          return (int)(localDisplayMetrics.density * 160.0F);
        }
      }
    }
    return -1;
  }
  
  public static String getDeviceModel()
  {
    return Build.MODEL;
  }
  
  public static double getDoubleForKey(String paramString, double paramDouble)
  {
    return sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).getFloat(paramString, (float)paramDouble);
  }
  
  public static float getEffectsVolume()
  {
    return sCocos2dSound.getEffectsVolume();
  }
  
  public static float getFloatForKey(String paramString, float paramFloat)
  {
    return sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).getFloat(paramString, paramFloat);
  }
  
  public static int getIntegerForKey(String paramString, int paramInt)
  {
    return sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).getInt(paramString, paramInt);
  }
  
  public static Set<PreferenceManager.OnActivityResultListener> getOnActivityResultListeners()
  {
    return onActivityResultListeners;
  }
  
  public static String getStringForKey(String paramString1, String paramString2)
  {
    return sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).getString(paramString1, paramString2);
  }
  
  public static void init(Activity paramActivity)
  {
    if (!sInited)
    {
      ApplicationInfo localApplicationInfo = paramActivity.getApplicationInfo();
      sCocos2dxHelperListener = (Cocos2dxHelperListener)paramActivity;
      sPackageName = localApplicationInfo.packageName;
      sFileDirectory = paramActivity.getFilesDir().getAbsolutePath();
      nativeSetApkPath(localApplicationInfo.sourceDir);
      sCocos2dxAccelerometer = new Cocos2dxAccelerometer(paramActivity);
      sCocos2dMusic = new Cocos2dxMusic(paramActivity);
      sCocos2dSound = new Cocos2dxSound(paramActivity);
      sAssetManager = paramActivity.getAssets();
      nativeSetContext(paramActivity, sAssetManager);
      Cocos2dxBitmap.setContext(paramActivity);
      Cocos2dxETCLoader.setContext(paramActivity);
      sActivity = paramActivity;
      sInited = true;
    }
  }
  
  public static boolean isActivityVisible()
  {
    return sActivityVisible;
  }
  
  public static boolean isBackgroundMusicPlaying()
  {
    return sCocos2dMusic.isBackgroundMusicPlaying();
  }
  
  private static native void nativeSetApkPath(String paramString);
  
  private static native void nativeSetContext(Context paramContext, AssetManager paramAssetManager);
  
  private static native void nativeSetEditTextDialogResult(byte[] paramArrayOfByte);
  
  public static void onEnterBackground()
  {
    sCocos2dSound.onEnterBackground();
    sCocos2dMusic.onEnterBackground();
  }
  
  public static void onEnterForeground()
  {
    sCocos2dSound.onEnterForeground();
    sCocos2dMusic.onEnterForeground();
  }
  
  public static void onPause()
  {
    sActivityVisible = false;
    if (sAccelerometerEnabled) {
      sCocos2dxAccelerometer.disable();
    }
  }
  
  public static void onResume()
  {
    sActivityVisible = true;
    if (sAccelerometerEnabled) {
      sCocos2dxAccelerometer.enable();
    }
  }
  
  public static void pauseAllEffects()
  {
    sCocos2dSound.pauseAllEffects();
  }
  
  public static void pauseBackgroundMusic()
  {
    sCocos2dMusic.pauseBackgroundMusic();
  }
  
  public static void pauseEffect(int paramInt)
  {
    sCocos2dSound.pauseEffect(paramInt);
  }
  
  public static void playBackgroundMusic(String paramString, boolean paramBoolean)
  {
    sCocos2dMusic.playBackgroundMusic(paramString, paramBoolean);
  }
  
  public static int playEffect(String paramString, boolean paramBoolean, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return sCocos2dSound.playEffect(paramString, paramBoolean, paramFloat1, paramFloat2, paramFloat3);
  }
  
  public static void preloadBackgroundMusic(String paramString)
  {
    sCocos2dMusic.preloadBackgroundMusic(paramString);
  }
  
  public static void preloadEffect(String paramString)
  {
    sCocos2dSound.preloadEffect(paramString);
  }
  
  public static void resumeAllEffects()
  {
    sCocos2dSound.resumeAllEffects();
  }
  
  public static void resumeBackgroundMusic()
  {
    sCocos2dMusic.resumeBackgroundMusic();
  }
  
  public static void resumeEffect(int paramInt)
  {
    sCocos2dSound.resumeEffect(paramInt);
  }
  
  public static void rewindBackgroundMusic()
  {
    sCocos2dMusic.rewindBackgroundMusic();
  }
  
  public static void runOnGLThread(Runnable paramRunnable)
  {
    ((Cocos2dxActivity)sActivity).runOnGLThread(paramRunnable);
  }
  
  public static void setAccelerometerInterval(float paramFloat)
  {
    sCocos2dxAccelerometer.setInterval(paramFloat);
  }
  
  public static void setBackgroundMusicVolume(float paramFloat)
  {
    sCocos2dMusic.setBackgroundVolume(paramFloat);
  }
  
  public static void setBoolForKey(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.commit();
  }
  
  public static void setDoubleForKey(String paramString, double paramDouble)
  {
    SharedPreferences.Editor localEditor = sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).edit();
    localEditor.putFloat(paramString, (float)paramDouble);
    localEditor.commit();
  }
  
  public static void setEditTextDialogResult(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF8");
      sCocos2dxHelperListener.runOnGLThread(new Runnable()
      {
        public void run()
        {
          Cocos2dxHelper.nativeSetEditTextDialogResult(this.val$bytesUTF8);
        }
      });
      return;
    }
    catch (UnsupportedEncodingException paramString) {}
  }
  
  public static void setEffectsVolume(float paramFloat)
  {
    sCocos2dSound.setEffectsVolume(paramFloat);
  }
  
  public static void setFloatForKey(String paramString, float paramFloat)
  {
    SharedPreferences.Editor localEditor = sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).edit();
    localEditor.putFloat(paramString, paramFloat);
    localEditor.commit();
  }
  
  public static void setIntegerForKey(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }
  
  public static void setStringForKey(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = sActivity.getSharedPreferences("Cocos2dxPrefsFile", 0).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }
  
  private static void showDialog(String paramString1, String paramString2)
  {
    sCocos2dxHelperListener.showDialog(paramString1, paramString2);
  }
  
  private static void showEditTextDialog(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    sCocos2dxHelperListener.showEditTextDialog(paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void stopAllEffects()
  {
    sCocos2dSound.stopAllEffects();
  }
  
  public static void stopBackgroundMusic()
  {
    sCocos2dMusic.stopBackgroundMusic();
  }
  
  public static void stopEffect(int paramInt)
  {
    sCocos2dSound.stopEffect(paramInt);
  }
  
  public static void terminateProcess()
  {
    Process.killProcess(Process.myPid());
  }
  
  public static void unloadEffect(String paramString)
  {
    sCocos2dSound.unloadEffect(paramString);
  }
  
  public static abstract interface Cocos2dxHelperListener
  {
    public abstract void runOnGLThread(Runnable paramRunnable);
    
    public abstract void showDialog(String paramString1, String paramString2);
    
    public abstract void showEditTextDialog(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\lib\Cocos2dxHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */