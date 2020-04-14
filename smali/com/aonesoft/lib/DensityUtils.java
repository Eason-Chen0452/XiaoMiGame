package com.aonesoft.lib;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

class DensityUtils
{
  public static int dp2px(Context paramContext, float paramFloat)
  {
    return (int)(paramFloat * paramContext.getResources().getDisplayMetrics().density + 0.5F);
  }
  
  public static float px2dp(Context paramContext, int paramInt)
  {
    float f = paramContext.getResources().getDisplayMetrics().density;
    return paramInt / f;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\aonesoft\lib\DensityUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */