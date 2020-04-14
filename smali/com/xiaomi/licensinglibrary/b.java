package com.xiaomi.licensinglibrary;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class b
  implements DialogInterface.OnCancelListener
{
  b(LicenseChecker.a parama) {}
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    LicenseChecker.access$900(this.a.a).dontAllow(1000);
    this.a.a.reportLog("buy_license_confirm_canceled");
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */