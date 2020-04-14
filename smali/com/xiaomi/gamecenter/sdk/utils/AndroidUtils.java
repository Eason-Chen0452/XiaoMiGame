package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class AndroidUtils
{
  private static PackageInfo a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  public static String a(Context paramContext)
  {
    paramContext = a(paramContext, paramContext.getPackageName());
    if (paramContext != null) {
      return paramContext.versionName;
    }
    return null;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\AndroidUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */