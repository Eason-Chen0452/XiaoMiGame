package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.ChannelPreference;
import com.xiaomi.gamecenter.sdk.utils.b;
import com.xiaomi.gamecenter.sdk.utils.j;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetLoginAppAccountReq;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetLoginAppAccountReq.Builder;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetLoginAppAccountRsp;

public class MilinkGetLoginAppAccount
  extends MilinkBaseRequest
{
  public MilinkGetLoginAppAccount(Context paramContext, long paramLong, String paramString, MiAppEntry paramMiAppEntry)
  {
    super(paramContext, "gamesdk.account.getloginappaccount.v2", paramMiAppEntry);
    LoginProto.GetLoginAppAccountReq.Builder localBuilder = LoginProto.GetLoginAppAccountReq.newBuilder();
    localBuilder.setFuid(paramLong);
    localBuilder.setDevAppId(String.valueOf(paramMiAppEntry.getNewAppId()));
    localBuilder.setToke(paramString);
    localBuilder.setSdkVersion("SDK_MI_SP_3.1.2");
    paramMiAppEntry = b.j;
    paramString = paramMiAppEntry;
    if (TextUtils.isEmpty(paramMiAppEntry)) {
      paramString = "";
    }
    localBuilder.setImei(paramString);
    localBuilder.setUa(j.a());
    localBuilder.setChannel(b.f(paramContext));
    localBuilder.setCurrentChannel(b.f(paramContext));
    localBuilder.setImeiMd5(b.m);
    localBuilder.setFirstChannel(ChannelPreference.a(paramContext, "channel"));
    this.a = localBuilder.build();
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = LoginProto.GetLoginAppAccountRsp.parseFrom(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.getRetCode();
    }
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkGetLoginAppAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */