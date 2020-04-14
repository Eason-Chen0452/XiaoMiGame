package com.alipay.sdk.app;

import android.webkit.SslErrorHandler;

final class c
  implements Runnable
{
  c(b paramb, SslErrorHandler paramSslErrorHandler) {}
  
  public final void run()
  {
    com.alipay.sdk.widget.d.a(b.a(this.b), "安全警告", "安全连接证书校验无效，将无法保证访问数据的安全性，可能存在风险，请选择是否继续？", "继续", new d(this), "退出", new e(this));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\app\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */