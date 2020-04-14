package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import cn.com.wali.basetool.log.Logger;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import org.xiaomi.gamecenter.milink.msg.VipProtos.QueryVipUserReq;
import org.xiaomi.gamecenter.milink.msg.VipProtos.QueryVipUserReq.Builder;
import org.xiaomi.gamecenter.milink.msg.VipProtos.QueryVipUserRsp;

public class MilinkForMemInfo
  extends MilinkBaseRequest
{
  public MilinkForMemInfo(Context paramContext, long paramLong, String paramString, MiAppEntry paramMiAppEntry)
  {
    super(paramContext, "migc.vip.sdk.query.user", paramMiAppEntry);
    paramContext = VipProtos.QueryVipUserReq.newBuilder();
    paramContext.setFuid(paramLong);
    paramContext.setToken(paramString);
    this.a = paramContext.build();
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = VipProtos.QueryVipUserRsp.parseFrom(paramArrayOfByte);
    Logger.d("memRsp retCode : " + paramArrayOfByte.getRetCode());
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkForMemInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */