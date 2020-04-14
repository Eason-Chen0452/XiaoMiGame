package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import org.xiaomi.gamecenter.milink.msg.AccountProto.LoginReq;
import org.xiaomi.gamecenter.milink.msg.AccountProto.LoginReq.Builder;
import org.xiaomi.gamecenter.milink.msg.AccountProto.LoginRsp;

public class MilinkLoginForThirdAccount
  extends MilinkBaseRequest
{
  public MilinkLoginForThirdAccount(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, boolean paramBoolean, MiAppEntry paramMiAppEntry)
  {
    super(paramContext, "misdk.account.login", paramMiAppEntry);
    paramMiAppEntry = AccountProto.LoginReq.newBuilder();
    paramMiAppEntry.setAccountType(paramInt);
    if (!TextUtils.isEmpty(paramString1)) {
      paramMiAppEntry.setCode(paramString1);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      paramMiAppEntry.setOpenid(paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      paramMiAppEntry.setAccessToken(paramString3);
    }
    paramMiAppEntry.setIsSaveSt(paramBoolean);
    paramMiAppEntry.setAppid(a(paramContext, "MiLinkGroupAppID"));
    this.a = paramMiAppEntry.build();
  }
  
  private static int a(Context paramContext, String paramString)
  {
    try
    {
      String str = paramContext.getPackageName();
      int i = paramContext.getPackageManager().getApplicationInfo(str, 128).metaData.getInt(paramString);
      return i;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public final GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException
  {
    paramArrayOfByte = AccountProto.LoginRsp.parseFrom(paramArrayOfByte);
    if (paramArrayOfByte != null) {
      this.e = paramArrayOfByte.getRetCode();
    }
    return paramArrayOfByte;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkLoginForThirdAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */