package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionOtherEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionOtherEvent.EventType;
import org.greenrobot.eventbus.EventBus;

class SessionForSimpleChannel$2
  implements Runnable
{
  SessionForSimpleChannel$2(SessionForSimpleChannel paramSessionForSimpleChannel) {}
  
  public void run()
  {
    SessionForSimpleChannel.access$1400(this.this$0).getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionOtherEvent(MiLinkEventForSimpleChannel.SessionOtherEvent.EventType.StatisticsTimeoutPacket, this.this$0));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionForSimpleChannel$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */