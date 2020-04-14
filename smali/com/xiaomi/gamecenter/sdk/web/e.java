package com.xiaomi.gamecenter.sdk.web;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.WebView;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class e
  implements DialogInterface.OnClickListener
{
  e(VerifyIDWebFragment paramVerifyIDWebFragment) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ReporterUtils.getInstance().xmsdkReport(2026);
    VerifyIDWebFragment.c(this.a).setVisibility(0);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\web\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */