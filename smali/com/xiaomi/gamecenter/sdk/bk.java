package com.xiaomi.gamecenter.sdk;

import android.app.Dialog;
import cn.com.wali.basetool.log.Logger;

final class bk
  implements Runnable
{
  bk(bh parambh, Dialog paramDialog, long paramLong) {}
  
  public final void run()
  {
    try
    {
      if ((this.a != null) && (this.a.isShowing()))
      {
        this.a.dismiss();
        if (bh.c(this.c) != null) {
          bh.c(this.c).a();
        }
        Logger.b("MiGameSDK.SplashScreenManager", "splash all time " + (System.currentTimeMillis() - this.b) + "ms");
      }
      return;
    }
    catch (Exception localException)
    {
      if (bh.c(this.c) != null) {
        bh.c(this.c).a();
      }
      Logger.c("MiGameSDK.SplashScreenManager", localException.getMessage());
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */