package com.alipay.android.phone.mrpc.core;

import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.CallerRunsPolicy;
import java.util.concurrent.TimeUnit;

public final class l
  implements ab
{
  private static l b = null;
  private static final ThreadFactory i = new n();
  Context a;
  private ThreadPoolExecutor c;
  private b d;
  private long e;
  private long f;
  private long g;
  private int h;
  
  private l(Context paramContext)
  {
    this.a = paramContext;
    this.d = b.a("android");
    this.c = new ThreadPoolExecutor(10, 11, 3L, TimeUnit.SECONDS, new ArrayBlockingQueue(20), i, new ThreadPoolExecutor.CallerRunsPolicy());
    try
    {
      this.c.allowCoreThreadTimeOut(true);
      CookieSyncManager.createInstance(this.a);
      CookieManager.getInstance().setAcceptCookie(true);
      return;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
  }
  
  public static final l a(Context paramContext)
  {
    if (b != null) {
      return b;
    }
    return b(paramContext);
  }
  
  /* Error */
  private static final l b(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 26	com/alipay/android/phone/mrpc/core/l:b	Lcom/alipay/android/phone/mrpc/core/l;
    //   6: ifnull +12 -> 18
    //   9: getstatic 26	com/alipay/android/phone/mrpc/core/l:b	Lcom/alipay/android/phone/mrpc/core/l;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: new 2	com/alipay/android/phone/mrpc/core/l
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 96	com/alipay/android/phone/mrpc/core/l:<init>	(Landroid/content/Context;)V
    //   26: astore_0
    //   27: aload_0
    //   28: putstatic 26	com/alipay/android/phone/mrpc/core/l:b	Lcom/alipay/android/phone/mrpc/core/l;
    //   31: goto -18 -> 13
    //   34: astore_0
    //   35: ldc 2
    //   37: monitorexit
    //   38: aload_0
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	paramContext	Context
    // Exception table:
    //   from	to	target	type
    //   3	13	34	finally
    //   18	31	34	finally
  }
  
  public final b a()
  {
    return this.d;
  }
  
  public final Future<u> a(t paramt)
  {
    long l2 = 0L;
    String str;
    int j;
    long l3;
    long l4;
    long l1;
    if (s.a(this.a))
    {
      str = "HttpManager" + hashCode() + ": Active Task = %d, Completed Task = %d, All Task = %d,Avarage Speed = %d KB/S, Connetct Time = %d ms, All data size = %d bytes, All enqueueConnect time = %d ms, All socket time = %d ms, All request times = %d times";
      j = this.c.getActiveCount();
      l3 = this.c.getCompletedTaskCount();
      l4 = this.c.getTaskCount();
      if (this.g != 0L) {
        break label209;
      }
      l1 = 0L;
      if (this.h != 0) {
        break label229;
      }
    }
    for (;;)
    {
      String.format(str, new Object[] { Integer.valueOf(j), Long.valueOf(l3), Long.valueOf(l4), Long.valueOf(l1), Long.valueOf(l2), Long.valueOf(this.e), Long.valueOf(this.f), Long.valueOf(this.g), Integer.valueOf(this.h) });
      paramt = new q(this, (o)paramt);
      paramt = new m(this, paramt, paramt);
      this.c.execute(paramt);
      return paramt;
      label209:
      l1 = this.e * 1000L / this.g >> 10;
      break;
      label229:
      l2 = this.f / this.h;
    }
  }
  
  public final void a(long paramLong)
  {
    this.e += paramLong;
  }
  
  public final void b(long paramLong)
  {
    this.f += paramLong;
    this.h += 1;
  }
  
  public final void c(long paramLong)
  {
    this.g += paramLong;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\android\phone\mrpc\core\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */