package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;

final class q
  implements DialogInterface.OnClickListener
{
  q(Context paramContext) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = new Intent();
    paramDialogInterface.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
    paramDialogInterface.setData(Uri.fromParts("package", this.a.getPackageName(), null));
    this.a.startActivity(paramDialogInterface);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */