package com.mi.milink.sdk.client;

import com.mi.milink.sdk.aidl.PacketData;
import java.util.ArrayList;

public abstract interface IPacketListener
{
  public abstract void onReceive(ArrayList<PacketData> paramArrayList);
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\IPacketListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */