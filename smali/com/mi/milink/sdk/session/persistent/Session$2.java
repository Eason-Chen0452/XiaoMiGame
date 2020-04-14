package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.event.MiLinkEvent.SessionOtherEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionOtherEvent.EventType;
import org.greenrobot.eventbus.EventBus;

class Session$2
  implements Runnable
{
  Session$2(Session paramSession) {}
  
  public void run()
  {
    EventBus.getDefault().post(new MiLinkEvent.SessionOtherEvent(MiLinkEvent.SessionOtherEvent.EventType.StatisticsTimeoutPacket, this.this$0));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */