package com.mi.milink.sdk.client.ipc.internal;

import android.os.RemoteException;
import com.mi.milink.sdk.aidl.IPacketCallback.Stub;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.client.IPacketListener;
import java.util.ArrayList;
import java.util.List;

class MiLinkServiceHost$3
  extends IPacketCallback.Stub
{
  MiLinkServiceHost$3(MiLinkServiceHost paramMiLinkServiceHost) {}
  
  public boolean onReceive(List<PacketData> paramList)
    throws RemoteException
  {
    if (this.this$0.mPacketListener != null)
    {
      this.this$0.mPacketListener.onReceive((ArrayList)paramList);
      return true;
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\internal\MiLinkServiceHost$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */