package com.xiaomi.accountsdk.utils;

import android.os.SystemClock;
import com.xiaomi.accountsdk.account.URLs;
import java.util.Date;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class f
{
  private static final String a = URLs.h + "/configuration";
  private static final f b = new f();
  private final Executor c = Executors.newSingleThreadExecutor();
  private final Object d = new Object();
  private long e;
  
  public static f a()
  {
    return b;
  }
  
  public final void a(Date arg1)
  {
    if (??? == null)
    {
      AccountLog.g("SyncServerTimeExecutor", "server date is null");
      return;
    }
    long l = ???.getTime() - SystemClock.elapsedRealtime();
    synchronized (this.d)
    {
      if (l != this.e) {
        this.e = l;
      }
      return;
    }
  }
  
  public final void b()
  {
    this.c.execute(new g(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */