package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.concurrent.ExecutorService;

public class SdkPreferenceUtils
{
  public static String a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return "";
    }
    return paramContext.getSharedPreferences("pref_sdk", 4).getString(paramString, "");
  }
  
  public static void a(Context paramContext, String paramString, long paramLong)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return;
    }
    HyUtils.a().submit(new m(paramContext, paramString, paramLong));
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString1))) {
      return;
    }
    HyUtils.a().submit(new l(paramContext, paramString1, paramString2));
  }
  
  public static long b(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return 0L;
    }
    return paramContext.getSharedPreferences("pref_sdk", 4).getLong(paramString, 0L);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\SdkPreferenceUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */