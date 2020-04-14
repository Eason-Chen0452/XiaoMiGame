package com.xiaomi.gamecenter.sdk.milink;

import com.mi.milink.sdk.client.IEventListener;

final class d
  implements IEventListener
{
  d(MiLinkManager paramMiLinkManager) {}
  
  public final void onEventGetServiceToken()
  {
    this.a.miLinkChannelClient.initUseChannelMode();
    MiLinkManager.access$000(this.a, 0L, 7506, 10000);
  }
  
  public final void onEventInvalidPacket()
  {
    MiLinkManager.access$000(this.a, 0L, 7509, 10003);
  }
  
  public final void onEventKickedByServer(int paramInt, long paramLong, String paramString)
  {
    this.a.miLinkChannelClient.initUseChannelMode();
    MiLinkManager.access$000(this.a, 0L, 7510, 10004);
  }
  
  public final void onEventServiceTokenExpired()
  {
    this.a.miLinkChannelClient.initUseChannelMode();
    MiLinkManager.access$000(this.a, 0L, 7507, 10001);
  }
  
  public final void onEventShouldCheckUpdate()
  {
    MiLinkManager.access$000(this.a, 0L, 7508, 10002);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */