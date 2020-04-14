package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.widget.FrameLayout;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.report.MiFloatDataReport;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.MiFloatPosition;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.n;

final class w
  implements Runnable
{
  w(MiFloatManager paramMiFloatManager, MiFloatPosition paramMiFloatPosition) {}
  
  public final void run()
  {
    n.a(MiFloatManager.c(this.b));
    MiFloatManager.e(this.b).removeMessages(1003);
    MiFloatManager.e(this.b).removeMessages(1001);
    MiFloatManager.c(this.b).i();
    MiFloatManager.c(this.b).setVisibility(0);
    MiFloatManager.c(this.b).clearAnimation();
    MiFloatManager.p(this.b).addView(MiFloatManager.c(this.b));
    MiFloatManager.c(this.b).a(this.a.a(), this.a.b());
    MiFloatManager.j(this.b);
    Logger.a("MiGameSDK.MiFloatManager", "showFloat " + this.a);
    MiFloatManager.c(this.b, true);
    MiFloatDataReport.a();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */