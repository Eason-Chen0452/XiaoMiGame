package com.mi.milink.sdk.client.ipc.internal;

import android.os.Handler.Callback;
import android.os.Message;
import com.mi.milink.sdk.client.ipc.ClientLog;

class MiLinkServiceHost$1
  implements Handler.Callback
{
  MiLinkServiceHost$1(MiLinkServiceHost paramMiLinkServiceHost) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    ClientLog.v("MiLinkClient", "receive event callback: " + paramMessage.what);
    if (this.this$0.onHandleInternalServiceEvent(paramMessage)) {
      return false;
    }
    MiLinkServiceHost.access$000(this.this$0);
    try
    {
      this.this$0.notifyObservers(paramMessage);
      return false;
    }
    catch (Exception paramMessage) {}
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\internal\MiLinkServiceHost$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */