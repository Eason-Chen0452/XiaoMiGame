package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ViewSwitcher.ViewFactory;

final class ac
  implements ViewSwitcher.ViewFactory
{
  ac(MiFloatView paramMiFloatView) {}
  
  public final View makeView()
  {
    ImageView localImageView = new ImageView(this.a.getContext());
    localImageView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    localImageView.setScaleType(ImageView.ScaleType.FIT_XY);
    return localImageView;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */