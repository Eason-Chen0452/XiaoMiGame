package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class k
  implements Thread.UncaughtExceptionHandler
{
  private Context a;
  private Thread.UncaughtExceptionHandler b;
  
  k(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.b = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (paramThrowable == null) {}
    for (;;)
    {
      return;
      try
      {
        ReporterUtils.getInstance().xmsdkReportCrash(4090);
        Thread.sleep(2000L);
        if (this.b != null)
        {
          this.b.uncaughtException(paramThread, paramThrowable);
          return;
        }
      }
      catch (Exception paramThread)
      {
        paramThread.printStackTrace();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */