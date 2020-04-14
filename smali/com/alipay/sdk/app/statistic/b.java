package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.sdk.packet.impl.c;
import com.alipay.sdk.util.i;
import java.io.IOException;

final class b
  implements Runnable
{
  b(Context paramContext, String paramString) {}
  
  public final void run()
  {
    c localc = new c();
    try
    {
      String str = i.b(this.a, "alipay_cashier_statistic_record", null);
      if ((!TextUtils.isEmpty(str)) && (localc.a(this.a, str) != null)) {
        i.a(this.a, "alipay_cashier_statistic_record");
      }
      try
      {
        if (!TextUtils.isEmpty(this.b)) {
          localc.a(this.a, this.b);
        }
        return;
      }
      catch (IOException localIOException)
      {
        i.a(this.a, "alipay_cashier_statistic_record", this.b);
        return;
      }
      catch (Throwable localThrowable1) {}
    }
    catch (Throwable localThrowable2)
    {
      for (;;) {}
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\sdk\app\statistic\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */