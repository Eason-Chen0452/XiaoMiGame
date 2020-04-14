package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.ui.mifloat.menu.MiFloatMenuInfo;
import com.xiaomi.gamecenter.sdk.ui.mifloat.menu.a;
import com.xiaomi.gamecenter.sdk.ui.mifloat.report.MiFloatDataReport;

final class p
  implements Runnable
{
  p(MiFloatManager paramMiFloatManager, MiAppInfo paramMiAppInfo, MiFloatMenuInfo paramMiFloatMenuInfo) {}
  
  public final void run()
  {
    try
    {
      MiFloatManager.b().b(MiFloatManager.b(this.c));
      MiFloatDataReport.a(new MiAppEntry(this.a));
      a.a().a(this.b);
      MiFloatManager.b().f();
      MiFloatManager.b().d();
      return;
    }
    catch (Throwable localThrowable)
    {
      Logger.a("MiGameSDK.MiFloatManager", "show float in uithread error", localThrowable);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */