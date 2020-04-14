package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import android.view.View;
import android.view.ViewGroup;

public final class n
{
  public static void a(View paramView)
  {
    if ((paramView != null) && (paramView.getParent() != null)) {
      ((ViewGroup)paramView.getParent()).removeView(paramView);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */