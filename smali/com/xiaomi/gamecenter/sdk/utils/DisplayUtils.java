package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class DisplayUtils
{
  private static DisplayMetrics a = null;
  
  public static float a(Context paramContext)
  {
    if (a == null) {
      a = paramContext.getResources().getDisplayMetrics();
    }
    return a.density;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\DisplayUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */