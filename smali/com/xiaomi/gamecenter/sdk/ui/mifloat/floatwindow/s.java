package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.MiFloatPosition;

final class s
  implements b
{
  s(MiFloatManager paramMiFloatManager) {}
  
  public final void a()
  {
    MiFloatManager.g(this.a);
    MiFloatManager.j(this.a);
    MiFloatManager.b(this.a, true);
    MiFloatManager.c(this.a).setVisibility(0);
    MiFloatManager.e(this.a).removeMessages(1003);
    MiFloatManager.e(this.a).removeMessages(1001);
    MiFloatManager.c(this.a).i();
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    Logger.a("MiGameSDK.MiFloatManager", "savePosition " + paramInt1 + "," + paramInt2);
    MiFloatPosition localMiFloatPosition = new MiFloatPosition();
    localMiFloatPosition.a(paramInt1);
    localMiFloatPosition.b(paramInt2);
    Activity localActivity = MiFloatManager.b(this.a);
    SharedPreferences.Editor localEditor = localActivity.getSharedPreferences("misdk_float_", 0).edit();
    paramInt1 = localActivity.getResources().getConfiguration().orientation;
    localEditor.putInt("x_" + paramInt1, localMiFloatPosition.a());
    localEditor.putInt("y_" + paramInt1, localMiFloatPosition.b());
    Logger.a("MiGameSDK.MiFloatUtils", "savePositon " + localMiFloatPosition);
    localEditor.commit();
  }
  
  public final void b()
  {
    MiFloatManager.e(this.a).removeMessages(1001);
  }
  
  public final void c()
  {
    MiFloatManager.h(this.a);
    if ((MiFloatManager.c(this.a).a == MiFloatView.STATUS.NORMAL) || (MiFloatManager.c(this.a).a == MiFloatView.STATUS.DISABLE))
    {
      MiFloatManager.e(this.a).removeMessages(1003);
      MiFloatManager.e(this.a).removeMessages(1001);
      MiFloatManager.k(this.a);
      return;
    }
    MiFloatManager.e(this.a).removeMessages(1002);
    MiFloatManager.e(this.a).sendEmptyMessage(1002);
    MiFloatManager.j(this.a);
  }
  
  public final void d()
  {
    Logger.a("MiGameSDK.MiFloatManager", "onRelease");
    MiFloatManager.j(this.a);
    MiFloatManager.h(this.a);
    MiFloatManager.b(this.a, false);
    if (MiFloatManager.l(this.a))
    {
      if (MiFloatManager.b(this.a).getSharedPreferences("misdk_float_", 0).getBoolean("is_hide_prompt", false)) {
        MiFloatManager.m(this.a);
      }
    }
    else {
      return;
    }
    MiFloatManager.n(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */