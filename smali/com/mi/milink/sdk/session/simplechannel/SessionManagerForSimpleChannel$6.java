package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.account.manager.MiChannelAccountManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.concurrent.ConcurrentLinkedQueue;

class SessionManagerForSimpleChannel$6
  implements Runnable
{
  SessionManagerForSimpleChannel$6(SessionManagerForSimpleChannel paramSessionManagerForSimpleChannel) {}
  
  public void run()
  {
    MiLinkLog.v(SessionManagerForSimpleChannel.access$100(this.this$0), "milink clearConn run");
    SessionManagerForSimpleChannel.access$1900(this.this$0).logoff();
    this.this$0.close();
    SessionManagerForSimpleChannel.access$2000(this.this$0);
    SessionManagerForSimpleChannel.access$1500(this.this$0).clear();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionManagerForSimpleChannel$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */