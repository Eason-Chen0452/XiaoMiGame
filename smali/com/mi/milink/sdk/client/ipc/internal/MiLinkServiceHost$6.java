package com.mi.milink.sdk.client.ipc.internal;

import android.content.ComponentName;
import com.mi.milink.sdk.client.ipc.ClientLog;

class MiLinkServiceHost$6
  implements Runnable
{
  MiLinkServiceHost$6(MiLinkServiceHost paramMiLinkServiceHost) {}
  
  public void run()
  {
    ClientLog.i("MiLinkClient", "bindService() twice failed , then inform the client by called onServiceConnected()");
    this.this$0.onServiceConnected(new ComponentName(this.this$0.context, "com.mi.milink.sdk.service.MiLinkService"), null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\internal\MiLinkServiceHost$6.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */