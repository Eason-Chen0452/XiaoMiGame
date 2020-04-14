package com.xiaomi.gamecenter.sdk.milink;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.MessageTask;

final class a
  extends MessageTask
{
  a(CustomMiLinkChannelClient paramCustomMiLinkChannelClient, PacketData paramPacketData, int paramInt) {}
  
  public final void doSendWork()
  {
    this.c.sendAsyncWithResponse(this.a, this.b, new b(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */