package com.xiaomi.gamecenter.gamesdk.datasdk.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class b
{
  public static String a;
  public static String b;
  public static int c;
  public static boolean d;
  public static int e;
  public static String f;
  public static boolean g;
  public static int h;
  public static String i;
  public static String j;
  public static String k;
  public static String l;
  public static String m;
  public static String n;
  public static String o;
  public static String p = "com.xiaomi.gamecenter.sdk.service";
  public static String q;
  public static String r;
  public static String s;
  public static String t;
  private static final String[] u = { "000000000000000" };
  private static final String[] v = { "02:00:00:00:00:00" };
  
  private static String a(String paramString)
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
  
  public static void a(Context paramContext)
  {
    int i1 = 0;
    try
    {
      a = b(paramContext);
      b = Build.VERSION.INCREMENTAL;
      c = Build.VERSION.SDK_INT;
      d = e(paramContext);
      e = d(paramContext);
      f = c(paramContext);
      try
      {
        if ((paramContext.getApplicationInfo().flags & 0x1) <= 0) {
          break label300;
        }
        bool = true;
        g = bool;
        h = paramContext.getApplicationContext().getResources().getDisplayMetrics().densityDpi;
        localObject = ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperator();
        if (("46000".equals(localObject)) || ("46002".equals(localObject)) || ("45412".equals(localObject))) {
          break label406;
        }
        if (!"46007".equals(localObject)) {
          break label305;
        }
      }
      catch (Throwable localThrowable2)
      {
        for (;;)
        {
          boolean bool;
          Object localObject;
          String str4;
          String str1;
          localThrowable2.printStackTrace();
          continue;
          i1 += 1;
          continue;
          String str2 = "";
          continue;
          str2 = g(paramContext);
          continue;
          str2 = h.a(str2.getBytes());
        }
      }
      o = (String)localObject;
    }
    catch (Throwable localThrowable1)
    {
      for (;;)
      {
        try
        {
          i = f(paramContext);
          if (a())
          {
            localObject = (WifiManager)paramContext.getSystemService("wifi");
            if (localObject == null) {
              break label401;
            }
            localObject = ((WifiManager)localObject).getConnectionInfo();
            if (localObject == null) {
              break label401;
            }
            str4 = ((WifiInfo)localObject).getMacAddress();
            localObject = str4;
            if (i1 < v.length)
            {
              if (TextUtils.equals(str4, v[i1])) {
                localObject = null;
              }
            }
            else
            {
              if (TextUtils.isEmpty((CharSequence)localObject)) {
                continue;
              }
              localObject = a((String)localObject);
              j = (String)localObject;
              k = g(paramContext);
              localObject = f(paramContext);
              if (!TextUtils.isEmpty((CharSequence)localObject)) {
                continue;
              }
              localObject = "";
              l = (String)localObject;
              m = k.a();
              n = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
            }
          }
        }
        catch (Throwable localThrowable3)
        {
          label300:
          label305:
          localThrowable3.printStackTrace();
          continue;
        }
        try
        {
          q = f.a(paramContext);
          r = f.b(paramContext);
          s = f.c(paramContext);
          t = f.c(paramContext);
          return;
        }
        catch (Throwable paramContext)
        {
          paramContext.printStackTrace();
          return;
        }
        localThrowable1 = localThrowable1;
        localThrowable1.printStackTrace();
        continue;
        bool = false;
        continue;
        label401:
        String str3;
        if ((!"46001".equals(localThrowable1)) && (!"46006".equals(localThrowable1)))
        {
          if ("46003".equals(localThrowable1))
          {
            str1 = "TELECOM";
          }
          else
          {
            str1 = "UNKNOW";
            continue;
            str3 = null;
            continue;
            label406:
            str3 = "CMCC";
          }
        }
        else {
          str3 = "UNICOM";
        }
      }
    }
  }
  
  private static boolean a()
  {
    try
    {
      Class localClass = Class.forName("miui.os.Build");
      boolean bool = ((Boolean)localClass.getField("IS_TABLET").get(localClass)).booleanValue();
      return bool;
    }
    catch (Exception localException) {}
    return false;
  }
  
  private static String b(Context paramContext)
  {
    String str1 = "";
    try
    {
      localObject = f(paramContext);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        str1 = a((String)localObject);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          Object localObject;
          paramContext = h.a(((StringBuffer)localObject).toString().getBytes("UTF-8"));
          return paramContext;
        }
        catch (UnsupportedEncodingException paramContext)
        {
          String str2;
          paramContext.printStackTrace();
        }
        localException = localException;
        str2 = "";
      }
    }
    paramContext = a(((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress());
    localObject = new StringBuffer();
    if (!TextUtils.isEmpty(str1)) {
      ((StringBuffer)localObject).append(str1);
    }
    if (!TextUtils.isEmpty(paramContext))
    {
      ((StringBuffer)localObject).append("_");
      ((StringBuffer)localObject).append(paramContext);
    }
    return null;
  }
  
  private static String c(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      paramContext = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  private static int d(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      int i1 = localPackageManager.getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return i1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  private static boolean e(Context paramContext)
  {
    boolean bool = false;
    paramContext = paramContext.getPackageManager();
    try
    {
      int i1 = paramContext.getPackageInfo("com.miui.cloudservice", 0).applicationInfo.flags;
      if ((i1 & 0x1) != 0) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  /* Error */
  @android.annotation.SuppressLint({"MissingPermission"})
  private static String f(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc -102
    //   3: invokevirtual 158	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   6: checkcast 160	android/telephony/TelephonyManager
    //   9: astore_0
    //   10: aload_0
    //   11: invokevirtual 347	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   14: astore_0
    //   15: aload_0
    //   16: astore_3
    //   17: aload_0
    //   18: invokestatic 207	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   21: ifne +31 -> 52
    //   24: iconst_0
    //   25: istore_1
    //   26: aload_0
    //   27: astore_3
    //   28: iload_1
    //   29: getstatic 42	com/xiaomi/gamecenter/gamesdk/datasdk/b/b:u	[Ljava/lang/String;
    //   32: arraylength
    //   33: if_icmpge +19 -> 52
    //   36: aload_0
    //   37: getstatic 42	com/xiaomi/gamecenter/gamesdk/datasdk/b/b:u	[Ljava/lang/String;
    //   40: iload_1
    //   41: aaload
    //   42: invokestatic 203	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   45: istore_2
    //   46: iload_2
    //   47: ifeq +7 -> 54
    //   50: aconst_null
    //   51: astore_3
    //   52: aload_3
    //   53: areturn
    //   54: iload_1
    //   55: iconst_1
    //   56: iadd
    //   57: istore_1
    //   58: goto -32 -> 26
    //   61: astore_3
    //   62: aconst_null
    //   63: astore_0
    //   64: aload_3
    //   65: invokevirtual 348	java/lang/SecurityException:printStackTrace	()V
    //   68: aload_0
    //   69: areturn
    //   70: astore_3
    //   71: goto -7 -> 64
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	paramContext	Context
    //   25	33	1	i1	int
    //   45	2	2	bool	boolean
    //   16	37	3	localContext	Context
    //   61	4	3	localSecurityException1	SecurityException
    //   70	1	3	localSecurityException2	SecurityException
    // Exception table:
    //   from	to	target	type
    //   10	15	61	java/lang/SecurityException
    //   17	24	70	java/lang/SecurityException
    //   28	46	70	java/lang/SecurityException
  }
  
  private static String g(Context paramContext)
  {
    Object localObject = "";
    try
    {
      paramContext = f(paramContext);
      localObject = paramContext;
      if (!TextUtils.isEmpty(paramContext))
      {
        localObject = paramContext;
        return a(paramContext);
      }
      return "";
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return (String)localObject;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */