package com.mi.milink.sdk.client;

import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.session.common.ResponseListener;

final class MiLinkClient$2
  implements ResponseListener
{
  MiLinkClient$2(SendPacketListener paramSendPacketListener) {}
  
  public final void onDataSendFailed(int paramInt, String paramString)
  {
    this.val$l.onFailed(paramInt, paramString);
  }
  
  public final void onDataSendSuccess(int paramInt, PacketData paramPacketData)
  {
    this.val$l.onResponse(paramPacketData);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\MiLinkClient$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */