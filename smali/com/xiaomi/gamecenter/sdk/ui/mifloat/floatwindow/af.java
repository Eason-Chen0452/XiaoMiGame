package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import cn.com.wali.basetool.log.Logger;

final class af
  implements Animation.AnimationListener
{
  af(MiFloatView paramMiFloatView) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    Logger.a("MiGameSDK.MiFloatView", "hideToLeft");
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation)
  {
    this.a.a = MiFloatView.STATUS.LEFT_HIDE;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */