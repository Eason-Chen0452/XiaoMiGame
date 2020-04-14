package com.mi.milink.sdk.client.ipc.internal;

import android.os.AsyncTask;
import com.mi.milink.sdk.client.SendPacketListener;

class MnsSendPacketListener$3
  extends AsyncTask<Void, Void, Void>
{
  MnsSendPacketListener$3(MnsSendPacketListener paramMnsSendPacketListener, int paramInt, String paramString) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    MnsSendPacketListener.access$000(this.this$0).onFailed(this.val$errCode, this.val$errMsg);
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\internal\MnsSendPacketListener$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */