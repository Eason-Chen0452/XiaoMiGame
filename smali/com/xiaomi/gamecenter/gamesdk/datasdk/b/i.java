package com.xiaomi.gamecenter.gamesdk.datasdk.b;

import android.util.Log;

public final class i
{
  private static boolean a;
  
  public static void a(String paramString1, String paramString2)
  {
    if (a) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public static void b(String paramString1, String paramString2)
  {
    if (a) {
      Log.i(paramString1, paramString2);
    }
  }
  
  public static void c(String paramString1, String paramString2)
  {
    if (a) {
      Log.w(paramString1, paramString2);
    }
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (a) {
      Log.e(paramString1, paramString2);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */