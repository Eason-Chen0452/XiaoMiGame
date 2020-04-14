package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.debug.MiLinkLog;

class SessionManagerForSimpleChannel$1
  implements Runnable
{
  SessionManagerForSimpleChannel$1(SessionManagerForSimpleChannel paramSessionManagerForSimpleChannel) {}
  
  public void run()
  {
    MiLinkLog.v(SessionManagerForSimpleChannel.access$100(this.this$0), "internalAutoOpen mOpenSessionTryTimes=" + SessionManagerForSimpleChannel.access$200(this.this$0) + ",mState=" + SessionManagerForSimpleChannel.access$300(this.this$0));
    if ((SessionManagerForSimpleChannel.access$200(this.this$0) < 5) && (SessionManagerForSimpleChannel.access$300(this.this$0) == 0))
    {
      SessionManagerForSimpleChannel.access$208(this.this$0);
      SessionManagerForSimpleChannel.access$400(this.this$0);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionManagerForSimpleChannel$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */