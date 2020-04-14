package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.view.View;
import android.view.View.OnClickListener;
import cn.com.wali.basetool.log.Logger;

final class ad
  implements View.OnClickListener
{
  ad(MiFloatView paramMiFloatView) {}
  
  public final void onClick(View paramView)
  {
    Logger.a("MiGameSDK.MiFloatView", "mFloatRootView onclick " + MiFloatView.b(this.a));
    if (MiFloatView.b(this.a) != null) {
      MiFloatView.b(this.a).c();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */