package com.xiaomi.gamecenter.sdk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.OSUtils;
import com.xiaomi.gamecenter.sdk.utils.OSUtils.ROM;
import java.util.concurrent.ExecutorService;

final class y
  implements ServiceConnection
{
  y(MiCommplatform paramMiCommplatform) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (!"ColorOS".equalsIgnoreCase(OSUtils.a().name())) {
      MiCommplatform.cancelSendToastServiceConnTimeOutMsg();
    }
    MiCommplatform.access$402(IGameCenterSDK.Stub.asInterface(paramIBinder));
    HyUtils.a().submit(new z(this));
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    MiCommplatform.cancelSendToastServiceConnTimeOutMsg();
    MiCommplatform.access$402(null);
    Log.i(">>>>", "Service DisConnected");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */