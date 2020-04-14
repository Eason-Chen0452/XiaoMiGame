package com.xiaomi.passport;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.accountsdk.account.a;

public class PassportCAExternalImpl
  implements a
{
  private final Context a;
  
  public PassportCAExternalImpl(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context can't be null");
    }
    this.a = paramContext.getApplicationContext();
  }
  
  public final long a()
  {
    return this.a.getSharedPreferences("passport_ca", 0).getLong("next_enabled_time", 0L);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\PassportCAExternalImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */