package com.xiaomi.gamecenter.sdk;

final class u
  implements Runnable
{
  u(MiCommplatform paramMiCommplatform, OnPayProcessListener paramOnPayProcessListener) {}
  
  public final void run()
  {
    try
    {
      if (this.b.checkAndConnect(MiCommplatform.access$700(), false) != 0)
      {
        MiCommplatform.access$1802(this.b, false);
        this.a.finishPayProcess(47533);
        return;
      }
      MiCommplatform.access$400().miWindow();
      MiCommplatform.access$1802(this.b, false);
      this.a.finishPayProcess(0);
      return;
    }
    catch (Exception localException)
    {
      MiCommplatform.access$1802(this.b, false);
      this.a.finishPayProcess(47533);
      localException.printStackTrace();
      return;
    }
    finally
    {
      MiCommplatform.access$1802(this.b, false);
      this.b.disconnect();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */