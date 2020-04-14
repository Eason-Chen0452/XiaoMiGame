package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import cn.com.wali.basetool.log.Logger;

final class e
  implements View.OnClickListener
{
  e(Activity paramActivity, AlertDialog paramAlertDialog) {}
  
  public final void onClick(View paramView)
  {
    if ((com.xiaomi.gamecenter.sdk.utils.b.d) || (com.xiaomi.gamecenter.sdk.utils.b.a()))
    {
      paramView = String.format("market://details/detailmini?id=%s&finishWhenOpen=true&back=true", new Object[] { "com.xiaomi.gamecenter.sdk.service" });
      Logger.a("MiGameSDK.MiFloatHelper", "startInstallInAppStore url " + paramView);
      paramView = new Intent("android.intent.action.VIEW", Uri.parse(paramView));
      if (this.a != null) {
        this.a.startActivity(paramView);
      }
    }
    for (;;)
    {
      this.b.dismiss();
      return;
      b.b(this.a);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */