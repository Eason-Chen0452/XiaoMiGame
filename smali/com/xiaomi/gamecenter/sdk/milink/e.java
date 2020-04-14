package com.xiaomi.gamecenter.sdk.milink;

import com.mi.milink.sdk.client.MiLinkObserver;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class e
  extends MiLinkObserver
{
  e(MiLinkManager paramMiLinkManager) {}
  
  public final void onInternalError(int paramInt, String paramString)
  {
    MiLinkManager.access$000(this.a, 0L, 7503, 10006);
  }
  
  public final void onLoginStateUpdate(int paramInt)
  {
    if (2 == paramInt)
    {
      if (!MiLinkManager.access$200(this.a))
      {
        MiLinkManager.access$202(this.a, true);
        long l1 = System.currentTimeMillis();
        long l2 = MiLinkManager.access$100(this.a);
        ReporterUtils.getInstance().xmsdkReport(7501, String.valueOf(l1 - l2));
      }
      MiLinkManager.access$302(this.a, true);
      synchronized (MiLinkManager.access$400(this.a))
      {
        try
        {
          MiLinkManager.access$400(this.a).notifyAll();
          return;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localException.printStackTrace();
          }
        }
      }
    }
    MiLinkManager.access$302(this.a, false);
  }
  
  public final void onServerStateUpdate(int paramInt1, int paramInt2)
  {
    MiLinkManager.access$000(this.a, 0L, 7505, 10008);
  }
  
  public final void onServiceConnected(long paramLong)
  {
    paramLong = System.currentTimeMillis();
    long l = MiLinkManager.access$100(this.a);
    MiLinkManager.access$000(this.a, paramLong - l, 7504, 10007);
  }
  
  public final void onSuicideTime(int paramInt)
  {
    MiLinkManager.access$000(this.a, 0L, 7502, 10005);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */