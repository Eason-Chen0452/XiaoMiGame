package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.n;

final class g
  implements Runnable
{
  g(MiFloatManager paramMiFloatManager) {}
  
  public final void run()
  {
    if (MiFloatManager.q(this.a)) {
      n.a(MiFloatManager.r(this.a));
    }
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(this.a.a.a, this.a.a.b);
    MiFloatManager.p(this.a).addView(MiFloatManager.r(this.a), localLayoutParams);
    MiFloatManager.r(this.a).a(MiFloatManager.l(this.a));
    MiFloatManager.b(this.a, true);
    MiFloatManager.e(this.a).removeMessages(1008);
    MiFloatManager.e(this.a).sendEmptyMessageDelayed(1008, 500L);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */