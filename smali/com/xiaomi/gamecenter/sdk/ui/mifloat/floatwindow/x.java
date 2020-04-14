package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.n;

final class x
  implements Runnable
{
  x(MiFloatManager paramMiFloatManager) {}
  
  public final void run()
  {
    n.a(MiFloatManager.c(this.a));
    Logger.a("MiGameSDK.MiFloatManager", "dismissFloat");
    MiFloatManager.c(this.a, false);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */