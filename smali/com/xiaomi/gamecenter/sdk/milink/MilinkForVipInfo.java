package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import cn.com.wali.basetool.log.Logger;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import org.xiaomi.gamecenter.milink.msg.VipProtos.AppType;
import org.xiaomi.gamecenter.milink.msg.VipProtos.GetUserLevelInfoReq;
import org.xiaomi.gamecenter.milink.msg.VipProtos.GetUserLevelInfoReq.Builder;
import org.xiaomi.gamecenter.milink.msg.VipProtos.GetUserLevelInfoRsp;

public class MilinkForVipInfo
  extends MilinkBaseRequest
{
  public MilinkForVipInfo(Context paramContext, long paramLong, String paramString, MiAppEntry paramMiAppEntry)
  {
    super(paramContext, "migame.vip.sdk.getuserlevelinfo", paramMiAppEntry);
    paramContext = VipProtos.GetUserLevelInfoReq.newBuilder();
    paramContext.setFuid(paramLong);
    paramContext.setAppType(VipProtos.AppType.SDK);
    paramContext.setToken(paramString);
    this.a = paramContext.build();
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = VipProtos.GetUserLevelInfoRsp.parseFrom(paramArrayOfByte);
    Logger.d("vipRsp retCode : " + paramArrayOfByte.getRetCode());
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkForVipInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */