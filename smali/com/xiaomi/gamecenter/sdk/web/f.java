package com.xiaomi.gamecenter.sdk.web;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class f
  implements DialogInterface.OnClickListener
{
  f(VerifyIDWebFragment paramVerifyIDWebFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ReporterUtils.getInstance().xmsdkReport(2025);
    if (VerifyIDWebFragment.a(this.a) != null) {
      VerifyIDWebFragment.a(this.a).a();
    }
    VerifyIDWebFragment.b(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\web\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */