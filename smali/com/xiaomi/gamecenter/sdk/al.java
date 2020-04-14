package com.xiaomi.gamecenter.sdk;

import android.content.Context;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.protocol.MessageFactory;
import com.xiaomi.gamecenter.sdk.ui.mifloat.utils.k;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SdkInitRsp;

final class al
  implements Runnable
{
  al(MiCommplatform paramMiCommplatform, MiAppInfo paramMiAppInfo, Context paramContext) {}
  
  public final void run()
  {
    try
    {
      Object localObject = new MiAppEntry(this.a);
      localObject = MessageFactory.a(this.b, (MiAppEntry)localObject);
      Logger.a("MiGameSDK.MiCommplatform", "reqSdkInit rsp : " + localObject);
      if (localObject == null) {
        return;
      }
      if (((LoginProto.SdkInitRsp)localObject).getRetCode() == 200)
      {
        localObject = ((LoginProto.SdkInitRsp)localObject).getDispalyToolBar();
        k.b().b((String)localObject);
        return;
      }
    }
    catch (Exception localException)
    {
      Logger.a("MiGameSDK.MiCommplatform", "reqSdkInit error", localException);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */