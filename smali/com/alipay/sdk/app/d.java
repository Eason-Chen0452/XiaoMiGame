package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

final class d
  implements DialogInterface.OnClickListener
{
  d(c paramc) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    b.a(this.a.b, true);
    this.a.a.proceed();
    paramDialogInterface.dismiss();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\app\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */