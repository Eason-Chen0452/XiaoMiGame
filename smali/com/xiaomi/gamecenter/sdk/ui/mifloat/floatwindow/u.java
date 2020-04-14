package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.app.Activity;
import android.widget.FrameLayout;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.m;

final class u
  implements aa
{
  u(MiFloatManager paramMiFloatManager, Activity paramActivity) {}
  
  public final void a()
  {
    MiFloatManager.a(this.b, this.a);
    if (MiFloatManager.i(this.b))
    {
      MiFloatManager.e(this.b).removeMessages(1000);
      MiFloatManager.e(this.b).sendEmptyMessage(1002);
      MiFloatManager.e(this.b).removeMessages(1003);
      MiFloatManager.e(this.b).removeMessages(1001);
      MiFloatManager.c(this.b).i();
      if (!MiFloatManager.c(this.b).n()) {
        break label136;
      }
      MiFloatManager.e(this.b).sendEmptyMessage(1009);
    }
    for (;;)
    {
      MiFloatManager.j(this.b);
      if (MiFloatManager.f(this.b)) {
        MiFloatManager.o(this.b);
      }
      return;
      label136:
      if (MiFloatManager.c(this.b).o()) {
        MiFloatManager.e(this.b).sendEmptyMessage(1010);
      }
    }
  }
  
  public final void a(int paramInt)
  {
    Logger.a("MiGameSDK.MiFloatManager", "onHeightChanged start=============");
    Logger.a("MiGameSDK.MiFloatManager", "height " + paramInt);
    int i = m.a(this.a);
    int j = m.b(this.a);
    Logger.a("MiGameSDK.MiFloatManager", " screenWidth " + i + ",screenHeight " + j);
    boolean bool1 = m.b(this.a);
    boolean bool2 = m.a(this.a);
    if ((bool1) || (bool2))
    {
      i = m.d(this.a);
      if (m.e(this.a)) {
        break label173;
      }
    }
    label173:
    for (this.b.a.b = (paramInt - i);; this.b.a.b = paramInt)
    {
      Logger.a("MiGameSDK.MiFloatManager", "miFloatLayoutParams " + this.b.a);
      Logger.a("MiGameSDK.MiFloatManager", "onHeightChanged end=============");
      return;
      i = 0;
      break;
    }
  }
  
  public final void b(int paramInt)
  {
    Logger.a("MiGameSDK.MiFloatManager", "onWidthChanged start=============");
    Logger.a("MiGameSDK.MiFloatManager", "width " + paramInt);
    int i = m.a(this.a);
    int j = m.b(this.a);
    Logger.a("MiGameSDK.MiFloatManager", " screenWidth " + i + ",screenHeight " + j);
    boolean bool1 = m.b(this.a);
    boolean bool2 = m.a(this.a);
    m.f(this.a);
    if ((bool1) || (bool2)) {
      m.d(this.a);
    }
    m.c(this.a);
    Logger.a("MiGameSDK.MiFloatManager", "contentView.getMeasuredHeight() " + MiFloatManager.p(this.b).getMeasuredHeight());
    Logger.a("MiGameSDK.MiFloatManager", "contentView.getMeasuredWidth() " + MiFloatManager.p(this.b).getMeasuredWidth());
    i = 0;
    if (MiFloatManager.p(this.b) != null) {
      i = MiFloatManager.p(this.b).getMeasuredWidth();
    }
    a locala = this.b.a;
    if (i > 0) {}
    for (;;)
    {
      locala.a = i;
      Logger.a("MiGameSDK.MiFloatManager", "miFloatLayoutParams " + this.b.a);
      Logger.a("MiGameSDK.MiFloatManager", "onWidthChanged end=============");
      return;
      i = paramInt;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */