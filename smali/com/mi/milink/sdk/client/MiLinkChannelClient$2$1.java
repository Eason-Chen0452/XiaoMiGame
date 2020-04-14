package com.mi.milink.sdk.client;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.session.common.ResponseListener;

class MiLinkChannelClient$2$1
  implements ResponseListener
{
  MiLinkChannelClient$2$1(MiLinkChannelClient.2 param2) {}
  
  public void onDataSendFailed(int paramInt, String paramString)
  {
    if ((!this.this$1.isCancelled()) && (!this.this$1.isDone())) {
      MiLinkChannelClient.2.access$100(this.this$1, new MiLinkException(paramInt, paramString));
    }
  }
  
  public void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    if ((!this.this$1.isCancelled()) && (!this.this$1.isDone())) {
      MiLinkChannelClient.2.access$000(this.this$1, paramPacketData);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\MiLinkChannelClient$2$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */