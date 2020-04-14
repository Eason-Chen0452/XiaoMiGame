package com.xiaomi.gamecenter.sdk.ui.notice.utils;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class b
  implements DialogInterface.OnClickListener
{
  b(Activity paramActivity) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = "http://app.xiaomi.com/details?id=com.xiaomi.gamecenter&back=true&ref=gameservicer&startDownload=true";
    if (!com.xiaomi.gamecenter.sdk.utils.b.d) {
      paramDialogInterface = "http://game.xiaomi.com/";
    }
    com.xiaomi.gamecenter.sdk.ui.mifloat.utils.b.a(this.a, paramDialogInterface, null);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\notice\utils\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */