package com.xiaomi.gamecenter.sdk.utils;

import android.text.TextUtils;
import com.xiaomi.gamecenter.sdk.MiCommplatform;

final class f
  implements Runnable
{
  public final void run()
  {
    try
    {
      String str = ConnectionUtils.a("http://app.migc.xiaomi.com/contentapi/page/json/data/9243", "");
      if (TextUtils.isEmpty(str)) {
        return;
      }
      HyUtils.a(str);
      SdkPreferenceUtils.a(MiCommplatform.getInstance().getApplicationContext(), "ServiceInfo", str);
      SdkPreferenceUtils.a(MiCommplatform.getInstance().getApplicationContext(), "ServiceInfoCheckTime", HyUtils.c);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */