package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import org.xiaomi.gamecenter.milink.msg.AccountProto.LoginRsp;

public final class AccountUtils
{
  public static boolean a = false;
  public static int b = -1;
  private static final String c = AccountUtils.class.getSimpleName();
  
  public static AccountProto.LoginRsp a(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, MiAppEntry paramMiAppEntry)
  {
    return (AccountProto.LoginRsp)new MilinkLoginForThirdAccount(paramContext, paramInt, paramString1, paramString2, paramString3, true, paramMiAppEntry).a();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\AccountUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */