package com.xiaomi.licensinglibrary;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class d
  implements DialogInterface.OnClickListener
{
  d(LicenseChecker.a parama) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.reportLog("buy_license_begin");
    LicenseChecker.access$200(this.a.a).removeMessages(4);
    LicenseChecker.access$200(this.a.a).sendEmptyMessage(4);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */