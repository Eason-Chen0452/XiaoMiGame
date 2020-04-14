package com.xiaomi.gamecenter.sdk.utils;

public class BtnClickUtil
{
  private static long a;
  
  public static boolean a()
  {
    long l1 = System.currentTimeMillis();
    long l2 = l1 - a;
    if ((0L < l2) && (l2 < 1000L)) {
      return true;
    }
    a = l1;
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\BtnClickUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */