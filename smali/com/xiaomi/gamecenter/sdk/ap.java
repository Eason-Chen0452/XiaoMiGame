package com.xiaomi.gamecenter.sdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import java.util.concurrent.ExecutorService;

final class ap
  implements ServiceConnection
{
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    MiCommplatform.access$402(IGameCenterSDK.Stub.asInterface(paramIBinder));
    HyUtils.a().submit(new aq(this));
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    MiCommplatform.access$402(null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */