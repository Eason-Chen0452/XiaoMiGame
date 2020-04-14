package com.xiaomi.gamecenter.sdk;

import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow.MiFloatManager;

final class t
  implements Runnable
{
  t(MiCommplatform paramMiCommplatform, OnLoginProcessListener paramOnLoginProcessListener) {}
  
  public final void run()
  {
    try
    {
      if (this.b.checkAndConnect(MiCommplatform.access$700(), false) != 0)
      {
        MiCommplatform.access$1802(this.b, false);
        this.a.finishLoginProcess(-103, null);
        return;
      }
      MiCommplatform.access$400().miLogout(this.b.getVersion());
      MiCommplatform.appInfo.setAccount(null);
      MiCommplatform.access$1802(this.b, false);
      this.a.finishLoginProcess(-104, null);
      MiFloatManager.b();
      MiFloatManager.j();
      return;
    }
    catch (Exception localException)
    {
      MiCommplatform.access$1802(this.b, false);
      this.a.finishLoginProcess(-103, null);
      localException.printStackTrace();
      return;
    }
    finally
    {
      MiCommplatform.access$1802(this.b, false);
      this.b.disconnect();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */