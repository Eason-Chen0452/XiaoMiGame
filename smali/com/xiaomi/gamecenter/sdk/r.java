package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Message;
import cn.com.wali.basetool.log.Logger;
import cn.com.wali.basetool.utils.SystemConfig;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.protocol.MessageFactory;
import com.xiaomi.gamecenter.sdk.ui.mifloat.floatwindow.MiFloatManager;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionRsp;

final class r
  implements Runnable
{
  r(MiCommplatform paramMiCommplatform, OnLoginProcessListener paramOnLoginProcessListener, String paramString) {}
  
  public final void run()
  {
    String str2 = "0";
    String str1;
    for (;;)
    {
      try
      {
        MiFloatManager.b();
        MiFloatManager.j();
        localObject = str2;
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          try
          {
            if (HyUtils.f(MiCommplatform.access$1700()))
            {
              localObject = str2;
              if (HyUtils.b(MiCommplatform.access$1700()))
              {
                i = MiCommplatform.access$1700().getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode;
                localObject = String.valueOf(i);
              }
            }
          }
          catch (Exception localException2)
          {
            Object localObject;
            int i;
            localException2.printStackTrace();
            str1 = str2;
            continue;
            this.c.sendToastMsg();
            this.a.finishLoginProcess(-102, null);
            MiCommplatform.access$1802(this.c, false);
            return;
          }
          try
          {
            if (SystemConfig.e(MiCommplatform.access$1700())) {
              localObject = MessageFactory.a(MiCommplatform.access$1700(), (String)localObject, new MiAppEntry(MiCommplatform.appInfo));
            }
          }
          catch (Exception localException3)
          {
            str1 = null;
          }
        }
        try
        {
          if (Logger.a)
          {
            Logger.d("note:" + ((LoginProto.CheckSdkVersionRsp)localObject).getNote());
            Logger.d("guide word:" + ((LoginProto.CheckSdkVersionRsp)localObject).getGuideWord());
          }
          Logger.a("MiGameSDK.MiCommplatform", "checkSdkVersionRsp " + localObject);
          if (localObject == null) {
            break label284;
          }
          ReporterUtils.getInstance().xmsdkReport(2207);
          i = ((LoginProto.CheckSdkVersionRsp)localObject).getRetCode();
          if ((200 != i) && (2001 != i) && (1001 != i) && (MiCommplatform.access$1900() != null)) {
            break;
          }
          MiCommplatform.miLogin(this.b);
          return;
        }
        catch (Exception localException4)
        {
          Message localMessage;
          for (;;) {}
        }
        localException1 = localException1;
        localException1.printStackTrace();
        continue;
      }
      localException3.printStackTrace();
    }
    localMessage = new Message();
    localMessage.obj = str1;
    MiCommplatform.access$1900().sendMessage(localMessage);
    return;
    label284:
    ReporterUtils.getInstance().xmsdkReport(2208);
    MiCommplatform.miLogin(this.b);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */