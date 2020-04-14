package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.b;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SetUserInfoToGameCenterReq;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SetUserInfoToGameCenterReq.Builder;
import org.xiaomi.gamecenter.milink.msg.LoginProto.SetUserInfoToGameCenterRsp;

public class MilinkSetUserInfoToGameCenter
  extends MilinkBaseRequest
{
  public MilinkSetUserInfoToGameCenter(Context paramContext, long paramLong, String paramString1, String paramString2, int paramInt, String paramString3, MiAppEntry paramMiAppEntry)
  {
    super(paramContext, "gamesdk.account.setuserinfo", paramMiAppEntry);
    paramMiAppEntry = LoginProto.SetUserInfoToGameCenterReq.newBuilder();
    paramMiAppEntry.setFuid(paramLong);
    paramMiAppEntry.setToke(paramString1);
    paramMiAppEntry.setSex(paramInt);
    paramMiAppEntry.setNickname(paramString2);
    paramMiAppEntry.setAvatarUrl(paramString3);
    paramMiAppEntry.setAutoLogin(true);
    paramString1 = b.j;
    paramContext = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      paramContext = "";
    }
    paramMiAppEntry.setImei(paramContext);
    this.a = paramMiAppEntry.build();
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = LoginProto.SetUserInfoToGameCenterRsp.parseFrom(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.getRetCode();
    }
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkSetUserInfoToGameCenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */