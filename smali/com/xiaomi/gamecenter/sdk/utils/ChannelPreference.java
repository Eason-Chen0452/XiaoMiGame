package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.concurrent.ExecutorService;

public class ChannelPreference
{
  public static String a(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString))) {
      return "";
    }
    return paramContext.getSharedPreferences("pref_first_channel", 4).getString(paramString, "");
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if ((paramContext == null) || (TextUtils.isEmpty(paramString1))) {
      return;
    }
    HyUtils.a().submit(new a(paramString1, paramContext, paramString2));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\ChannelPreference.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */