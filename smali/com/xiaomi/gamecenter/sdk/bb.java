package com.xiaomi.gamecenter.sdk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Process;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class bb
  implements DialogInterface.OnClickListener
{
  bb(ServiceUpdateHandler paramServiceUpdateHandler) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ReporterUtils.getInstance().xmsdkReport(2205);
    Process.killProcess(Process.myPid());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */