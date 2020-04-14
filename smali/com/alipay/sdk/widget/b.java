package com.alipay.sdk.widget;

final class b
  implements Runnable
{
  b(a parama) {}
  
  public final void run()
  {
    if (a.c(this.a) == null) {
      a.a(this.a, new a.a(this.a, a.a(this.a)));
    }
    try
    {
      if (!a.c(this.a).isShowing()) {
        a.c(this.a).show();
      }
      return;
    }
    catch (Exception localException) {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\widget\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */