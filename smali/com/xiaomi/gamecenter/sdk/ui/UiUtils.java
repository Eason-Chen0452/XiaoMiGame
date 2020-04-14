package com.xiaomi.gamecenter.sdk.ui;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;

public final class UiUtils
{
  private static Toast a;
  
  public static SchemeType a(String paramString)
  {
    if ((paramString.startsWith("migamecenter://")) || (paramString.startsWith("misubject://")) || (paramString.startsWith("misubjectlist://")) || (paramString.startsWith("migame://")) || (paramString.startsWith("mipackage://")) || (paramString.startsWith("miopen://")) || (paramString.startsWith("mirate://")) || (paramString.startsWith("miratelist://")) || (paramString.startsWith("migift://")) || (paramString.startsWith("migiftlist://")) || (paramString.startsWith("micategory://")) || (paramString.startsWith("mifeedback://")) || (paramString.startsWith("mistartgame://")) || (paramString.startsWith("migameinstall://"))) {
      return SchemeType.GAMECENTER;
    }
    if (paramString.startsWith("mibi://")) {
      return SchemeType.MIBICENTER;
    }
    if (paramString.startsWith("http")) {
      return SchemeType.HTTP;
    }
    if (paramString.startsWith("migamesdk://")) {
      return SchemeType.MIGAMESDK;
    }
    if (paramString.startsWith("miservicesdk://")) {
      return SchemeType.MISERVICESDK;
    }
    return SchemeType.UNKNOW;
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    try
    {
      a(paramContext, paramContext.getString(paramInt), 0);
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static void a(Context paramContext, String paramString, int paramInt)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      new Message();
      new Handler().post(new h(paramContext, paramString, paramInt));
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public static boolean a(Context paramContext)
  {
    try
    {
      paramContext.getPackageManager().getPackageInfo("com.xiaomi.gamecenter", 0);
      return true;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
  
  public static String b(Context paramContext)
  {
    return (String)paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo());
  }
  
  public static enum SchemeType
  {
    static
    {
      HTTP = new SchemeType("HTTP", 2);
      UNKNOW = new SchemeType("UNKNOW", 3);
    }
    
    private SchemeType() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\ui\UiUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */