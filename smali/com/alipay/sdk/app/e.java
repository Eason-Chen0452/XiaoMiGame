package com.alipay.sdk.app;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

final class e
  implements DialogInterface.OnClickListener
{
  e(c paramc) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.cancel();
    b.a(this.a.b, false);
    h.a = h.a();
    b.a(this.a.b).finish();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\app\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */