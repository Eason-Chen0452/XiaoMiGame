package com.xiaomi.accountsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.SystemClock;
import com.xiaomi.accountsdk.account.URLs;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.ParseException;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class AccountServerTimeComputer
  implements ServerTimeUtil.a
{
  private static final Set<String> a;
  private volatile long b = 0L;
  private final AtomicBoolean c = new AtomicBoolean(false);
  private final Context d;
  
  static
  {
    int i = 0;
    a = new HashSet();
    String str1 = URLs.b;
    String str2 = URLs.c;
    for (;;)
    {
      String str3;
      if (i < 2) {
        str3 = new String[] { str1, str2 }[i];
      }
      try
      {
        a.add(new URL(str3).getHost().toLowerCase());
        i += 1;
        continue;
        return;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        for (;;) {}
      }
    }
  }
  
  public AccountServerTimeComputer(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context == null");
    }
    this.d = paramContext.getApplicationContext();
    f.a().b();
  }
  
  private static boolean a(String paramString)
  {
    try
    {
      paramString = new URL(paramString).getHost().toLowerCase();
      boolean bool = a.contains(paramString);
      return bool;
    }
    catch (MalformedURLException paramString)
    {
      AccountLog.b("AccountServerTimeCompu", paramString);
    }
    return false;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if (this.c.get()) {}
    do
    {
      do
      {
        return;
      } while (!a(paramString1));
      try
      {
        paramString1 = c.a(paramString2);
        if (paramString1 == null) {
          throw new IllegalArgumentException("serverDate == null");
        }
      }
      catch (ParseException paramString1)
      {
        AccountLog.b("AccountServerTimeCompu", paramString1);
        return;
      }
    } while (this.c.get());
    long l1 = paramString1.getTime();
    this.b = (l1 - SystemClock.elapsedRealtime());
    long l2 = System.currentTimeMillis();
    this.d.getSharedPreferences("accountsdk_servertime", 0).edit().putLong("system_time_diff", l1 - l2).apply();
    ServerTimeUtil.b();
    f.a().a(paramString1);
    this.c.set(true);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\AccountServerTimeComputer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */