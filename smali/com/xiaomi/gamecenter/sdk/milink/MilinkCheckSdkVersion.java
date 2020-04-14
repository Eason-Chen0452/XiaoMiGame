package com.xiaomi.gamecenter.sdk.milink;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.wali.gamecenter.report.utils.ZSIMInfo;
import com.xiaomi.gamecenter.sdk.MiCommplatform;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.ChannelPreference;
import com.xiaomi.gamecenter.sdk.utils.InternetUtil;
import com.xiaomi.gamecenter.sdk.utils.OSUtils;
import com.xiaomi.gamecenter.sdk.utils.OSUtils.ROM;
import com.xiaomi.gamecenter.sdk.utils.b;
import com.xiaomi.gamecenter.sdk.utils.j;
import java.util.Locale;
import java.util.TimeZone;
import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionReq;
import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionReq.Builder;
import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionRsp;

public class MilinkCheckSdkVersion
  extends MilinkBaseRequest
{
  public MilinkCheckSdkVersion(Context paramContext, String paramString, MiAppEntry paramMiAppEntry)
  {
    super(paramContext, "gamesdk.config.checksdkversion", paramMiAppEntry);
    LoginProto.CheckSdkVersionReq.Builder localBuilder = LoginProto.CheckSdkVersionReq.newBuilder();
    localBuilder.setDevAppId(Long.valueOf(paramMiAppEntry.getNewAppId()).longValue());
    localBuilder.setJarSdkVersion("SDK_MI_SP_3.1.2");
    localBuilder.setServiceVersion(paramString);
    try
    {
      localBuilder.setImei(b.j);
      localBuilder.setUa(j.a());
    }
    catch (Exception paramString)
    {
      try
      {
        localBuilder.setGamePackageName(paramContext.getPackageName());
        localBuilder.setAccess(InternetUtil.a(paramContext));
      }
      catch (Exception paramString)
      {
        try
        {
          paramString = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
          localBuilder.setGameVersionCode(paramString.versionCode);
          localBuilder.setGameVersionName(paramString.versionName);
        }
        catch (Exception paramString)
        {
          try
          {
            localBuilder.setImsi(ZSIMInfo.getIMSI(paramContext));
            localBuilder.setMac(ZSIMInfo.getMacAddressNew(paramContext));
            localBuilder.setCarrier(ZSIMInfo.getSIMOperatorEnName(paramContext));
          }
          catch (Exception paramString)
          {
            try
            {
              localBuilder.setTimezone(TimeZone.getDefault().getDisplayName(false, 0));
              localBuilder.setCountry(paramContext.getResources().getConfiguration().locale.getCountry());
            }
            catch (Exception paramString)
            {
              try
              {
                paramString = new DisplayMetrics();
                if (MiCommplatform.sLoginActivity != null)
                {
                  MiCommplatform.sLoginActivity.getWindowManager().getDefaultDisplay().getMetrics(paramString);
                  localBuilder.setResolution(paramString.widthPixels + "*" + paramString.heightPixels);
                }
                localBuilder.setCurrentChannel(b.f(paramContext));
                localBuilder.setImeiMd5(b.m);
                localBuilder.setFirstChannel(ChannelPreference.a(paramContext, "channel"));
              }
              catch (Exception paramString)
              {
                try
                {
                  for (;;)
                  {
                    paramContext = OSUtils.a();
                    localBuilder.setOs(paramContext.name() + "|" + paramContext.getBaseVersion() + "|" + paramContext.getVersion());
                    this.a = localBuilder.build();
                    return;
                    paramString = paramString;
                    paramString.printStackTrace();
                    continue;
                    paramString = paramString;
                    paramString.printStackTrace();
                    continue;
                    paramString = paramString;
                    paramString.printStackTrace();
                    continue;
                    paramString = paramString;
                    paramString.printStackTrace();
                    continue;
                    paramString = paramString;
                    paramString.printStackTrace();
                  }
                  paramString = paramString;
                  paramString.printStackTrace();
                }
                catch (Exception paramContext)
                {
                  for (;;)
                  {
                    paramContext.printStackTrace();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = LoginProto.CheckSdkVersionRsp.parseFrom(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.getRetCode();
    }
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkCheckSdkVersion.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */