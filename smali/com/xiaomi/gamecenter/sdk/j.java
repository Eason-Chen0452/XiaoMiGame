package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Message;
import cn.com.wali.basetool.utils.SystemConfig;
import com.xiaomi.gamecenter.sdk.bean.DownloadDialogInfo;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.protocol.MessageFactory;
import com.xiaomi.gamecenter.sdk.utils.DownloadFileUtils;
import com.xiaomi.gamecenter.sdk.utils.HyUtils;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import com.xiaomi.gamecenter.sdk.utils.b;
import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionRsp;

final class j
  implements Runnable
{
  j(DownloadHandler paramDownloadHandler, Context paramContext, DownloadFileUtils paramDownloadFileUtils) {}
  
  public final void run()
  {
    Object localObject3 = "0";
    Object localObject1 = localObject3;
    try
    {
      if (MiCommplatform.isSdkServiceExist(this.a))
      {
        localObject1 = localObject3;
        if (HyUtils.b(this.a))
        {
          int i = this.a.getPackageManager().getPackageInfo("com.xiaomi.gamecenter.sdk.service", 64).versionCode;
          localObject1 = String.valueOf(i);
        }
      }
      Object localObject2;
      LoginProto.CheckSdkVersionRsp localCheckSdkVersionRsp;
      label130:
      label215:
      return;
    }
    catch (Exception localException1)
    {
      try
      {
        while (SystemConfig.e(this.a))
        {
          localObject1 = MessageFactory.a(this.a, (String)localObject1, new MiAppEntry(MiCommplatform.appInfo));
          if (localObject1 == null) {
            break label215;
          }
          ReporterUtils.getInstance().xmsdkReport(2207);
          if (2003 == ((LoginProto.CheckSdkVersionRsp)localObject1).getRetCode()) {
            break label130;
          }
          MiCommplatform.getConfigFromServer();
          MiCommplatform.miLogin(null);
          return;
          localException1 = localException1;
          localException1.printStackTrace();
          localObject2 = localObject3;
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          localException2.printStackTrace();
          localCheckSdkVersionRsp = null;
        }
        if (b.c(this.a))
        {
          localObject3 = new Intent("android.intent.action.VIEW", Uri.parse("http://app.xiaomi.com/details?id=com.xiaomi.gamecenter.sdk.service&back=true&ref=gamesdkjar&startDownload=true"));
          ((Intent)localObject3).addFlags(268435456);
          this.a.startActivity((Intent)localObject3);
        }
        for (;;)
        {
          localObject3 = new Message();
          ((Message)localObject3).what = 7;
          ((Message)localObject3).obj = new DownloadDialogInfo(localCheckSdkVersionRsp);
          MiCommplatform.sDownloadHandler.sendMessageDelayed((Message)localObject3, 1000L);
          return;
          DownloadFileUtils.a(true);
        }
        ReporterUtils.getInstance().xmsdkReport(2208);
        MiCommplatform.getConfigFromServer();
        MiCommplatform.miLogin(null);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */