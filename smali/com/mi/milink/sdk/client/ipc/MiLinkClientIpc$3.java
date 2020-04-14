package com.mi.milink.sdk.client.ipc;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.MessageTask;

final class MiLinkClientIpc$3
  extends MessageTask
{
  MiLinkClientIpc$3(PacketData paramPacketData, int paramInt) {}
  
  public final void doSendWork()
  {
    MiLinkClientIpc.sendAsync(this.val$packet, this.val$timeout, new MiLinkClientIpc.3.1(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\MiLinkClientIpc$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */