package com.mi.milink.sdk.session.simplechannel;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionLoginEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionLoginEvent.EventType;
import com.mi.milink.sdk.session.common.ResponseListener;
import org.greenrobot.eventbus.EventBus;

class SessionForSimpleChannel$4
  implements ResponseListener
{
  SessionForSimpleChannel$4(SessionForSimpleChannel paramSessionForSimpleChannel) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    SessionForSimpleChannel.access$1400(this.this$0).getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionLoginEvent(MiLinkEventForSimpleChannel.SessionLoginEvent.EventType.LogoffCmdReturn, this.this$0, 0));
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    SessionForSimpleChannel.access$1400(this.this$0).getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionLoginEvent(MiLinkEventForSimpleChannel.SessionLoginEvent.EventType.LogoffCmdReturn, this.this$0, 0));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionForSimpleChannel$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */