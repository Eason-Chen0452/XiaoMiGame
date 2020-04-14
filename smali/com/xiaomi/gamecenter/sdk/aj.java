package com.xiaomi.gamecenter.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import cn.com.wali.basetool.log.Logger;
import com.mi.milink.sdk.base.Global;
import com.xiaomi.gamecenter.sdk.entry.MiAccountInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.protocol.MessageFactory;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.TokenUtils;
import com.xiaomi.gamecenter.sdk.utils.c;
import com.xiaomi.hy.dj.model.ServiceToken;

final class aj
  implements Runnable
{
  aj(MiCommplatform paramMiCommplatform, Activity paramActivity, RoleData paramRoleData) {}
  
  public final void run()
  {
    Object localObject4 = null;
    try
    {
      ServiceToken localServiceToken = TokenUtils.b(this.a);
      localObject1 = localObject4;
      if (localServiceToken != null) {
        localObject1 = localServiceToken.getUid();
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        try
        {
          if (TextUtils.isEmpty((CharSequence)localObject1))
          {
            localObject4 = localObject1;
            if (HyUtils.f(MiCommplatform.access$1700()))
            {
              localObject4 = localObject1;
              if (HyUtils.b(MiCommplatform.access$1700()))
              {
                int i = MiCommplatform.access$1700().getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode;
                Logger.a("MiGameSDK.MiCommplatform", "versionCode " + i);
                localObject4 = localObject1;
                if (i > 520000)
                {
                  localObject4 = localObject1;
                  if (this.c.checkAndConnect(this.a, false) == 0)
                  {
                    localObject4 = localObject1;
                    if (MiCommplatform.access$400() != null) {
                      localObject4 = MiCommplatform.access$400().getFuid(MiCommplatform.appInfo.getAppId());
                    }
                  }
                }
              }
            }
          }
          this.c.disconnect();
          localObject1 = localObject4;
        }
        catch (Exception localException3)
        {
          Object localObject1;
          Object localObject2;
          localException3.printStackTrace();
          this.c.disconnect();
          continue;
        }
        finally
        {
          this.c.disconnect();
        }
        try
        {
          localObject4 = MiCommplatform.appInfo.getAccount().getUid();
          if (MiCommplatform.access$2100()) {
            Global.init(MiCommplatform.access$700(), MiCommplatform.getMilinkAppInfo());
          }
          localObject1 = MessageFactory.a(this.a, this.b, MiCommplatform.appInfo, (String)localObject4, (String)localObject1);
          if (c.a(this.a)) {
            this.a.runOnUiThread(new ak(this));
          }
          Logger.a("MiGameSDK.MiCommplatform", "MilinkSubmitRoleData rsp " + localObject1);
          return;
        }
        catch (Exception localException2)
        {
          Logger.a("MiGameSDK.MiCommplatform", "submit role data error", localException2);
        }
        localException1 = localException1;
        localException1.printStackTrace();
        localObject2 = localObject4;
      }
    }
    localObject4 = localObject1;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */