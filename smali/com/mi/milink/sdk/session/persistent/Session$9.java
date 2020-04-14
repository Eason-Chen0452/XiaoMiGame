package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.event.MiLinkEvent.SessionLoginEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionLoginEvent.EventType;
import com.mi.milink.sdk.session.common.ResponseListener;
import org.greenrobot.eventbus.EventBus;

class Session$9
  implements ResponseListener
{
  Session$9(Session paramSession) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LogoffCmdReturn, this.this$0, 0));
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    EventBus.getDefault().post(new MiLinkEvent.SessionLoginEvent(MiLinkEvent.SessionLoginEvent.EventType.LogoffCmdReturn, this.this$0, 0));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session$9.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */