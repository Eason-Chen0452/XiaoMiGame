package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.account.manager.MiChannelAccountManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.concurrent.ConcurrentLinkedQueue;

class SessionManagerForSimpleChannel$7
  implements Runnable
{
  SessionManagerForSimpleChannel$7(SessionManagerForSimpleChannel paramSessionManagerForSimpleChannel) {}
  
  public void run()
  {
    MiLinkLog.v(SessionManagerForSimpleChannel.access$100(this.this$0), "milink mLogoffRunnable run");
    SessionManagerForSimpleChannel.access$900(this.this$0);
    SessionManagerForSimpleChannel.access$1900(this.this$0).logoff();
    SessionManagerForSimpleChannel.access$2000(this.this$0);
    SessionManagerForSimpleChannel.access$1500(this.this$0).clear();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionManagerForSimpleChannel$7.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */