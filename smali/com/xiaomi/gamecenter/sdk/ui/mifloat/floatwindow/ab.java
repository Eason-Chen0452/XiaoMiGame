package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.AndroidBug54971Workaround.a;

final class ab
  implements AndroidBug54971Workaround.a
{
  ab(MiFloatView paramMiFloatView) {}
  
  public final void a(int paramInt)
  {
    Logger.a("MiGameSDK.MiFloatView", "onHeightChange " + paramInt);
    if (MiFloatView.a(this.a) != null) {
      MiFloatView.a(this.a).a(paramInt);
    }
  }
  
  public final void b(int paramInt)
  {
    Logger.a("MiGameSDK.MiFloatView", "onWidthChange " + paramInt);
    if (MiFloatView.a(this.a) != null) {
      MiFloatView.a(this.a).b(paramInt);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */