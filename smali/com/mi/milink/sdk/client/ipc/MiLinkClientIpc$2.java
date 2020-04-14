package com.mi.milink.sdk.client.ipc;

import android.util.Pair;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.client.SendPacketListener;
import java.util.Iterator;
import java.util.Vector;

class MiLinkClientIpc$2
  implements Runnable
{
  MiLinkClientIpc$2(MiLinkClientIpc paramMiLinkClientIpc) {}
  
  public void run()
  {
    ClientLog.d("MiLinkClient", "onMilinkServiceReady send cache size:" + this.this$0.mServiceNotReadyCache.size());
    try
    {
      Iterator localIterator = this.this$0.mServiceNotReadyCache.iterator();
      while (localIterator.hasNext())
      {
        Pair localPair = (Pair)localIterator.next();
        MiLinkClientIpc.sendAsync((PacketData)localPair.first, 10000, (SendPacketListener)localPair.second, true);
      }
      this.this$0.mServiceNotReadyCache.clear();
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\MiLinkClientIpc$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */