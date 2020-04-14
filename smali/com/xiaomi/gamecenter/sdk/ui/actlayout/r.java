package com.xiaomi.gamecenter.sdk.ui.actlayout;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

final class r
  implements View.OnClickListener
{
  r(ViewSelectLoginMethod paramViewSelectLoginMethod, Dialog paramDialog) {}
  
  public final void onClick(View paramView)
  {
    ViewSelectLoginMethod.g(this.b);
    ReporterUtils.getInstance().xmsdkReport(2301);
    this.a.dismiss();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\actlayout\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */