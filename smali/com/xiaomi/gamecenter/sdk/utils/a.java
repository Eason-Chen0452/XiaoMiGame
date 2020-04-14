package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;

final class a
  implements Runnable
{
  a(String paramString1, Context paramContext, String paramString2) {}
  
  public final void run()
  {
    if ("channel".equals(this.a))
    {
      if ((TextUtils.isEmpty(ChannelPreference.a(this.b, this.a))) && (!TextUtils.isEmpty(this.c)) && (("meng_100_1_android".equals(this.c)) || (!this.c.startsWith("meng_100_"))))
      {
        localEditor = ChannelPreference.a(this.b).edit();
        localEditor.putString(this.a, this.c);
        localEditor.commit();
      }
      return;
    }
    SharedPreferences.Editor localEditor = ChannelPreference.a(this.b).edit();
    localEditor.putString(this.a, this.c);
    localEditor.commit();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */