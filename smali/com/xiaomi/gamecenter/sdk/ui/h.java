package com.xiaomi.gamecenter.sdk.ui;

import android.content.Context;
import android.widget.Toast;

final class h
  implements Runnable
{
  h(Context paramContext, String paramString, int paramInt) {}
  
  public final void run()
  {
    try
    {
      if (UiUtils.a() != null) {
        UiUtils.a().cancel();
      }
      UiUtils.a(Toast.makeText(this.a, this.b, this.c));
      UiUtils.a().show();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */