package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.ChannelPreference;
import com.xiaomi.gamecenter.sdk.utils.b;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SdkInitReq;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SdkInitReq.Builder;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SdkInitRsp;

public class MilinkSdkInitReq
  extends MilinkBaseRequest
{
  public MilinkSdkInitReq(Context paramContext, MiAppEntry paramMiAppEntry)
  {
    super(paramContext, "gamesdk.account.init", paramMiAppEntry);
    LoginProto.SdkInitReq.Builder localBuilder = LoginProto.SdkInitReq.newBuilder();
    localBuilder.setDevAppId(paramMiAppEntry.getAppId());
    localBuilder.setPackageName(paramContext.getPackageName());
    localBuilder.setAppKey(paramMiAppEntry.getAppKey());
    localBuilder.setSdkVersion("SDK_MI_SP_3.1.2");
    String str2 = b.j;
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = "";
    }
    localBuilder.setImei(str1);
    localBuilder.setUa(b.n);
    localBuilder.setChannel(b.f(paramContext));
    localBuilder.setCurrentChannel(b.f(paramContext));
    localBuilder.setImeiMd5(b.m);
    localBuilder.setFirstChannel(ChannelPreference.a(paramContext, paramMiAppEntry.getAppId()));
    this.a = localBuilder.build();
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = LoginProto.SdkInitRsp.parseFrom(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.getRetCode();
    }
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkSdkInitReq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */