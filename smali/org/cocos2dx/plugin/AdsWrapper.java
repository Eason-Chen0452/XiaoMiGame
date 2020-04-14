package org.cocos2dx.plugin;

import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;

public class AdsWrapper
{
  public static final int POS_BOTTOM = 4;
  public static final int POS_BOTTOM_LEFT = 5;
  public static final int POS_BOTTOM_RIGHT = 6;
  public static final int POS_CENTER = 0;
  public static final int POS_TOP = 1;
  public static final int POS_TOP_LEFT = 2;
  public static final int POS_TOP_RIGHT = 3;
  public static final int RESULT_CODE_AdsDismissed = 2;
  public static final int RESULT_CODE_AdsReceived = 0;
  public static final int RESULT_CODE_AdsShown = 1;
  public static final int RESULT_CODE_NetworkError = 5;
  public static final int RESULT_CODE_PointsSpendFailed = 4;
  public static final int RESULT_CODE_PointsSpendSucceed = 3;
  public static final int RESULT_CODE_UnknownError = 6;
  
  public static void addAdView(WindowManager paramWindowManager, View paramView, int paramInt)
  {
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams();
    localLayoutParams.type = 1000;
    localLayoutParams.width = -2;
    localLayoutParams.height = -2;
    localLayoutParams.flags |= 0x8;
    switch (paramInt)
    {
    }
    for (;;)
    {
      paramWindowManager.addView(paramView, localLayoutParams);
      return;
      localLayoutParams.gravity = 17;
      continue;
      localLayoutParams.gravity = 48;
      continue;
      localLayoutParams.gravity = 51;
      continue;
      localLayoutParams.gravity = 53;
      continue;
      localLayoutParams.gravity = 80;
      continue;
      localLayoutParams.gravity = 83;
      continue;
      localLayoutParams.gravity = 85;
    }
  }
  
  private static native void nativeOnAdsResult(String paramString1, int paramInt, String paramString2);
  
  private static native void nativeOnPlayerGetPoints(String paramString, int paramInt);
  
  public static void onAdsResult(InterfaceAds paramInterfaceAds, final int paramInt, final String paramString)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        AdsWrapper.nativeOnAdsResult(AdsWrapper.this.getClass().getName().replace('.', '/'), paramInt, paramString);
      }
    });
  }
  
  public static void onPlayerGetPoints(InterfaceAds paramInterfaceAds, final int paramInt)
  {
    PluginWrapper.runOnGLThread(new Runnable()
    {
      public void run()
      {
        AdsWrapper.nativeOnPlayerGetPoints(AdsWrapper.this.getClass().getName().replace('.', '/'), paramInt);
      }
    });
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\org\cocos2dx\plugin\AdsWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */