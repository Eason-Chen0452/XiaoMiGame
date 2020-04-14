package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.base.os.Device.Network;
import com.mi.milink.sdk.base.os.Device.Network.NetworkDetailInfo;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.SessionConst;

class SessionManagerForSimpleChannel$4
  implements Runnable
{
  SessionManagerForSimpleChannel$4(SessionManagerForSimpleChannel paramSessionManagerForSimpleChannel, long paramLong) {}
  
  public void run()
  {
    long l = System.currentTimeMillis();
    MiLinkLog.w(SessionManagerForSimpleChannel.access$100(this.this$0), "check isInternetAvailable begin ,id=" + l + ", mInfoOnOpen=" + SessionManagerForSimpleChannel.access$1000(this.this$0));
    if (SessionConst.isInternetAvailable())
    {
      ??? = Device.Network.getCurrentNetworkDetailInfo();
      MiLinkLog.v(SessionManagerForSimpleChannel.access$100(this.this$0), "NetworkDetailInfo current=" + ??? + ",id=" + l);
      if (!((Device.Network.NetworkDetailInfo)???).equals(SessionManagerForSimpleChannel.access$1000(this.this$0))) {
        break label277;
      }
      MiLinkLog.v(SessionManagerForSimpleChannel.access$100(this.this$0), "at most wait 15s，id=" + l);
    }
    try
    {
      for (;;)
      {
        synchronized (SessionManagerForSimpleChannel.access$1100(this.this$0))
        {
          SessionManagerForSimpleChannel.access$1100(this.this$0).wait(5000L);
          if (SessionManagerForSimpleChannel.access$600(this.this$0) == null)
          {
            i = 1;
            MiLinkLog.w(SessionManagerForSimpleChannel.access$100(this.this$0), "statistic milink.open, code=" + i + ",id=" + l);
            InternalDataMonitor.getInstance(SessionManagerForSimpleChannel.access$1200(this.this$0)).trace("", 0, "milink.open", i, this.val$openStartTime, System.currentTimeMillis(), 0, 0, 0);
            MiLinkLog.w(SessionManagerForSimpleChannel.access$100(this.this$0), "check isInternetAvailable end, id=" + l);
            return;
          }
        }
        int i = 4;
        continue;
        label277:
        i = 4;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionManagerForSimpleChannel$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */