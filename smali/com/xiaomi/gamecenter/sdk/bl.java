package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.protocol.MessageFactory;
import org.xiaomi.gamecenter.milink.msg.SplashScreenProto.GetSplashScreenRsp;
import org.xiaomi.gamecenter.milink.msg.SplashScreenProto.SplashScreen;

final class bl
  implements Runnable
{
  bl(bh parambh, Context paramContext, MiAppInfo paramMiAppInfo) {}
  
  public final void run()
  {
    try
    {
      bh.a(this.a);
      long l = System.currentTimeMillis();
      Object localObject = MessageFactory.a(this.a, this.b);
      Logger.a("MiGameSDK.SplashScreenManager", "GetSplashScreenRsp rsp " + localObject);
      if (localObject == null) {
        return;
      }
      if (((SplashScreenProto.GetSplashScreenRsp)localObject).getRetCode() == 0)
      {
        localObject = ((SplashScreenProto.GetSplashScreenRsp)localObject).getSplashScreen();
        if (localObject != null) {
          bh.a(this.a, (SplashScreenProto.SplashScreen)localObject);
        }
      }
      else
      {
        Logger.b("MiGameSDK.SplashScreenManager", "request splash data " + (System.currentTimeMillis() - l) + "ms");
        return;
      }
    }
    catch (Exception localException)
    {
      Logger.a("MiGameSDK.SplashScreenManager", "getSplashScreen error", localException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\bl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */