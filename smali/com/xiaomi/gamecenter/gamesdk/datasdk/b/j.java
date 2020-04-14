package com.xiaomi.gamecenter.gamesdk.datasdk.b;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public class j
{
  private static j a = null;
  private SharedPreferences b = null;
  private SharedPreferences.Editor c = null;
  
  public static String a()
  {
    return b().getString("SessionId", "");
  }
  
  public static void a(String paramString)
  {
    SharedPreferences.Editor localEditor2 = a.a().c;
    SharedPreferences.Editor localEditor1 = localEditor2;
    if (localEditor2 == null) {
      localEditor1 = b().edit();
    }
    localEditor1.putString("SessionId", paramString);
    localEditor1.commit();
  }
  
  private static SharedPreferences b()
  {
    SharedPreferences localSharedPreferences2 = a.a().b;
    SharedPreferences localSharedPreferences1 = localSharedPreferences2;
    if (localSharedPreferences2 == null) {
      localSharedPreferences1 = c.a().getSharedPreferences("SessionConfig", 0);
    }
    return localSharedPreferences1;
  }
  
  private static final class a
  {
    private static j a = new j();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */