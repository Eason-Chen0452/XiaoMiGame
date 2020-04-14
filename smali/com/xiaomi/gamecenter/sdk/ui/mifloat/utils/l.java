package com.xiaomi.gamecenter.sdk.ui.mifloat.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import cn.com.wali.basetool.log.Logger;
import com.xiaomi.gamecenter.sdk.ui.mifloat.menu.MiFloatMenuInfo;
import org.json.JSONObject;

public final class l
{
  public static MiFloatMenuInfo a(String paramString)
  {
    paramString = "mifloat_menu_" + paramString;
    paramString = com.xiaomi.gamecenter.sdk.a.a().a(paramString);
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    try
    {
      paramString = new String(cn.com.wali.basetool.utils.a.a(paramString), "UTF-8");
      JSONObject localJSONObject = new JSONObject(paramString);
      Logger.a("MiGameSDK.MiFloatUtils", "Menu Info decode=" + paramString);
      paramString = MiFloatMenuInfo.a(localJSONObject);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public static MiFloatPosition a(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("misdk_float_", 0);
    int j = paramContext.getResources().getConfiguration().orientation;
    int i = localSharedPreferences.getInt("x_" + j, 0);
    j = localSharedPreferences.getInt("y_" + j, 0);
    paramContext = new MiFloatPosition();
    paramContext.a(i);
    paramContext.b(j);
    Logger.a("MiGameSDK.MiFloatUtils", "loadPosition " + paramContext);
    return paramContext;
  }
  
  public static void b(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("misdk_float_", 0).edit();
    paramContext.remove("hide_mifloat");
    paramContext.commit();
  }
  
  public static boolean c(Context paramContext)
  {
    return paramContext.getSharedPreferences("misdk_float_", 0).getBoolean("hide_mifloat", false);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\mifloat\utils\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */