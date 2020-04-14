package com.xiaomi.gamecenter.sdk.utils.process;

import android.accessibilityservice.AccessibilityService;
import android.view.accessibility.AccessibilityEvent;

public class DetectService
  extends AccessibilityService
{
  private static String a;
  private static DetectService b = null;
  
  public void onAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32) {}
    try
    {
      a = paramAccessibilityEvent.getPackageName().toString();
      return;
    }
    catch (Exception paramAccessibilityEvent)
    {
      paramAccessibilityEvent.printStackTrace();
    }
  }
  
  public void onInterrupt() {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\process\DetectService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */