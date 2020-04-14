package com.xiaomi.gamecenter.sdk.protocol;

import android.content.Context;
import com.xiaomi.gamecenter.sdk.RoleData;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import com.xiaomi.gamecenter.sdk.milink.MilinkCheckSdkVersion;
import com.xiaomi.gamecenter.sdk.milink.MilinkGetLoginAppAccount;
import com.xiaomi.gamecenter.sdk.milink.MilinkGetServiceTokenReq;
import com.xiaomi.gamecenter.sdk.milink.MilinkGetSplashScreen;
import com.xiaomi.gamecenter.sdk.milink.MilinkSdkInitReq;
import com.xiaomi.gamecenter.sdk.milink.MilinkSetUserInfoToGameCenter;
import com.xiaomi.gamecenter.sdk.milink.MilinkSubmitRoleData;
import org.xiaomi.gamecenter.milink.msg.GameDataProto.RoleDataRsp;
import org.xiaomi.gamecenter.milink.msg.LoginProto.CheckSdkVersionRsp;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetLoginAppAccountRsp;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetServiceTokenRsp;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SdkInitRsp;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SetUserInfoToGameCenterRsp;
import org.xiaomi.gamecenter.milink.msg.SplashScreenProto.GetSplashScreenRsp;

public final class MessageFactory
{
  public static GameLastLoginInfo a(Context paramContext, long paramLong, String paramString, MiAppEntry paramMiAppEntry)
  {
    paramContext = (LoginProto.GetLoginAppAccountRsp)new MilinkGetLoginAppAccount(paramContext, paramLong, paramString, paramMiAppEntry).a();
    if (paramContext == null) {
      return null;
    }
    return new GameLastLoginInfo(paramContext);
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2, int paramInt, String paramString3)
  {
    return new MessageRequestGetReward(paramContext, paramString1, paramString2, paramInt, paramString3).a();
  }
  
  public static GameDataProto.RoleDataRsp a(Context paramContext, RoleData paramRoleData, MiAppInfo paramMiAppInfo, String paramString1, String paramString2)
  {
    return (GameDataProto.RoleDataRsp)new MilinkSubmitRoleData(paramContext, paramRoleData, paramMiAppInfo, paramString1, paramString2).a();
  }
  
  public static LoginProto.CheckSdkVersionRsp a(Context paramContext, String paramString, MiAppEntry paramMiAppEntry)
  {
    return (LoginProto.CheckSdkVersionRsp)new MilinkCheckSdkVersion(paramContext, paramString, paramMiAppEntry).a();
  }
  
  public static LoginProto.SdkInitRsp a(Context paramContext, MiAppEntry paramMiAppEntry)
  {
    paramContext = (LoginProto.SdkInitRsp)new MilinkSdkInitReq(paramContext, paramMiAppEntry).a();
    if (paramContext != null) {
      return paramContext;
    }
    return null;
  }
  
  public static LoginProto.SetUserInfoToGameCenterRsp a(Context paramContext, long paramLong, String paramString1, String paramString2, int paramInt, String paramString3, MiAppEntry paramMiAppEntry)
  {
    return (LoginProto.SetUserInfoToGameCenterRsp)new MilinkSetUserInfoToGameCenter(paramContext, paramLong, paramString1, paramString2, paramInt, paramString3, paramMiAppEntry).a();
  }
  
  public static SplashScreenProto.GetSplashScreenRsp a(Context paramContext, MiAppInfo paramMiAppInfo)
  {
    return (SplashScreenProto.GetSplashScreenRsp)new MilinkGetSplashScreen(paramContext, paramMiAppInfo).a();
  }
  
  public static LoginProto.GetServiceTokenRsp b(Context paramContext, long paramLong, String paramString, MiAppEntry paramMiAppEntry)
  {
    paramContext = (LoginProto.GetServiceTokenRsp)new MilinkGetServiceTokenReq(paramContext, paramLong, paramString, paramMiAppEntry).a();
    if (paramContext != null) {
      return paramContext;
    }
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\MessageFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */