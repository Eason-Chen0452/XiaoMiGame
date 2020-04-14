package com.mi.milink.sdk.client;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.MessageTask;

final class MiLinkClient$3
  extends MessageTask
{
  MiLinkClient$3(PacketData paramPacketData, int paramInt) {}
  
  public final void doSendWork()
  {
    MiLinkClient.sendAsync(this.val$packet, this.val$timeout, new MiLinkClient.3.1(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\MiLinkClient$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */