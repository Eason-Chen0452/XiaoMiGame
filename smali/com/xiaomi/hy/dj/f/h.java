package com.xiaomi.hy.dj.f;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

public class h
{
  public static int a(Context paramContext, float paramFloat)
  {
    return (int)(paramContext.getResources().getDisplayMetrics().density * paramFloat + 0.5F);
  }
  
  public static int b(Context paramContext, float paramFloat)
  {
    return (int)(paramFloat / paramContext.getResources().getDisplayMetrics().density + 0.5F);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */