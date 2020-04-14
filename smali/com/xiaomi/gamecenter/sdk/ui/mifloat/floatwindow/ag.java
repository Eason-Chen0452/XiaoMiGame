package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.utils.ResourceUtils;

final class ag
  implements Animation.AnimationListener
{
  ag(MiFloatView paramMiFloatView) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (MiFloatView.i(this.a).getVisibility() == 0)
    {
      int i = ResourceUtils.c(this.a.getContext(), "icon_red_point_left");
      MiFloatView.i(this.a).setImageResource(i);
    }
    Logger.a("MiGameSDK.MiFloatView", "hideToRight");
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation)
  {
    this.a.a = MiFloatView.STATUS.RIGHT_HIDE;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */