package com.xiaomi.gamecenter.sdk;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.view.View;
import android.view.View.OnClickListener;

final class ad
  implements View.OnClickListener
{
  ad(AlertDialog paramAlertDialog) {}
  
  public final void onClick(View paramView)
  {
    try
    {
      MiCommplatform.getInstance().setTouch(false);
      MiCommplatform.getInstance().disconnect();
      paramView = MiCommplatform.access$700().getPackageManager().getLaunchIntentForPackage(MiCommplatform.access$700().getPackageName());
      paramView.addFlags(67108864);
      MiCommplatform.access$700().startActivity(paramView);
      this.a.dismiss();
      return;
    }
    catch (Exception paramView)
    {
      for (;;)
      {
        paramView.printStackTrace();
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */