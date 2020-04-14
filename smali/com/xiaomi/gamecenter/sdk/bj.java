package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.report.ReportData;
import com.xiaomi.gamecenter.sdk.ui.notice.utils.UrlUtils;

final class bj
  implements View.OnClickListener
{
  bj(bh parambh, String paramString1, Activity paramActivity, String paramString2, MiAppEntry paramMiAppEntry) {}
  
  public final void onClick(View paramView)
  {
    Logger.a("MiGameSDK.SplashScreenManager", "click " + this.a);
    UrlUtils.a(this.b, this.a);
    ReportData.a("splash", this.c, "splash_goto", this.d);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */