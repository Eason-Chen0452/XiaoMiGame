package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.n;

final class o
  implements Runnable
{
  o(MiFloatManager paramMiFloatManager) {}
  
  public final void run()
  {
    try
    {
      n.a(MiFloatManager.t(this.a));
      n.a(MiFloatManager.d(this.a));
      MiFloatManager.u(this.a);
      MiFloatManager.e(this.a, false);
      MiFloatManager.j(this.a);
      if (MiFloatManager.v(this.a)) {
        MiFloatManager.c(this.a).p();
      }
      return;
    }
    catch (Exception localException)
    {
      Logger.a("MiGameSDK.MiFloatManager", "dismissFloatMenu error", localException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */