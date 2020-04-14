package com.xiaomi.licensinglibrary.util;

import android.app.Activity;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiBuyInfo;

final class b
  implements Runnable
{
  b(a parama, Activity paramActivity, String paramString) {}
  
  public final void run()
  {
    try
    {
      MiBuyInfo localMiBuyInfo = new MiBuyInfo();
      localMiBuyInfo.setProductCode(this.a.getPackageName());
      localMiBuyInfo.setCpOrderId(this.b);
      localMiBuyInfo.setCount(1);
      MiCommplatform.getInstance().miUniPay(this.a, localMiBuyInfo, new c(this), null, null);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\licensinglibrary\util\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */