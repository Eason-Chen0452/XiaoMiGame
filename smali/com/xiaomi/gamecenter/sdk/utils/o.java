package com.xiaomi.gamecenter.sdk.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class o
  extends Handler
{
  o(n paramn, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    }
    do
    {
      return;
    } while ((n.a(this.a) != null) || (n.b(this.a) == null));
    n.b(this.a).b();
    n.c(this.a);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */