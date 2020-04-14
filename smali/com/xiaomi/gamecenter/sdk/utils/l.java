package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

final class l
  implements Runnable
{
  l(Context paramContext, String paramString1, String paramString2) {}
  
  public final void run()
  {
    SharedPreferences.Editor localEditor = SdkPreferenceUtils.a(this.a).edit();
    localEditor.putString(this.b, this.c);
    localEditor.commit();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */