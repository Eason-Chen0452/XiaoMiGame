package com.xiaomi.gamecenter.sdk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class ba
  implements DialogInterface.OnClickListener
{
  ba(ServiceUpdateHandler paramServiceUpdateHandler) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ReporterUtils.getInstance().xmsdkReport(2205);
    MiCommplatform.miLogin(null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */