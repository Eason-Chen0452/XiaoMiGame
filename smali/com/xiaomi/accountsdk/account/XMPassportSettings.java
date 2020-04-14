package com.xiaomi.accountsdk.account;

import android.app.Application;
import android.content.Context;
import com.xiaomi.accountsdk.utils.AppInfoUserAgentUtil;

public class XMPassportSettings
{
  private static String a;
  private static volatile String b;
  private static volatile String c;
  private static boolean d = false;
  private static volatile Application e = null;
  private static Object f = new Object();
  
  public static String a()
  {
    if (e != null) {
      a = a(e, a);
    }
    return a;
  }
  
  private static String a(Context paramContext, String paramString)
  {
    if (!AppInfoUserAgentUtil.a(paramString)) {
      synchronized (f)
      {
        paramContext = new AppInfoUserAgentUtil(paramContext, paramString).a();
        return paramContext;
      }
    }
    return paramString;
  }
  
  public static String b()
  {
    try
    {
      String str = b;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static String c()
  {
    try
    {
      String str = c;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static Application d()
  {
    try
    {
      if ((d) && (e == null)) {
        throw new IllegalStateException("getApplicationContext should be called after setApplicationContext() or ensureApplicationContext()");
      }
    }
    finally {}
    Application localApplication = e;
    return localApplication;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\XMPassportSettings.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */