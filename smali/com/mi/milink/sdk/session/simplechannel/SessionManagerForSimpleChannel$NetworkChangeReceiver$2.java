package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SystemNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SystemNotificationEvent.EventType;
import org.greenrobot.eventbus.EventBus;

class SessionManagerForSimpleChannel$NetworkChangeReceiver$2
  implements Runnable
{
  SessionManagerForSimpleChannel$NetworkChangeReceiver$2(SessionManagerForSimpleChannel.NetworkChangeReceiver paramNetworkChangeReceiver) {}
  
  public void run()
  {
    SessionManagerForSimpleChannel.access$1800(this.this$1.this$0).post(new MiLinkEventForSimpleChannel.SystemNotificationEvent(MiLinkEventForSimpleChannel.SystemNotificationEvent.EventType.NetWorkChange));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionManagerForSimpleChannel$NetworkChangeReceiver$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */