package com.xiaomi.game.plugin.stat.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.game.plugin.stat.c.a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;

class c
{
  static String a()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(a("ro.product.manufacturer"));
    localStringBuffer.append("|");
    localStringBuffer.append(Build.MODEL);
    localStringBuffer.append("|");
    localStringBuffer.append(a("ro.build.version.release"));
    localStringBuffer.append("|");
    localStringBuffer.append(a("ro.build.display.id"));
    localStringBuffer.append("|");
    localStringBuffer.append(a("ro.build.version.sdk"));
    localStringBuffer.append("|");
    localStringBuffer.append(a("ro.product.device"));
    return localStringBuffer.toString();
  }
  
  static String a(Context paramContext)
  {
    String str = "";
    Object localObject = str;
    try
    {
      if (b())
      {
        localObject = str;
        paramContext = b(paramContext);
        localObject = paramContext;
        if (!TextUtils.isEmpty(paramContext))
        {
          localObject = paramContext;
          return b(paramContext);
        }
      }
      else
      {
        localObject = str;
        paramContext = c(paramContext);
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
      return (String)localObject;
    }
    return "";
  }
  
  static String a(String paramString)
  {
    try
    {
      paramString = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { paramString });
      return paramString;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }
  
  static void a(HashMap<String, String> paramHashMap, String paramString1, String paramString2)
  {
    if (paramHashMap == null) {}
    while ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {
      return;
    }
    paramString1 = a.a((paramString1 + "_" + paramString2).getBytes());
    int i = a.a(20);
    int j = a.a(paramString1.length() - i);
    paramString1 = paramString1.substring(i, i + j);
    paramString2 = i + "." + j;
    paramHashMap.put("p1", paramString1);
    paramHashMap.put("p2", paramString2);
  }
  
  static String b(Context paramContext)
  {
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    if (paramContext != null)
    {
      paramContext = paramContext.getConnectionInfo();
      if (paramContext != null)
      {
        paramContext = paramContext.getMacAddress();
        if (paramContext != null) {
          return paramContext;
        }
      }
    }
    return null;
  }
  
  static String b(String paramString)
  {
    try
    {
      paramString = Base64.encodeToString(MessageDigest.getInstance("SHA1").digest(paramString.getBytes()), 8).substring(0, 16);
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
      return "";
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
      }
    }
  }
  
  static boolean b()
  {
    try
    {
      Class localClass = Class.forName("miui.os.Build");
      boolean bool = ((Boolean)localClass.getField("IS_TABLET").get(localClass)).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  static String c(Context paramContext)
  {
    return b(d(paramContext));
  }
  
  static String d(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
  }
  
  static String e(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getApplicationInfo().packageName, 0).versionCode;
      return String.valueOf(i);
    }
    catch (Exception paramContext) {}
    return "unknown";
  }
  
  static String f(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */