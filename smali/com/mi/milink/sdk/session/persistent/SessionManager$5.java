package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.base.os.Device.Network;
import com.mi.milink.sdk.base.os.Device.Network.NetworkDetailInfo;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.SessionConst;

class SessionManager$5
  implements Runnable
{
  SessionManager$5(SessionManager paramSessionManager, long paramLong) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    MiLinkLog.w("SessionManager", "check isInternetAvailable begin ,id=" + l + ", mInfoOnOpen=" + SessionManager.access$1200(this.this$0));
    if (SessionConst.isInternetAvailable())
    {
      ??? = Device.Network.getCurrentNetworkDetailInfo();
      MiLinkLog.v("SessionManager", "NetworkDetailInfo current=" + ??? + ",id=" + l);
      if (!((Device.Network.NetworkDetailInfo)???).equals(SessionManager.access$1200(this.this$0))) {
        break label245;
      }
      MiLinkLog.v("SessionManager", "at most wait 15s，id=" + l);
    }
    try
    {
      for (;;)
      {
        synchronized (SessionManager.access$1300(this.this$0))
        {
          SessionManager.access$1300(this.this$0).wait(15000L);
          if (SessionManager.access$700(this.this$0) == null)
          {
            i = 1;
            MiLinkLog.w("SessionManager", "statistic milink.open, code=" + i + ",id=" + l);
            InternalDataMonitor.getInstance().trace("", 0, "milink.open", i, this.val$openStartTime, System.currentTimeMillis(), 0, 0, 0);
            MiLinkLog.w("SessionManager", "check isInternetAvailable end, id=" + l);
            return;
          }
        }
        int i = 4;
        continue;
        label245:
        i = 4;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionManager$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */