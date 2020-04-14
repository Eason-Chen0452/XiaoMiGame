package com.xiaomi.gamecenter.sdk.utils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import cn.com.wali.basetool.utils.MD5;
import com.xiaomi.gamecenter.channel.v1reader.ChannelUtil;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;

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
  public static String p;
  public static String q;
  public static String r;
  public static String s;
  public static String t;
  private static boolean u = false;
  private static final String[] v = { null, "", "000000000000000" };
  private static final String[] w = { "02:00:00:00:00:00" };
  private static final Object x = new Object();
  
  /* Error */
  public static void a(Context paramContext)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: invokestatic 61	com/xiaomi/gamecenter/sdk/utils/b:h	(Landroid/content/Context;)Ljava/lang/String;
    //   6: putstatic 63	com/xiaomi/gamecenter/sdk/utils/b:a	Ljava/lang/String;
    //   9: getstatic 68	android/os/Build$VERSION:INCREMENTAL	Ljava/lang/String;
    //   12: putstatic 70	com/xiaomi/gamecenter/sdk/utils/b:b	Ljava/lang/String;
    //   15: getstatic 73	android/os/Build$VERSION:SDK_INT	I
    //   18: putstatic 75	com/xiaomi/gamecenter/sdk/utils/b:c	I
    //   21: aload_0
    //   22: invokestatic 78	com/xiaomi/gamecenter/sdk/utils/b:c	(Landroid/content/Context;)Z
    //   25: putstatic 80	com/xiaomi/gamecenter/sdk/utils/b:d	Z
    //   28: aload_0
    //   29: invokestatic 83	com/xiaomi/gamecenter/sdk/utils/b:j	(Landroid/content/Context;)I
    //   32: putstatic 85	com/xiaomi/gamecenter/sdk/utils/b:e	I
    //   35: aload_0
    //   36: invokestatic 87	com/xiaomi/gamecenter/sdk/utils/b:i	(Landroid/content/Context;)Ljava/lang/String;
    //   39: putstatic 89	com/xiaomi/gamecenter/sdk/utils/b:f	Ljava/lang/String;
    //   42: aload_0
    //   43: invokevirtual 95	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   46: getfield 100	android/content/pm/ApplicationInfo:flags	I
    //   49: iconst_1
    //   50: iand
    //   51: ifle +217 -> 268
    //   54: iload_1
    //   55: putstatic 102	com/xiaomi/gamecenter/sdk/utils/b:g	Z
    //   58: aload_0
    //   59: invokevirtual 106	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   62: invokevirtual 110	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   65: invokevirtual 116	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   68: getfield 121	android/util/DisplayMetrics:densityDpi	I
    //   71: putstatic 123	com/xiaomi/gamecenter/sdk/utils/b:h	I
    //   74: aload_0
    //   75: invokestatic 125	com/xiaomi/gamecenter/sdk/utils/b:d	(Landroid/content/Context;)Ljava/lang/String;
    //   78: putstatic 127	com/xiaomi/gamecenter/sdk/utils/b:p	Ljava/lang/String;
    //   81: aload_0
    //   82: invokestatic 129	com/xiaomi/gamecenter/sdk/utils/b:l	(Landroid/content/Context;)Ljava/lang/String;
    //   85: putstatic 131	com/xiaomi/gamecenter/sdk/utils/b:i	Ljava/lang/String;
    //   88: getstatic 54	com/xiaomi/gamecenter/sdk/utils/b:x	Ljava/lang/Object;
    //   91: astore_2
    //   92: aload_2
    //   93: monitorenter
    //   94: aload_0
    //   95: invokestatic 133	com/xiaomi/gamecenter/sdk/utils/b:b	(Landroid/content/Context;)Ljava/lang/String;
    //   98: putstatic 135	com/xiaomi/gamecenter/sdk/utils/b:j	Ljava/lang/String;
    //   101: aload_2
    //   102: monitorexit
    //   103: getstatic 141	java/lang/System:err	Ljava/io/PrintStream;
    //   106: new 143	java/lang/StringBuilder
    //   109: dup
    //   110: ldc -111
    //   112: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   115: getstatic 135	com/xiaomi/gamecenter/sdk/utils/b:j	Ljava/lang/String;
    //   118: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: invokevirtual 161	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   127: getstatic 54	com/xiaomi/gamecenter/sdk/utils/b:x	Ljava/lang/Object;
    //   130: astore_2
    //   131: aload_2
    //   132: monitorenter
    //   133: getstatic 135	com/xiaomi/gamecenter/sdk/utils/b:j	Ljava/lang/String;
    //   136: invokestatic 167	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   139: ifeq +40 -> 179
    //   142: aload_0
    //   143: ldc -87
    //   145: invokestatic 174	com/xiaomi/gamecenter/sdk/utils/ChannelPreference:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    //   148: putstatic 135	com/xiaomi/gamecenter/sdk/utils/b:j	Ljava/lang/String;
    //   151: getstatic 141	java/lang/System:err	Ljava/io/PrintStream;
    //   154: new 143	java/lang/StringBuilder
    //   157: dup
    //   158: ldc -80
    //   160: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   163: getstatic 135	com/xiaomi/gamecenter/sdk/utils/b:j	Ljava/lang/String;
    //   166: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 156	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokevirtual 161	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   175: iconst_1
    //   176: putstatic 37	com/xiaomi/gamecenter/sdk/utils/b:u	Z
    //   179: aload_2
    //   180: monitorexit
    //   181: aload_0
    //   182: invokestatic 178	com/xiaomi/gamecenter/sdk/utils/b:m	(Landroid/content/Context;)Ljava/lang/String;
    //   185: putstatic 180	com/xiaomi/gamecenter/sdk/utils/b:k	Ljava/lang/String;
    //   188: aload_0
    //   189: invokestatic 129	com/xiaomi/gamecenter/sdk/utils/b:l	(Landroid/content/Context;)Ljava/lang/String;
    //   192: astore_2
    //   193: aload_2
    //   194: invokestatic 167	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   197: ifeq +92 -> 289
    //   200: ldc 41
    //   202: astore_2
    //   203: aload_2
    //   204: putstatic 182	com/xiaomi/gamecenter/sdk/utils/b:m	Ljava/lang/String;
    //   207: invokestatic 186	com/xiaomi/gamecenter/sdk/utils/j:a	()Ljava/lang/String;
    //   210: putstatic 188	com/xiaomi/gamecenter/sdk/utils/b:n	Ljava/lang/String;
    //   213: aload_0
    //   214: invokestatic 190	com/xiaomi/gamecenter/sdk/utils/b:k	(Landroid/content/Context;)Ljava/lang/String;
    //   217: putstatic 192	com/xiaomi/gamecenter/sdk/utils/b:o	Ljava/lang/String;
    //   220: aload_0
    //   221: invokestatic 129	com/xiaomi/gamecenter/sdk/utils/b:l	(Landroid/content/Context;)Ljava/lang/String;
    //   224: astore_2
    //   225: aload_2
    //   226: invokestatic 167	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   229: ifeq +71 -> 300
    //   232: ldc 41
    //   234: astore_2
    //   235: aload_2
    //   236: putstatic 194	com/xiaomi/gamecenter/sdk/utils/b:l	Ljava/lang/String;
    //   239: aload_0
    //   240: invokestatic 198	com/xiaomi/gamecenter/sdk/utils/IdentifierManager:a	(Landroid/content/Context;)Ljava/lang/String;
    //   243: putstatic 200	com/xiaomi/gamecenter/sdk/utils/b:q	Ljava/lang/String;
    //   246: aload_0
    //   247: invokestatic 201	com/xiaomi/gamecenter/sdk/utils/IdentifierManager:b	(Landroid/content/Context;)Ljava/lang/String;
    //   250: putstatic 203	com/xiaomi/gamecenter/sdk/utils/b:r	Ljava/lang/String;
    //   253: aload_0
    //   254: invokestatic 205	com/xiaomi/gamecenter/sdk/utils/IdentifierManager:c	(Landroid/content/Context;)Ljava/lang/String;
    //   257: putstatic 207	com/xiaomi/gamecenter/sdk/utils/b:s	Ljava/lang/String;
    //   260: aload_0
    //   261: invokestatic 205	com/xiaomi/gamecenter/sdk/utils/IdentifierManager:c	(Landroid/content/Context;)Ljava/lang/String;
    //   264: putstatic 209	com/xiaomi/gamecenter/sdk/utils/b:t	Ljava/lang/String;
    //   267: return
    //   268: iconst_0
    //   269: istore_1
    //   270: goto -216 -> 54
    //   273: astore_0
    //   274: aload_2
    //   275: monitorexit
    //   276: aload_0
    //   277: athrow
    //   278: astore_0
    //   279: aload_0
    //   280: invokevirtual 212	java/lang/Throwable:printStackTrace	()V
    //   283: return
    //   284: astore_0
    //   285: aload_2
    //   286: monitorexit
    //   287: aload_0
    //   288: athrow
    //   289: aload_2
    //   290: invokevirtual 216	java/lang/String:getBytes	()[B
    //   293: invokestatic 221	cn/com/wali/basetool/utils/MD5:c	([B)Ljava/lang/String;
    //   296: astore_2
    //   297: goto -94 -> 203
    //   300: aload_2
    //   301: invokestatic 226	com/xiaomi/gamecenter/sdk/utils/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   304: astore_3
    //   305: aload_3
    //   306: astore_2
    //   307: aload_3
    //   308: invokestatic 167	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   311: ifeq -76 -> 235
    //   314: ldc 41
    //   316: astore_2
    //   317: goto -82 -> 235
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	320	0	paramContext	Context
    //   1	269	1	bool	boolean
    //   304	4	3	str	String
    // Exception table:
    //   from	to	target	type
    //   94	103	273	finally
    //   274	276	273	finally
    //   2	54	278	java/lang/Throwable
    //   54	94	278	java/lang/Throwable
    //   103	133	278	java/lang/Throwable
    //   181	200	278	java/lang/Throwable
    //   203	232	278	java/lang/Throwable
    //   235	267	278	java/lang/Throwable
    //   276	278	278	java/lang/Throwable
    //   287	289	278	java/lang/Throwable
    //   289	297	278	java/lang/Throwable
    //   300	305	278	java/lang/Throwable
    //   307	314	278	java/lang/Throwable
    //   133	179	284	finally
    //   179	181	284	finally
    //   285	287	284	finally
  }
  
  public static void a(Context arg0, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      System.err.println("deviceID:" + paramString);
      ChannelPreference.a(???, "imei", paramString);
      synchronized (x)
      {
        if ((TextUtils.isEmpty(j)) || (u)) {
          j = paramString;
        }
        return;
      }
    }
  }
  
  public static boolean a()
  {
    return OSUtils.a() == OSUtils.ROM.JOYUI;
  }
  
  public static String b(Context paramContext)
  {
    if (SocketTouch.b())
    {
      paramContext = e(paramContext);
      if (!TextUtils.isEmpty(paramContext)) {
        return SocketTouch.a(paramContext);
      }
      return "";
    }
    return m(paramContext);
  }
  
  public static boolean c(Context paramContext)
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
  
  public static String d(Context paramContext)
  {
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperator();
    if (("46000".equals(paramContext)) || ("46002".equals(paramContext)) || ("45412".equals(paramContext)) || ("46007".equals(paramContext))) {
      return "CMCC";
    }
    if (("46001".equals(paramContext)) || ("46006".equals(paramContext))) {
      return "UNICOM";
    }
    if ("46003".equals(paramContext)) {
      return "TELECOM";
    }
    return "UNKNOW";
  }
  
  public static String e(Context paramContext)
  {
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    if (paramContext != null)
    {
      paramContext = paramContext.getConnectionInfo();
      if (paramContext != null)
      {
        paramContext = paramContext.getMacAddress();
        int i1 = 0;
        while (i1 < w.length)
        {
          if (TextUtils.equals(paramContext, w[i1])) {
            return null;
          }
          i1 += 1;
        }
        return paramContext;
      }
    }
    return null;
  }
  
  public static String f(Context paramContext)
  {
    String str = ChannelUtil.readChannelId(paramContext);
    ChannelPreference.a(paramContext, "channel", str);
    return str;
  }
  
  public static String g(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((paramContext != null) && (paramContext.isConnected()))
    {
      if (paramContext.getType() == 1) {
        paramContext = "WIFI";
      }
      String str;
      do
      {
        return paramContext;
        if (paramContext.getType() != 0) {
          break label200;
        }
        str = paramContext.getSubtypeName();
        Log.e("cocos2d-x", "Network getSubtypeName : " + str);
        switch (paramContext.getSubtype())
        {
        default: 
          if ((str.equalsIgnoreCase("TD-SCDMA")) || (str.equalsIgnoreCase("WCDMA"))) {
            break label184;
          }
          paramContext = str;
        }
      } while (!str.equalsIgnoreCase("CDMA2000"));
      label184:
      return "3G";
      return "2G";
      return "3G";
      return "4G";
    }
    label200:
    return "";
  }
  
  private static String h(Context paramContext)
  {
    String str1 = "";
    try
    {
      localObject = l(paramContext);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        str1 = SocketTouch.a((String)localObject);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          Object localObject;
          paramContext = MD5.c(((StringBuffer)localObject).toString().getBytes("UTF-8"));
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
    paramContext = SocketTouch.a(((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress());
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
  
  private static String i(Context paramContext)
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
  
  private static int j(Context paramContext)
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
  
  private static String k(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      paramContext = paramContext.getSubscriberId();
      return paramContext;
    }
    catch (SecurityException paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }
  
  private static String l(Context paramContext)
  {
    paramContext = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      String str = paramContext.getDeviceId();
      int i1 = 0;
      for (;;)
      {
        paramContext = str;
        if (i1 < v.length)
        {
          if (TextUtils.equals(str, v[i1])) {
            paramContext = "";
          }
        }
        else {
          return paramContext;
        }
        i1 += 1;
      }
      return "";
    }
    catch (SecurityException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static String m(Context paramContext)
  {
    Object localObject = "";
    try
    {
      paramContext = l(paramContext);
      localObject = paramContext;
      if (!TextUtils.isEmpty(paramContext))
      {
        localObject = paramContext;
        return SocketTouch.a(paramContext);
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */