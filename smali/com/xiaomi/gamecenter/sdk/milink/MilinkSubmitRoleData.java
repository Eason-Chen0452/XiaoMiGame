package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.RoleData;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.entry.MiAppInfo;
import org.xiaomi.gamecenter.milink.msg.GameDataProto.RoleDataReq;
import org.xiaomi.gamecenter.milink.msg.GameDataProto.RoleDataReq.Builder;
import org.xiaomi.gamecenter.milink.msg.GameDataProto.RoleDataRsp;

public class MilinkSubmitRoleData
  extends MilinkBaseRequest
{
  public MilinkSubmitRoleData(Context paramContext, RoleData paramRoleData, MiAppInfo paramMiAppInfo, String paramString1, String paramString2)
  {
    super(paramContext, "gamesdk.roledata.uploadroledata", new MiAppEntry(paramMiAppInfo));
    paramContext = GameDataProto.RoleDataReq.newBuilder();
    if (!TextUtils.isEmpty(paramRoleData.getRoleId())) {
      paramContext.setRoleId(paramRoleData.getRoleId());
    }
    if (!TextUtils.isEmpty(paramRoleData.getRoleName())) {
      paramContext.setRoleName(paramRoleData.getRoleName());
    }
    if (!TextUtils.isEmpty(paramRoleData.getServerId())) {
      paramContext.setServerId(paramRoleData.getServerId());
    }
    if (!TextUtils.isEmpty(paramRoleData.getServerName())) {
      paramContext.setServerName(paramRoleData.getServerName());
    }
    if (!TextUtils.isEmpty(paramRoleData.getZoneId())) {
      paramContext.setZoneId(paramRoleData.getZoneId());
    }
    if (!TextUtils.isEmpty(paramRoleData.getZoneName())) {
      paramContext.setZoneName(paramRoleData.getZoneName());
    }
    paramContext.setLevel(paramRoleData.getLevel());
    paramContext.setDevAppId(paramMiAppInfo.getAppId());
    if (!TextUtils.isEmpty(paramString1)) {
      paramContext.setOpenId(Long.parseLong(paramString1));
    }
    if (!TextUtils.isEmpty(paramString2)) {
      paramContext.setFuid(Long.parseLong(paramString2));
    }
    this.a = paramContext.build();
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = GameDataProto.RoleDataRsp.parseFrom(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.getRetCode();
    }
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkSubmitRoleData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */