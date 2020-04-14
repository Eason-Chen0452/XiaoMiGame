package com.xiaomi.hy.dj.f;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import com.xiaomi.hy.dj.b.a;

public class c
{
  public static String a(Context paramContext)
  {
    String str = "";
    Account[] arrayOfAccount = AccountManager.get(paramContext).getAccountsByType("com.xiaomi");
    paramContext = str;
    if (arrayOfAccount != null)
    {
      paramContext = str;
      if (arrayOfAccount.length > 0)
      {
        int j = arrayOfAccount.length;
        int i = 0;
        while (i < j)
        {
          paramContext = arrayOfAccount[i];
          a.a("account=" + paramContext.name);
          i += 1;
        }
        paramContext = arrayOfAccount[0].name;
      }
    }
    return paramContext;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */