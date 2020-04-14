package com.xiaomi.accountsdk.account;

import android.content.Context;
import android.content.SharedPreferences;

public class RegionConfig
{
  private Context a;
  private SharedPreferences b;
  
  public RegionConfig(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    Context localContext = this.a;
    if (XMPassport.a) {}
    for (paramContext = "region_config_staging";; paramContext = "region_config")
    {
      this.b = localContext.getSharedPreferences(paramContext, 0);
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\RegionConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */