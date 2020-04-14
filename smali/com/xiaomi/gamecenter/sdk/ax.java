package com.xiaomi.gamecenter.sdk;

final class ax
  implements Runnable
{
  ax(OnPayProcessListener paramOnPayProcessListener, int paramInt) {}
  
  public final void run()
  {
    MiCommplatform.getInstance().setTouch(false);
    this.a.finishPayProcess(this.b);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */