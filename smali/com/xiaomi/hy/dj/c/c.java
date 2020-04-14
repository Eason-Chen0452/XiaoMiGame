package com.xiaomi.hy.dj.c;

import com.mi.milink.sdk.client.IEventListener;
import com.mi.milink.sdk.client.MiLinkChannelClient;

class c
  implements IEventListener
{
  c(b paramb) {}
  
  public void onEventGetServiceToken()
  {
    this.a.a.initUseChannelMode();
  }
  
  public void onEventInvalidPacket() {}
  
  public void onEventKickedByServer(int paramInt, long paramLong, String paramString)
  {
    this.a.a.initUseChannelMode();
  }
  
  public void onEventServiceTokenExpired()
  {
    this.a.a.initUseChannelMode();
  }
  
  public void onEventShouldCheckUpdate() {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\c\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */