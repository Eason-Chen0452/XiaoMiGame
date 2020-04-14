package com.xiaomi.gamecenter.gamesdk.datasdk.b;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.lang.reflect.Method;

public final class k
{
  private static String a;
  
  public static String a()
  {
    StringBuffer localStringBuffer1;
    StringBuffer localStringBuffer2;
    if (a == null)
    {
      localStringBuffer1 = new StringBuffer();
      localStringBuffer1.append(a("ro.product.manufacturer"));
      localStringBuffer1.append("|");
      localStringBuffer1.append(a("ro.product.model"));
      localStringBuffer1.append("|");
      localStringBuffer2 = new StringBuffer();
      localStringBuffer2.append(a("ro.build.version.release"));
      localStringBuffer2.append("_");
      if (!b()) {
        break label172;
      }
      localStringBuffer2.append("alpha");
    }
    for (;;)
    {
      localStringBuffer2.append("_");
      localStringBuffer2.append(Build.VERSION.INCREMENTAL);
      localStringBuffer1.append(localStringBuffer2.toString());
      localStringBuffer1.append("|");
      localStringBuffer1.append(a("ro.build.display.id"));
      localStringBuffer1.append("|");
      localStringBuffer1.append(a("ro.build.version.sdk"));
      localStringBuffer1.append("|");
      localStringBuffer1.append(a("ro.product.device"));
      a = localStringBuffer1.toString();
      return a;
      label172:
      if (c())
      {
        localStringBuffer2.append("develop");
      }
      else
      {
        if (("user".equals(Build.TYPE)) && (!c())) {}
        for (int i = 1;; i = 0)
        {
          if (i == 0) {
            break label226;
          }
          localStringBuffer2.append("stable");
          break;
        }
        label226:
        localStringBuffer2.append("na");
      }
    }
  }
  
  private static String a(String paramString)
  {
    try
    {
      paramString = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { paramString });
      if ((paramString != null) && (TextUtils.getTrimmedLength(paramString) > 0)) {
        return paramString;
      }
    }
    catch (Throwable paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = "";
      }
    }
    return "empty";
  }
  
  private static boolean b()
  {
    try
    {
      boolean bool = a("ro.product.mod_device").endsWith("_alpha");
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  private static boolean c()
  {
    try
    {
      String str = Build.VERSION.INCREMENTAL;
      if (!TextUtils.isEmpty(str))
      {
        boolean bool = str.matches("\\d+.\\d+.\\d+(-internal)?");
        if (bool) {
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */