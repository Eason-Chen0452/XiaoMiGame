package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.b;
import com.xiaomi.gamecenter.sdk.utils.j;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetSdkConfigReq;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetSdkConfigReq.Builder;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetSdkConfigRsp;

public class MilinkGetGameConfig
  extends MilinkBaseRequest
{
  public MilinkGetGameConfig(Context paramContext, MiAppEntry paramMiAppEntry)
  {
    super(paramContext, "gamesdk.config.getappconfig", paramMiAppEntry);
    LoginProto.GetSdkConfigReq.Builder localBuilder = LoginProto.GetSdkConfigReq.newBuilder();
    localBuilder.setDevAppId(String.valueOf(paramMiAppEntry.getNewAppId()));
    if (TextUtils.isEmpty(b.o)) {}
    for (paramMiAppEntry = "";; paramMiAppEntry = b.o)
    {
      localBuilder.setImsi(paramMiAppEntry);
      localBuilder.setSdkVersion("SDK_MI_SP_3.1.2");
      String str = b.j;
      paramMiAppEntry = str;
      if (TextUtils.isEmpty(str)) {
        paramMiAppEntry = "";
      }
      localBuilder.setImei(paramMiAppEntry);
      localBuilder.setUa(j.a());
      localBuilder.setChannel(b.f(paramContext));
      this.a = localBuilder.build();
      return;
    }
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = LoginProto.GetSdkConfigRsp.parseFrom(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.getRetCode();
    }
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkGetGameConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */