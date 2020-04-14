package com.mi.milink.sdk.client;

import com.mi.milink.sdk.aidl.PacketData;

public abstract interface SendPacketListener
{
  public abstract void onFailed(int paramInt, String paramString);
  
  public abstract void onResponse(PacketData paramPacketData);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\SendPacketListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */