package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.Request;
import java.util.concurrent.ConcurrentLinkedQueue;

class SessionManagerForSimpleChannel$5
  extends Thread
{
  SessionManagerForSimpleChannel$5(SessionManagerForSimpleChannel paramSessionManagerForSimpleChannel, Request paramRequest) {}
  
  public void run()
  {
    SessionForSimpleChannel localSessionForSimpleChannel2 = SessionManagerForSimpleChannel.access$1300(this.this$0);
    MiLinkLog.v(SessionManagerForSimpleChannel.access$100(this.this$0), "send data, session manager state: " + SessionManagerForSimpleChannel.access$300(this.this$0));
    SessionForSimpleChannel localSessionForSimpleChannel1 = localSessionForSimpleChannel2;
    if (localSessionForSimpleChannel2 != null)
    {
      localSessionForSimpleChannel1 = localSessionForSimpleChannel2;
      if (localSessionForSimpleChannel2.isDeadConnection(6000L, 180000L))
      {
        MiLinkLog.w(SessionManagerForSimpleChannel.access$100(this.this$0), "session isDeadConnection=true");
        this.this$0.setState(0);
        localSessionForSimpleChannel1 = null;
      }
    }
    if ((localSessionForSimpleChannel1 == null) || (!localSessionForSimpleChannel1.isAvailable()) || (SessionManagerForSimpleChannel.access$1400(this.this$0) != 2))
    {
      MiLinkLog.v(SessionManagerForSimpleChannel.access$100(this.this$0), "push request in cache, seq=" + this.val$request.getSeqNo());
      SessionManagerForSimpleChannel.access$1500(this.this$0).add(this.val$request);
      this.this$0.login("handleRequest");
      return;
    }
    MiLinkLog.v(SessionManagerForSimpleChannel.access$100(this.this$0), "send data to session, seq=" + this.val$request.getSeqNo());
    localSessionForSimpleChannel1.handleRequest(this.val$request);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionManagerForSimpleChannel$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */