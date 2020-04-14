package com.xiaomi.accountsdk.utils;

import java.net.SocketTimeoutException;

public abstract class AccountLog
{
  private static final AccountLog a;
  private static AccountLog b;
  
  static
  {
    b localb = new b();
    a = localb;
    b = localb;
  }
  
  private static Throwable a(Throwable paramThrowable)
  {
    if (paramThrowable == null) {}
    do
    {
      return paramThrowable;
      str = paramThrowable.getMessage();
    } while (!IpFilterHelper.a(str));
    String str = IpFilterHelper.b(str);
    if ((paramThrowable instanceof SocketTimeoutException)) {
      return new SocketTimeoutException(str);
    }
    return new Throwable(str, paramThrowable.getCause());
  }
  
  public static int b(String paramString, Throwable paramThrowable)
  {
    return b.a(paramString, a(paramThrowable));
  }
  
  public static int c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    return b.a(paramString1, paramString2, a(paramThrowable));
  }
  
  public static int d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    return b.b(paramString1, paramString2, a(paramThrowable));
  }
  
  public static int e(String paramString1, String paramString2)
  {
    return b.a(paramString1, paramString2);
  }
  
  public static int f(String paramString1, String paramString2)
  {
    return b.b(paramString1, paramString2);
  }
  
  public static int g(String paramString1, String paramString2)
  {
    return b.c(paramString1, paramString2);
  }
  
  public static int h(String paramString1, String paramString2)
  {
    return b.d(paramString1, paramString2);
  }
  
  protected abstract int a(String paramString1, String paramString2);
  
  protected abstract int a(String paramString1, String paramString2, Throwable paramThrowable);
  
  protected abstract int a(String paramString, Throwable paramThrowable);
  
  protected abstract int b(String paramString1, String paramString2);
  
  protected abstract int b(String paramString1, String paramString2, Throwable paramThrowable);
  
  protected abstract int c(String paramString1, String paramString2);
  
  protected abstract int d(String paramString1, String paramString2);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\AccountLog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */