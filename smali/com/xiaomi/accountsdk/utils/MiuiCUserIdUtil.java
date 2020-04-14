package com.xiaomi.accountsdk.utils;

import android.accounts.Account;
import android.content.Context;

public final class MiuiCUserIdUtil
{
  private final Context a;
  private final Account b;
  
  public MiuiCUserIdUtil(Context paramContext, Account paramAccount)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context == null");
    }
    this.a = paramContext.getApplicationContext();
    this.b = paramAccount;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\utils\MiuiCUserIdUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */