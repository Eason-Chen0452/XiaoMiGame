package com.mi.milink.sdk.session.common;

import com.mi.milink.sdk.aidl.PacketData;

public abstract interface ResponseListener
{
  public abstract void onDataSendFailed(int paramInt, String paramString);
  
  public abstract void onDataSendSuccess(int paramInt, PacketData paramPacketData);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\ResponseListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */