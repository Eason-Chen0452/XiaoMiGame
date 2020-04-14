package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.WxCallBack;
import com.xiaomi.gamecenter.sdk.milink.LoginEvent.OAuthResultEvent;
import com.xiaomi.gamecenter.sdk.milink.LoginForSDK;
import com.xiaomi.gamecenter.sdk.ui.ActionTransfor.ActionResult;
import com.xiaomi.gamecenter.sdk.ui.MiLayout;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class d
  implements WxCallBack
{
  d(a parama) {}
  
  public final void onWxLoginCancel()
  {
    ViewLoginLayout.e(this.a.a);
    ReporterUtils.getInstance().xmsdkReport(12);
    ViewLoginLayout.c(this.a.a);
  }
  
  public final void onWxLoginFail()
  {
    ViewLoginLayout.e(this.a.a);
    ReporterUtils.getInstance().xmsdkReport(4031);
    ViewLoginLayout.c(this.a.a, ActionTransfor.ActionResult.ACTION_OK);
    MiLayout.a(ViewLoginLayout.i(this.a.a));
  }
  
  public final void onWxLoginSuccess(String paramString)
  {
    ViewLoginLayout.e(this.a.a);
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = new LoginEvent.OAuthResultEvent(1, null, null, null, paramString, null, false, AccountType.AccountType_WX);
      this.a.a.d("正在登录...");
      ReporterUtils.getInstance().xmsdkReport(2071);
      new LoginForSDK((Activity)this.a.a.getContext(), this.a.a, paramString, ViewLoginLayout.d(this.a.a));
      return;
    }
    if (ViewLoginLayout.a(this.a.a) != null) {
      ViewLoginLayout.a(this.a.a).sendMessage(ViewLoginLayout.a(this.a.a).obtainMessage(40000, "微信登录出现异常"));
    }
    ReporterUtils.getInstance().xmsdkReport(4031);
    ViewLoginLayout.d(this.a.a, ActionTransfor.ActionResult.ACTION_OK);
    MiLayout.a(ViewLoginLayout.j(this.a.a));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */