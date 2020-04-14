package com.mi.milink.sdk.client;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.MessageTask;

class MiLinkChannelClient$2
  extends MessageTask
{
  MiLinkChannelClient$2(MiLinkChannelClient paramMiLinkChannelClient, PacketData paramPacketData, int paramInt) {}
  
  public void doSendWork()
  {
    this.this$0.sendAsyncWithResponse(this.val$packet, this.val$timeout, new MiLinkChannelClient.2.1(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\MiLinkChannelClient$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */