package com.xiaomi.accountsdk.utils;

import android.util.Log;

final class b
  extends AccountLog
{
  public final int a(String paramString1, String paramString2)
  {
    return Log.d(paramString1, paramString2);
  }
  
  public final int a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    return Log.w(paramString1, paramString2, paramThrowable);
  }
  
  public final int a(String paramString, Throwable paramThrowable)
  {
    return Log.w(paramString, paramThrowable);
  }
  
  public final int b(String paramString1, String paramString2)
  {
    return Log.i(paramString1, paramString2);
  }
  
  public final int b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    return Log.e(paramString1, paramString2, paramThrowable);
  }
  
  public final int c(String paramString1, String paramString2)
  {
    return Log.w(paramString1, paramString2);
  }
  
  public final int d(String paramString1, String paramString2)
  {
    return Log.e(paramString1, paramString2);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */