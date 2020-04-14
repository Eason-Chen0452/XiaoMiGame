package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.event.MiLinkEvent.SystemNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SystemNotificationEvent.EventType;
import org.greenrobot.eventbus.EventBus;

class SessionManager$NetworkChangeReceiver$1$2
  implements Runnable
{
  SessionManager$NetworkChangeReceiver$1$2(SessionManager.NetworkChangeReceiver.1 param1) {}
  
  public void run()
  {
    EventBus.getDefault().post(new MiLinkEvent.SystemNotificationEvent(MiLinkEvent.SystemNotificationEvent.EventType.NetWorkChange));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionManager$NetworkChangeReceiver$1$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */