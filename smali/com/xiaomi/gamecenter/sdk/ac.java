package com.xiaomi.gamecenter.sdk;

import android.content.pm.PackageInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.protocol.MessageFactory;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import org.json.JSONObject;

final class ac
  implements Runnable
{
  ac(MiCommplatform paramMiCommplatform, String paramString, PackageInfo paramPackageInfo, RewardListener paramRewardListener) {}
  
  public final void run()
  {
    Object localObject = MessageFactory.a(MiCommplatform.access$700(), MiCommplatform.appInfo.getAppId(), this.a, this.b.versionCode, this.b.versionName);
    try
    {
      localObject = new JSONObject((String)localObject);
      int i = ((JSONObject)localObject).optInt("errcode");
      String str1 = ((JSONObject)localObject).optString("downloadFrom");
      String str2 = ((JSONObject)localObject).optString("launchFrom");
      boolean bool = ((JSONObject)localObject).optBoolean("isReward", false);
      if (200 == i)
      {
        ReporterUtils.getInstance().xmsdkReportBonus(String.valueOf(bool), 2051);
        this.c.onSuccess(str1, str2, bool);
        return;
      }
      ReporterUtils.getInstance().xmsdkReportBonus(String.valueOf(i), 2052);
      this.c.onError(i);
      return;
    }
    catch (Exception localException)
    {
      ReporterUtils.getInstance().xmsdkReportBonus(localException.getMessage(), 2053);
      localException.printStackTrace();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */