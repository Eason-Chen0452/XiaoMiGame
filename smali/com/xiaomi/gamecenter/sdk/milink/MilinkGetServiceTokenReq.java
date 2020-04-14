package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.ChannelPreference;
import com.xiaomi.gamecenter.sdk.utils.b;
import com.xiaomi.gamecenter.sdk.utils.j;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetServiceTokenReq;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetServiceTokenReq.Builder;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetServiceTokenRsp;

public class MilinkGetServiceTokenReq
  extends MilinkBaseRequest
{
  public MilinkGetServiceTokenReq(Context paramContext, long paramLong, String paramString, MiAppEntry paramMiAppEntry)
  {
    super(paramContext, "gamesdk.account.getservicetoken", paramMiAppEntry);
    LoginProto.GetServiceTokenReq.Builder localBuilder = LoginProto.GetServiceTokenReq.newBuilder();
    localBuilder.setFuid(paramLong);
    localBuilder.setDevAppId(paramMiAppEntry.getAppId());
    localBuilder.setToke(paramString);
    localBuilder.setSdkVersion("SDK_MI_SP_3.1.2");
    String str = b.j;
    paramString = str;
    if (TextUtils.isEmpty(str)) {
      paramString = "";
    }
    localBuilder.setImei(paramString);
    localBuilder.setUa(j.b(paramContext));
    localBuilder.setChannel(b.f(paramContext));
    localBuilder.setCurrentChannel(b.f(paramContext));
    localBuilder.setImeiMd5(b.m);
    localBuilder.setFirstChannel(ChannelPreference.a(paramContext, paramMiAppEntry.getAppId()));
    this.a = localBuilder.build();
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = LoginProto.GetServiceTokenRsp.parseFrom(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.getRetCode();
    }
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkGetServiceTokenReq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */