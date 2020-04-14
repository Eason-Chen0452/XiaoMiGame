package com.xiaomi.licensinglibrary;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class a
  implements ServiceConnection
{
  a(LicenseChecker paramLicenseChecker) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    LicenseChecker.access$102(this.a, ILicenseService.Stub.asInterface(paramIBinder));
    paramComponentName = LicenseChecker.access$200(this.a).obtainMessage(1);
    LicenseChecker.access$200(this.a).removeMessages(1);
    LicenseChecker.access$200(this.a).sendMessage(paramComponentName);
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    LicenseChecker.access$102(this.a, null);
    LicenseChecker.access$302(this.a, false);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */