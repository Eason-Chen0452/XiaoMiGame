package com.xiaomi.passport.utils;

import android.content.Context;
import android.content.SharedPreferences;

public class SharedPreferencesUtil
{
  private final SharedPreferences a;
  
  public SharedPreferencesUtil(Context paramContext, String paramString)
  {
    this.a = paramContext.getSharedPreferences(paramString, 0);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\utils\SharedPreferencesUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */