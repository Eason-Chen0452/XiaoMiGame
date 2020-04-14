package com.mi.milink.sdk.client.ipc.internal;

import android.os.AsyncTask;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.client.SendPacketListener;

class MnsSendPacketListener$2
  extends AsyncTask<Void, Void, Void>
{
  MnsSendPacketListener$2(MnsSendPacketListener paramMnsSendPacketListener, PacketData paramPacketData) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    MnsSendPacketListener.access$000(this.this$0).onResponse(this.val$response);
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\internal\MnsSendPacketListener$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */