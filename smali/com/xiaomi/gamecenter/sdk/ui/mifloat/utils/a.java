package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class a
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  a(AndroidBug54971Workaround paramAndroidBug54971Workaround) {}
  
  public final void onGlobalLayout()
  {
    AndroidBug54971Workaround.a(this.a, AndroidBug54971Workaround.a(this.a));
    AndroidBug54971Workaround.b(this.a, AndroidBug54971Workaround.b(this.a));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */