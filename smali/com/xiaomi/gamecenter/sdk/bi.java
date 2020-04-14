package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.app.Dialog;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import java.util.concurrent.ExecutorService;

final class bi
  implements bd.a
{
  bi(bh parambh) {}
  
  public final void a(Activity paramActivity) {}
  
  public final void b(Activity paramActivity)
  {
    if ((paramActivity != null) && (paramActivity.equals(bh.a(this.a))) && (bh.b(this.a) != null) && (bh.b(this.a).isShowing())) {}
    try
    {
      bh.b(this.a).dismiss();
      Logger.a("MiGameSDK.SplashScreenManager", "end splash onDestory");
      if (bh.c(this.a) != null) {
        bh.c(this.a).a();
      }
      return;
    }
    catch (Exception paramActivity)
    {
      do
      {
        paramActivity = paramActivity;
        Logger.a("MiGameSDK.SplashScreenManager", "end splash onDestory");
      } while (bh.c(this.a) == null);
      bh.c(this.a).a();
      return;
    }
    finally
    {
      paramActivity = finally;
      Logger.a("MiGameSDK.SplashScreenManager", "end splash onDestory");
      if (bh.c(this.a) != null) {
        bh.c(this.a).a();
      }
      throw paramActivity;
    }
  }
  
  public final void c(Activity paramActivity)
  {
    bh.a().a(paramActivity);
    bh localbh = bh.a();
    MiAppInfo localMiAppInfo = bh.d(this.a);
    HyUtils.a().submit(new bl(localbh, paramActivity, localMiAppInfo));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */