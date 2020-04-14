package com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow;

final class y
  implements Runnable
{
  y(MiFloatManager paramMiFloatManager) {}
  
  public final void run()
  {
    MiFloatManager.d(this.a, true);
    if (!MiFloatManager.f(this.a)) {
      MiFloatManager.c(this.a).p();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\floatwindow\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */