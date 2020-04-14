package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.utils.b;
import org.xiaomi.gamecenter.milink.msg.SplashScreenProto.GetSplashScreenReq;
import org.xiaomi.gamecenter.milink.msg.SplashScreenProto.GetSplashScreenReq.Builder;
import org.xiaomi.gamecenter.milink.msg.SplashScreenProto.GetSplashScreenRsp;

public class MilinkGetSplashScreen
  extends MilinkBaseRequest
{
  public MilinkGetSplashScreen(Context paramContext, MiAppInfo paramMiAppInfo)
  {
    super(paramContext, "gamesdk.config.getsplashscreen", new MiAppEntry(paramMiAppInfo));
    SplashScreenProto.GetSplashScreenReq.Builder localBuilder = SplashScreenProto.GetSplashScreenReq.newBuilder();
    localBuilder.setBusinessId(1);
    localBuilder.setChannel(b.f(paramContext));
    long l = 0L;
    if (!TextUtils.isEmpty(paramMiAppInfo.getAppId())) {
      l = Long.parseLong(paramMiAppInfo.getAppId());
    }
    localBuilder.setDevAppId(l);
    localBuilder.setDeviceNo(b.b(paramContext));
    localBuilder.setGamePackageName(paramContext.getPackageName());
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      localBuilder.setGameVersionCode(paramContext.versionCode);
      localBuilder.setGameVersionName(paramContext.versionName);
      localBuilder.setSdkType(2);
      localBuilder.setSdkVersion("SDK_MI_SP_3.1.2");
      localBuilder.setModel(Build.MODEL);
      localBuilder.setUa(b.n);
      this.a = localBuilder.build();
      return;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = SplashScreenProto.GetSplashScreenRsp.parseFrom(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.getRetCode();
    }
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkGetSplashScreen.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */