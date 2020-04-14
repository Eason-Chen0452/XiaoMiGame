package com.mi.milink.sdk.client.ipc;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.client.MiLinkException;
import com.mi.milink.sdk.client.SendPacketListener;

class MiLinkClientIpc$3$1
  implements SendPacketListener
{
  MiLinkClientIpc$3$1(MiLinkClientIpc.3 param3) {}
  
  public void onFailed(int paramInt, String paramString)
  {
    if ((!this.this$0.isCancelled()) && (!this.this$0.isDone())) {
      MiLinkClientIpc.3.access$100(this.this$0, new MiLinkException(paramInt, paramString));
    }
  }
  
  public void onResponse(PacketData paramPacketData)
  {
    if ((!this.this$0.isCancelled()) && (!this.this$0.isDone())) {
      MiLinkClientIpc.3.access$000(this.this$0, paramPacketData);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\MiLinkClientIpc$3$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */