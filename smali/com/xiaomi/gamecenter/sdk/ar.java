package com.xiaomi.gamecenter.sdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

final class ar
  implements ServiceConnection
{
  ar(MiCommplatform paramMiCommplatform) {}
  
  public final void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    MiCommplatform.access$1202(this.a, IGameCenterSDK.Stub.asInterface(paramIBinder));
    synchronized (MiCommplatform.access$800(this.a))
    {
      MiCommplatform.access$800(this.a).notify();
      return;
    }
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    MiCommplatform.access$1202(this.a, null);
    Log.i(">>>>", "Service DisConnected");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */