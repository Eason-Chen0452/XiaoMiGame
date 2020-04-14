package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class ae
  implements View.OnClickListener
{
  public final void onClick(View paramView)
  {
    ReporterUtils.getInstance().xmsdkReport(2206);
    paramView = new Intent("android.intent.action.VIEW", Uri.parse(HyUtils.m + HyUtils.c(MiCommplatform.getInstance().getApplicationContext())));
    paramView.addFlags(268435456);
    if (paramView.resolveActivity(MiCommplatform.sLoginActivity.getPackageManager()) != null)
    {
      MiCommplatform.sLoginActivity.startActivity(paramView);
      return;
    }
    Toast.makeText(MiCommplatform.sLoginActivity, "需要浏览器才能打开链接", 0).show();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */