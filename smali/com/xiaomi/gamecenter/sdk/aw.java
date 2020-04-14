package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.widget.Toast;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.pay.b;
import com.xiaomi.gamecenter.sdk.utils.AccountType;
import com.xiaomi.gamecenter.sdk.utils.PackgeInfoHelper;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class aw
  implements b
{
  aw(String paramString, Activity paramActivity, OnPayProcessListener paramOnPayProcessListener) {}
  
  public final void a()
  {
    PackgeInfoHelper.a();
    AccountType localAccountType = PackgeInfoHelper.a(this.a);
    if (localAccountType != null) {
      ReporterUtils.getInstance().report(153, String.valueOf(localAccountType.ordinal()));
    }
    for (;;)
    {
      SDKAccountUtil.b(this.b);
      ReporterUtils.getInstance().report(3090);
      SDKPaymentUtil.a(0, this.c);
      return;
      ReporterUtils.getInstance().report(153);
    }
  }
  
  public final void a(int paramInt, String paramString)
  {
    Logger.a("Payment Code:" + paramInt + ",ErrMsg:" + paramString);
    Toast.makeText(this.b, paramString, 0).show();
    ReporterUtils.getInstance().report(154);
    if ((paramInt == 713) || (paramInt == 606))
    {
      SDKPaymentUtil.a(47531, this.c);
      return;
    }
    SDKPaymentUtil.a(47533, this.c);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\aw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */