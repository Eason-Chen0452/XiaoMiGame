package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.report.MiFloatDataReport;

final class n
  implements Runnable
{
  n(MiFloatManager paramMiFloatManager, MiFloatView paramMiFloatView, View paramView) {}
  
  public final void run()
  {
    for (;;)
    {
      int m;
      int n;
      int k;
      int i2;
      int i1;
      try
      {
        MiFloatManager.e(this.c).removeMessages(1000);
        MiFloatManager.e(this.c).removeMessages(1001);
        MiFloatManager.e(this.c).sendEmptyMessage(1000);
        m = com.xiaomi.gamecenter.sdk.ui.mifloat.menu.a.a().f();
        n = com.xiaomi.gamecenter.sdk.ui.mifloat.menu.a.a().e();
        this.a.q();
        this.a.i();
        i = this.a.a();
        k = this.a.b();
        j = this.a.c();
        this.a.d();
        i2 = this.c.a.a;
        i1 = this.c.a.b;
        if (i + j / 2 >= i2 / 2) {
          break label279;
        }
        i = j;
        if (!this.a.o()) {
          break label287;
        }
      }
      catch (Exception localException)
      {
        FrameLayout.LayoutParams localLayoutParams;
        localException.printStackTrace();
        return;
      }
      com.xiaomi.gamecenter.sdk.ui.mifloat.utils.n.a(this.b);
      localLayoutParams = new FrameLayout.LayoutParams(m, n);
      localLayoutParams.leftMargin = i;
      localLayoutParams.topMargin = j;
      Logger.a("MiGameSDK.MiFloatManager", "show float menu x = " + i + ",y = " + j);
      MiFloatManager.p(this.c).addView(MiFloatManager.t(this.c));
      MiFloatManager.p(this.c).addView(this.b, localLayoutParams);
      MiFloatManager.e(this.c, true);
      MiFloatManager.c(this.c).q();
      MiFloatDataReport.b();
      return;
      label279:
      int i = i2 - j - m;
      label287:
      int j = k;
      if (i1 <= k + n) {
        j = i1 - n;
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */