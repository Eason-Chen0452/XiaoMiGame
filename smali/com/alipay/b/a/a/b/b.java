package com.alipay.b.a.a.b;

import android.app.KeyguardManager;
import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.alipay.b.a.a.a.a;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONObject;

public final class b
{
  private static b a = new b();
  
  public static b a()
  {
    return a;
  }
  
  public static String a(Context paramContext)
  {
    Object localObject;
    if (a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      localObject = "";
      return (String)localObject;
    }
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext != null)
        {
          paramContext = paramContext.getDeviceId();
          localObject = paramContext;
          if (paramContext != null) {
            break;
          }
          return "";
        }
      }
      catch (Exception paramContext) {}
      paramContext = null;
    }
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    if (paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0) {}
    for (int i = 1; i == 0; i = 0) {
      return true;
    }
    return false;
  }
  
  public static String b()
  {
    long l1 = 0L;
    try
    {
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      long l2 = localStatFs.getBlockSize();
      int i = localStatFs.getAvailableBlocks();
      l1 = i * l2;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    return String.valueOf(l1);
  }
  
  public static String b(Context paramContext)
  {
    Object localObject;
    if (a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      localObject = "";
      return (String)localObject;
    }
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext != null)
        {
          paramContext = paramContext.getSubscriberId();
          localObject = paramContext;
          if (paramContext != null) {
            break;
          }
          return "";
        }
      }
      catch (Exception paramContext) {}
      paramContext = "";
    }
  }
  
  public static String c()
  {
    l2 = 0L;
    l1 = l2;
    try
    {
      if ("mounted".equals(Environment.getExternalStorageState()))
      {
        StatFs localStatFs = new StatFs(a.a().getPath());
        l1 = localStatFs.getBlockSize();
        int i = localStatFs.getAvailableBlocks();
        l1 = i * l1;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        l1 = l2;
      }
    }
    return String.valueOf(l1);
  }
  
  public static String c(Context paramContext)
  {
    int i = 0;
    try
    {
      int j = Settings.System.getInt(paramContext.getContentResolver(), "airplane_mode_on", 0);
      i = j;
    }
    catch (Exception paramContext)
    {
      for (;;) {}
    }
    if (i == 1) {
      return "1";
    }
    return "0";
  }
  
  /* Error */
  public static String d()
  {
    // Byte code:
    //   0: new 119	java/io/FileInputStream
    //   3: dup
    //   4: new 64	java/io/File
    //   7: dup
    //   8: ldc 121
    //   10: invokespecial 122	java/io/File:<init>	(Ljava/lang/String;)V
    //   13: invokespecial 125	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   16: astore 4
    //   18: new 127	java/io/InputStreamReader
    //   21: dup
    //   22: aload 4
    //   24: invokespecial 130	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   27: astore_2
    //   28: new 132	java/io/LineNumberReader
    //   31: dup
    //   32: aload_2
    //   33: invokespecial 135	java/io/LineNumberReader:<init>	(Ljava/io/Reader;)V
    //   36: astore_3
    //   37: iconst_1
    //   38: istore_0
    //   39: iload_0
    //   40: bipush 100
    //   42: if_icmpge +245 -> 287
    //   45: aload_3
    //   46: invokevirtual 138	java/io/LineNumberReader:readLine	()Ljava/lang/String;
    //   49: astore_1
    //   50: aload_1
    //   51: ifnull +236 -> 287
    //   54: aload_1
    //   55: ldc -116
    //   57: invokevirtual 144	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   60: iflt +47 -> 107
    //   63: aload_1
    //   64: aload_1
    //   65: ldc -110
    //   67: invokevirtual 144	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   70: iconst_1
    //   71: iadd
    //   72: aload_1
    //   73: invokevirtual 149	java/lang/String:length	()I
    //   76: invokevirtual 153	java/lang/String:substring	(II)Ljava/lang/String;
    //   79: invokevirtual 156	java/lang/String:trim	()Ljava/lang/String;
    //   82: astore_1
    //   83: aload_3
    //   84: invokevirtual 159	java/io/LineNumberReader:close	()V
    //   87: aload_2
    //   88: invokevirtual 160	java/io/InputStreamReader:close	()V
    //   91: aload 4
    //   93: invokevirtual 161	java/io/FileInputStream:close	()V
    //   96: aload_1
    //   97: astore_2
    //   98: aload_1
    //   99: ifnonnull +6 -> 105
    //   102: ldc 26
    //   104: astore_2
    //   105: aload_2
    //   106: areturn
    //   107: iload_0
    //   108: iconst_1
    //   109: iadd
    //   110: istore_0
    //   111: goto -72 -> 39
    //   114: astore_2
    //   115: goto -19 -> 96
    //   118: astore_1
    //   119: aconst_null
    //   120: astore_1
    //   121: aconst_null
    //   122: astore_2
    //   123: aconst_null
    //   124: astore 4
    //   126: aload_1
    //   127: ifnull +7 -> 134
    //   130: aload_1
    //   131: invokevirtual 159	java/io/LineNumberReader:close	()V
    //   134: aload_2
    //   135: ifnull +7 -> 142
    //   138: aload_2
    //   139: invokevirtual 160	java/io/InputStreamReader:close	()V
    //   142: aload 4
    //   144: ifnull +137 -> 281
    //   147: aload 4
    //   149: invokevirtual 161	java/io/FileInputStream:close	()V
    //   152: ldc -93
    //   154: astore_1
    //   155: goto -59 -> 96
    //   158: astore_1
    //   159: ldc -93
    //   161: astore_1
    //   162: goto -66 -> 96
    //   165: astore_1
    //   166: aconst_null
    //   167: astore_2
    //   168: aconst_null
    //   169: astore_3
    //   170: aconst_null
    //   171: astore 4
    //   173: aload_2
    //   174: ifnull +7 -> 181
    //   177: aload_2
    //   178: invokevirtual 159	java/io/LineNumberReader:close	()V
    //   181: aload_3
    //   182: ifnull +7 -> 189
    //   185: aload_3
    //   186: invokevirtual 160	java/io/InputStreamReader:close	()V
    //   189: aload 4
    //   191: ifnull +8 -> 199
    //   194: aload 4
    //   196: invokevirtual 161	java/io/FileInputStream:close	()V
    //   199: aload_1
    //   200: athrow
    //   201: astore_3
    //   202: goto -115 -> 87
    //   205: astore_2
    //   206: goto -115 -> 91
    //   209: astore_1
    //   210: goto -76 -> 134
    //   213: astore_1
    //   214: goto -72 -> 142
    //   217: astore_2
    //   218: goto -37 -> 181
    //   221: astore_2
    //   222: goto -33 -> 189
    //   225: astore_2
    //   226: goto -27 -> 199
    //   229: astore_1
    //   230: aconst_null
    //   231: astore_2
    //   232: aconst_null
    //   233: astore_3
    //   234: goto -61 -> 173
    //   237: astore_1
    //   238: aconst_null
    //   239: astore 5
    //   241: aload_2
    //   242: astore_3
    //   243: aload 5
    //   245: astore_2
    //   246: goto -73 -> 173
    //   249: astore_1
    //   250: aload_3
    //   251: astore 5
    //   253: aload_2
    //   254: astore_3
    //   255: aload 5
    //   257: astore_2
    //   258: goto -85 -> 173
    //   261: astore_1
    //   262: aconst_null
    //   263: astore_1
    //   264: aconst_null
    //   265: astore_2
    //   266: goto -140 -> 126
    //   269: astore_1
    //   270: aconst_null
    //   271: astore_1
    //   272: goto -146 -> 126
    //   275: astore_1
    //   276: aload_3
    //   277: astore_1
    //   278: goto -152 -> 126
    //   281: ldc -93
    //   283: astore_1
    //   284: goto -188 -> 96
    //   287: ldc -93
    //   289: astore_1
    //   290: goto -207 -> 83
    // Local variable table:
    //   start	length	slot	name	signature
    //   38	73	0	i	int
    //   49	50	1	str1	String
    //   118	1	1	localException1	Exception
    //   120	35	1	str2	String
    //   158	1	1	localException2	Exception
    //   161	1	1	str3	String
    //   165	35	1	localObject1	Object
    //   209	1	1	localException3	Exception
    //   213	1	1	localException4	Exception
    //   229	1	1	localObject2	Object
    //   237	1	1	localObject3	Object
    //   249	1	1	localObject4	Object
    //   261	1	1	localException5	Exception
    //   263	1	1	localObject5	Object
    //   269	1	1	localException6	Exception
    //   271	1	1	localObject6	Object
    //   275	1	1	localException7	Exception
    //   277	13	1	localObject7	Object
    //   27	79	2	localObject8	Object
    //   114	1	2	localException8	Exception
    //   122	56	2	localObject9	Object
    //   205	1	2	localException9	Exception
    //   217	1	2	localException10	Exception
    //   221	1	2	localException11	Exception
    //   225	1	2	localException12	Exception
    //   231	35	2	localObject10	Object
    //   36	150	3	localLineNumberReader	java.io.LineNumberReader
    //   201	1	3	localException13	Exception
    //   233	44	3	localObject11	Object
    //   16	179	4	localFileInputStream	java.io.FileInputStream
    //   239	17	5	localObject12	Object
    // Exception table:
    //   from	to	target	type
    //   91	96	114	java/lang/Exception
    //   0	18	118	java/lang/Exception
    //   147	152	158	java/lang/Exception
    //   0	18	165	finally
    //   83	87	201	java/lang/Exception
    //   87	91	205	java/lang/Exception
    //   130	134	209	java/lang/Exception
    //   138	142	213	java/lang/Exception
    //   177	181	217	java/lang/Exception
    //   185	189	221	java/lang/Exception
    //   194	199	225	java/lang/Exception
    //   18	28	229	finally
    //   28	37	237	finally
    //   45	50	249	finally
    //   54	83	249	finally
    //   18	28	261	java/lang/Exception
    //   28	37	269	java/lang/Exception
    //   45	50	275	java/lang/Exception
    //   54	83	275	java/lang/Exception
  }
  
  public static String d(Context paramContext)
  {
    int i = 1;
    JSONObject localJSONObject = new JSONObject();
    for (;;)
    {
      try
      {
        paramContext = (AudioManager)paramContext.getSystemService("audio");
        if (paramContext.getRingerMode() != 0) {
          continue;
        }
        int j = paramContext.getStreamVolume(0);
        int k = paramContext.getStreamVolume(1);
        int m = paramContext.getStreamVolume(2);
        int n = paramContext.getStreamVolume(3);
        int i1 = paramContext.getStreamVolume(4);
        localJSONObject.put("ringermode", String.valueOf(i));
        localJSONObject.put("call", String.valueOf(j));
        localJSONObject.put("system", String.valueOf(k));
        localJSONObject.put("ring", String.valueOf(m));
        localJSONObject.put("music", String.valueOf(n));
        localJSONObject.put("alarm", String.valueOf(i1));
      }
      catch (Exception paramContext)
      {
        continue;
      }
      return localJSONObject.toString();
      i = 0;
    }
  }
  
  public static String e(Context paramContext)
  {
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext != null)
        {
          paramContext = paramContext.getNetworkOperatorName();
          Object localObject;
          if (paramContext != null)
          {
            localObject = paramContext;
            if (!"null".equals(paramContext)) {}
          }
          else
          {
            localObject = "";
          }
          return (String)localObject;
        }
      }
      catch (Exception paramContext) {}
      paramContext = null;
    }
  }
  
  public static String f()
  {
    String str = w();
    if (!a.a(str)) {
      return str;
    }
    return x();
  }
  
  public static String f(Context paramContext)
  {
    Object localObject;
    if (a(paramContext, "android.permission.READ_PHONE_STATE"))
    {
      localObject = "";
      return (String)localObject;
    }
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext != null)
        {
          paramContext = paramContext.getLine1Number();
          localObject = paramContext;
          if (paramContext != null) {
            break;
          }
          return "";
        }
      }
      catch (Exception paramContext) {}
      paramContext = "";
    }
  }
  
  /* Error */
  public static String g()
  {
    // Byte code:
    //   0: new 221	java/io/FileReader
    //   3: dup
    //   4: ldc 121
    //   6: invokespecial 222	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   9: astore_2
    //   10: new 224	java/io/BufferedReader
    //   13: dup
    //   14: aload_2
    //   15: invokespecial 225	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   18: astore_1
    //   19: aload_1
    //   20: invokevirtual 226	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   23: ldc -28
    //   25: iconst_2
    //   26: invokevirtual 232	java/lang/String:split	(Ljava/lang/String;I)[Ljava/lang/String;
    //   29: astore_0
    //   30: aload_0
    //   31: ifnull +23 -> 54
    //   34: aload_0
    //   35: arraylength
    //   36: iconst_1
    //   37: if_icmple +17 -> 54
    //   40: aload_0
    //   41: iconst_1
    //   42: aaload
    //   43: astore_0
    //   44: aload_2
    //   45: invokevirtual 233	java/io/FileReader:close	()V
    //   48: aload_1
    //   49: invokevirtual 234	java/io/BufferedReader:close	()V
    //   52: aload_0
    //   53: areturn
    //   54: aload_2
    //   55: invokevirtual 233	java/io/FileReader:close	()V
    //   58: aload_1
    //   59: invokevirtual 234	java/io/BufferedReader:close	()V
    //   62: ldc 26
    //   64: areturn
    //   65: astore_0
    //   66: aconst_null
    //   67: astore_0
    //   68: aconst_null
    //   69: astore_2
    //   70: aload_2
    //   71: ifnull +7 -> 78
    //   74: aload_2
    //   75: invokevirtual 233	java/io/FileReader:close	()V
    //   78: aload_0
    //   79: ifnull -17 -> 62
    //   82: aload_0
    //   83: invokevirtual 234	java/io/BufferedReader:close	()V
    //   86: goto -24 -> 62
    //   89: astore_0
    //   90: goto -28 -> 62
    //   93: astore_0
    //   94: aconst_null
    //   95: astore_1
    //   96: aconst_null
    //   97: astore_2
    //   98: aload_2
    //   99: ifnull +7 -> 106
    //   102: aload_2
    //   103: invokevirtual 233	java/io/FileReader:close	()V
    //   106: aload_1
    //   107: ifnull +7 -> 114
    //   110: aload_1
    //   111: invokevirtual 234	java/io/BufferedReader:close	()V
    //   114: aload_0
    //   115: athrow
    //   116: astore_2
    //   117: goto -69 -> 48
    //   120: astore_1
    //   121: aload_0
    //   122: areturn
    //   123: astore_0
    //   124: goto -66 -> 58
    //   127: astore_0
    //   128: goto -66 -> 62
    //   131: astore_1
    //   132: goto -54 -> 78
    //   135: astore_2
    //   136: goto -30 -> 106
    //   139: astore_1
    //   140: goto -26 -> 114
    //   143: astore_0
    //   144: aconst_null
    //   145: astore_1
    //   146: goto -48 -> 98
    //   149: astore_0
    //   150: goto -52 -> 98
    //   153: astore_0
    //   154: aconst_null
    //   155: astore_0
    //   156: goto -86 -> 70
    //   159: astore_0
    //   160: aload_1
    //   161: astore_0
    //   162: goto -92 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   29	24	0	localObject1	Object
    //   65	1	0	localException1	Exception
    //   67	16	0	localObject2	Object
    //   89	1	0	localException2	Exception
    //   93	29	0	str	String
    //   123	1	0	localException3	Exception
    //   127	1	0	localException4	Exception
    //   143	1	0	localObject3	Object
    //   149	1	0	localObject4	Object
    //   153	1	0	localException5	Exception
    //   155	1	0	localObject5	Object
    //   159	1	0	localException6	Exception
    //   161	1	0	localObject6	Object
    //   18	93	1	localBufferedReader	java.io.BufferedReader
    //   120	1	1	localException7	Exception
    //   131	1	1	localException8	Exception
    //   139	1	1	localException9	Exception
    //   145	16	1	localObject7	Object
    //   9	94	2	localFileReader	java.io.FileReader
    //   116	1	2	localException10	Exception
    //   135	1	2	localException11	Exception
    // Exception table:
    //   from	to	target	type
    //   0	10	65	java/lang/Exception
    //   82	86	89	java/lang/Exception
    //   0	10	93	finally
    //   44	48	116	java/lang/Exception
    //   48	52	120	java/lang/Exception
    //   54	58	123	java/lang/Exception
    //   58	62	127	java/lang/Exception
    //   74	78	131	java/lang/Exception
    //   102	106	135	java/lang/Exception
    //   110	114	139	java/lang/Exception
    //   10	19	143	finally
    //   19	30	149	finally
    //   34	40	149	finally
    //   10	19	153	java/lang/Exception
    //   19	30	159	java/lang/Exception
    //   34	40	159	java/lang/Exception
  }
  
  public static String g(Context paramContext)
  {
    Object localObject;
    if (paramContext != null) {
      try
      {
        paramContext = (SensorManager)paramContext.getSystemService("sensor");
        if (paramContext != null)
        {
          localObject = paramContext.getSensorList(-1);
          if ((localObject != null) && (((List)localObject).size() > 0))
          {
            paramContext = new StringBuilder();
            localObject = ((List)localObject).iterator();
            while (((Iterator)localObject).hasNext())
            {
              Sensor localSensor = (Sensor)((Iterator)localObject).next();
              paramContext.append(localSensor.getName());
              paramContext.append(localSensor.getVersion());
              paramContext.append(localSensor.getVendor());
            }
          }
        }
        paramContext = null;
      }
      catch (Exception paramContext) {}
    }
    for (;;)
    {
      localObject = paramContext;
      if (paramContext == null) {
        localObject = "";
      }
      return (String)localObject;
      paramContext = a.d(paramContext.toString());
    }
  }
  
  /* Error */
  public static String h()
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore_3
    //   2: new 221	java/io/FileReader
    //   5: dup
    //   6: ldc_w 289
    //   9: invokespecial 222	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   12: astore 6
    //   14: new 224	java/io/BufferedReader
    //   17: dup
    //   18: aload 6
    //   20: sipush 8192
    //   23: invokespecial 292	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   26: astore 7
    //   28: aload 7
    //   30: invokevirtual 226	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   33: astore 5
    //   35: lload_3
    //   36: lstore_1
    //   37: aload 5
    //   39: ifnull +20 -> 59
    //   42: aload 5
    //   44: ldc_w 294
    //   47: invokevirtual 297	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   50: iconst_1
    //   51: aaload
    //   52: invokestatic 302	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   55: istore_0
    //   56: iload_0
    //   57: i2l
    //   58: lstore_1
    //   59: aload 6
    //   61: invokevirtual 233	java/io/FileReader:close	()V
    //   64: aload 7
    //   66: invokevirtual 234	java/io/BufferedReader:close	()V
    //   69: lload_1
    //   70: invokestatic 83	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   73: areturn
    //   74: astore 5
    //   76: aconst_null
    //   77: astore 6
    //   79: aconst_null
    //   80: astore 5
    //   82: aload 6
    //   84: ifnull +8 -> 92
    //   87: aload 6
    //   89: invokevirtual 233	java/io/FileReader:close	()V
    //   92: lload_3
    //   93: lstore_1
    //   94: aload 5
    //   96: ifnull -27 -> 69
    //   99: aload 5
    //   101: invokevirtual 234	java/io/BufferedReader:close	()V
    //   104: lload_3
    //   105: lstore_1
    //   106: goto -37 -> 69
    //   109: astore 5
    //   111: lload_3
    //   112: lstore_1
    //   113: goto -44 -> 69
    //   116: astore 5
    //   118: aconst_null
    //   119: astore 8
    //   121: aconst_null
    //   122: astore 6
    //   124: aload 8
    //   126: ifnull +8 -> 134
    //   129: aload 8
    //   131: invokevirtual 233	java/io/FileReader:close	()V
    //   134: aload 6
    //   136: ifnull +8 -> 144
    //   139: aload 6
    //   141: invokevirtual 234	java/io/BufferedReader:close	()V
    //   144: aload 5
    //   146: athrow
    //   147: astore 5
    //   149: goto -85 -> 64
    //   152: astore 5
    //   154: goto -85 -> 69
    //   157: astore 6
    //   159: goto -67 -> 92
    //   162: astore 7
    //   164: goto -30 -> 134
    //   167: astore 6
    //   169: goto -25 -> 144
    //   172: astore 5
    //   174: aconst_null
    //   175: astore 7
    //   177: aload 6
    //   179: astore 8
    //   181: aload 7
    //   183: astore 6
    //   185: goto -61 -> 124
    //   188: astore 5
    //   190: aload 6
    //   192: astore 8
    //   194: aload 7
    //   196: astore 6
    //   198: goto -74 -> 124
    //   201: astore 5
    //   203: aconst_null
    //   204: astore 5
    //   206: goto -124 -> 82
    //   209: astore 5
    //   211: aload 7
    //   213: astore 5
    //   215: goto -133 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   55	2	0	i	int
    //   36	77	1	l1	long
    //   1	111	3	l2	long
    //   33	10	5	str	String
    //   74	1	5	localException1	Exception
    //   80	20	5	localObject1	Object
    //   109	1	5	localException2	Exception
    //   116	29	5	localObject2	Object
    //   147	1	5	localException3	Exception
    //   152	1	5	localException4	Exception
    //   172	1	5	localObject3	Object
    //   188	1	5	localObject4	Object
    //   201	1	5	localException5	Exception
    //   204	1	5	localObject5	Object
    //   209	1	5	localException6	Exception
    //   213	1	5	localObject6	Object
    //   12	128	6	localFileReader	java.io.FileReader
    //   157	1	6	localException7	Exception
    //   167	11	6	localException8	Exception
    //   183	14	6	localObject7	Object
    //   26	39	7	localBufferedReader	java.io.BufferedReader
    //   162	1	7	localException9	Exception
    //   175	37	7	localObject8	Object
    //   119	74	8	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	74	java/lang/Exception
    //   99	104	109	java/lang/Exception
    //   2	14	116	finally
    //   59	64	147	java/lang/Exception
    //   64	69	152	java/lang/Exception
    //   87	92	157	java/lang/Exception
    //   129	134	162	java/lang/Exception
    //   139	144	167	java/lang/Exception
    //   14	28	172	finally
    //   28	35	188	finally
    //   42	56	188	finally
    //   14	28	201	java/lang/Exception
    //   28	35	209	java/lang/Exception
    //   42	56	209	java/lang/Exception
  }
  
  public static String h(Context paramContext)
  {
    localJSONArray = new JSONArray();
    if (paramContext != null) {
      try
      {
        paramContext = (SensorManager)paramContext.getSystemService("sensor");
        if (paramContext != null)
        {
          paramContext = paramContext.getSensorList(-1);
          if ((paramContext != null) && (paramContext.size() > 0))
          {
            paramContext = paramContext.iterator();
            while (paramContext.hasNext())
            {
              Sensor localSensor = (Sensor)paramContext.next();
              if (localSensor != null)
              {
                JSONObject localJSONObject = new JSONObject();
                localJSONObject.put("name", localSensor.getName());
                localJSONObject.put("version", localSensor.getVersion());
                localJSONObject.put("vendor", localSensor.getVendor());
                localJSONArray.put(localJSONObject);
              }
            }
          }
        }
        return localJSONArray.toString();
      }
      catch (Exception paramContext) {}
    }
  }
  
  public static String i()
  {
    long l1 = 0L;
    try
    {
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      long l2 = localStatFs.getBlockSize();
      int i = localStatFs.getBlockCount();
      l1 = i * l2;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    return String.valueOf(l1);
  }
  
  public static String i(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getResources().getDisplayMetrics();
      paramContext = Integer.toString(paramContext.widthPixels) + "*" + Integer.toString(paramContext.heightPixels);
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  public static String j()
  {
    l2 = 0L;
    l1 = l2;
    try
    {
      if ("mounted".equals(Environment.getExternalStorageState()))
      {
        StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        l1 = localStatFs.getBlockSize();
        int i = localStatFs.getBlockCount();
        l1 = i * l1;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        l1 = l2;
      }
    }
    return String.valueOf(l1);
  }
  
  public static String j(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getResources().getDisplayMetrics();
      paramContext = paramContext.widthPixels;
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  public static String k()
  {
    try
    {
      Object localObject1 = Class.forName("android.os.SystemProperties");
      Object localObject2 = ((Class)localObject1).newInstance();
      localObject1 = (String)((Class)localObject1).getMethod("get", new Class[] { String.class, String.class }).invoke(localObject2, new Object[] { "gsm.version.baseband", "no message" });
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = "";
      }
      return (String)localObject2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str = "";
      }
    }
  }
  
  public static String k(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getResources().getDisplayMetrics();
      paramContext = paramContext.heightPixels;
      return paramContext;
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  public static String l()
  {
    Object localObject1 = "";
    try
    {
      localObject2 = Build.SERIAL;
      localObject1 = localObject2;
    }
    catch (Exception localException)
    {
      Object localObject2;
      for (;;) {}
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "";
    }
    return (String)localObject2;
  }
  
  public static String l(Context paramContext)
  {
    Object localObject;
    if (a(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
      localObject = "";
    }
    for (;;)
    {
      return (String)localObject;
      try
      {
        paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
        if (paramContext == null) {}
      }
      catch (Exception paramContext)
      {
        try
        {
          if (paramContext.length() != 0)
          {
            localObject = paramContext;
            if (!"02:00:00:00:00:00".equals(paramContext)) {
              continue;
            }
          }
          localObject = v();
          return (String)localObject;
        }
        catch (Exception localException) {}
        paramContext = paramContext;
        return "";
      }
    }
    return paramContext;
  }
  
  public static String m()
  {
    Object localObject1 = "";
    try
    {
      localObject2 = Locale.getDefault().toString();
      localObject1 = localObject2;
    }
    catch (Exception localException)
    {
      Object localObject2;
      for (;;) {}
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "";
    }
    return (String)localObject2;
  }
  
  /* Error */
  public static String m(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 21
    //   3: invokestatic 24	com/alipay/b/a/a/b/b:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   6: ifeq +8 -> 14
    //   9: ldc 26
    //   11: astore_1
    //   12: aload_1
    //   13: areturn
    //   14: aload_0
    //   15: ldc 28
    //   17: invokevirtual 34	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   20: checkcast 36	android/telephony/TelephonyManager
    //   23: invokevirtual 415	android/telephony/TelephonyManager:getSimSerialNumber	()Ljava/lang/String;
    //   26: astore_0
    //   27: aload_0
    //   28: ifnull +18 -> 46
    //   31: aload_0
    //   32: astore_1
    //   33: aload_0
    //   34: ifnull -22 -> 12
    //   37: aload_0
    //   38: astore_1
    //   39: aload_0
    //   40: invokevirtual 149	java/lang/String:length	()I
    //   43: ifne -31 -> 12
    //   46: ldc 26
    //   48: areturn
    //   49: astore_0
    //   50: ldc 26
    //   52: areturn
    //   53: astore_1
    //   54: aload_0
    //   55: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	paramContext	Context
    //   11	28	1	localObject	Object
    //   53	1	1	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   14	27	49	java/lang/Exception
    //   39	46	53	java/lang/Exception
  }
  
  public static String n()
  {
    Object localObject1 = "";
    try
    {
      localObject2 = TimeZone.getDefault().getDisplayName(false, 0);
      localObject1 = localObject2;
    }
    catch (Exception localException)
    {
      Object localObject2;
      for (;;) {}
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "";
    }
    return (String)localObject2;
  }
  
  public static String n(Context paramContext)
  {
    Object localObject = "";
    try
    {
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      localObject = paramContext;
      if (paramContext == null) {
        localObject = "";
      }
      return (String)localObject;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext = (Context)localObject;
      }
    }
  }
  
  public static String o()
  {
    try
    {
      long l = System.currentTimeMillis() - SystemClock.elapsedRealtime();
      String str = l - l % 1000L;
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public static String o(Context paramContext)
  {
    if (a(paramContext, "android.permission.BLUETOOTH")) {
      paramContext = "";
    }
    String str2;
    for (;;)
    {
      return paramContext;
      str2 = y();
      if (str2 != null) {}
      try
      {
        String str1;
        if (str2.length() != 0)
        {
          str1 = str2;
          if (!"02:00:00:00:00:00".equals(str2)) {}
        }
        else
        {
          str1 = Settings.Secure.getString(paramContext.getContentResolver(), "bluetooth_address");
        }
        paramContext = str1;
        if (str1 == null) {
          return "";
        }
      }
      catch (Exception paramContext) {}
    }
    return str2;
  }
  
  public static String p()
  {
    try
    {
      String str = SystemClock.elapsedRealtime();
      return str;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public static String p(Context paramContext)
  {
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext != null)
      {
        int i = paramContext.getNetworkType();
        return String.valueOf(i);
      }
    }
    catch (Exception paramContext) {}
    return "";
  }
  
  public static String q()
  {
    int i = 0;
    for (;;)
    {
      try
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("00" + ":");
        if (i < 7) {
          if (new File(new String[] { "/dev/qemu_pipe", "/dev/socket/qemud", "/system/lib/libc_malloc_debug_qemu.so", "/sys/qemu_trace", "/system/bin/qemu-props", "/dev/socket/genyd", "/dev/socket/baseband_genyd" }[i]).exists()) {
            localStringBuilder.append("1");
          } else {
            localStringBuilder.append("0");
          }
        }
      }
      catch (Exception localException)
      {
        return "";
      }
      String str = localException.toString();
      return str;
      i += 1;
    }
  }
  
  public static String q(Context paramContext)
  {
    Object localObject;
    if (a(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
      localObject = "";
    }
    for (;;)
    {
      return (String)localObject;
      try
      {
        paramContext = (WifiManager)paramContext.getSystemService("wifi");
        if (paramContext.isWifiEnabled())
        {
          paramContext = paramContext.getConnectionInfo().getBSSID();
          localObject = paramContext;
          if (paramContext != null) {
            continue;
          }
          return "";
        }
      }
      catch (Throwable paramContext)
      {
        for (;;)
        {
          paramContext = "";
        }
      }
    }
  }
  
  public static String r()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("00");
    localStringBuilder.append(":");
    int i = 0;
    for (;;)
    {
      if (i <= 0)
      {
        String str = new String[] { "dalvik.system.Taint" }[0];
        try
        {
          Class.forName(str);
          localStringBuilder.append("1");
          i += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            localStringBuilder.append("0");
          }
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String r(Context paramContext)
  {
    for (;;)
    {
      int i;
      try
      {
        if (a(paramContext, "android.permission.ACCESS_NETWORK_STATE"))
        {
          paramContext = "";
          String str = z();
          if ((!a.b(paramContext)) || (!a.b(str))) {
            break label145;
          }
          return paramContext + ":" + z();
        }
        paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (paramContext == null)
        {
          paramContext = null;
          continue;
        }
        if (paramContext.getType() == 1)
        {
          paramContext = "WIFI";
          continue;
        }
        if (paramContext.getType() != 0) {
          break label148;
        }
        i = paramContext.getSubtype();
        if ((i == 4) || (i == 1) || (i == 2) || (i == 7)) {
          break label153;
        }
        if (i != 11) {
          break label160;
        }
      }
      catch (Exception paramContext) {}
      paramContext = "UNKNOW";
      continue;
      label145:
      return "";
      label148:
      paramContext = null;
      continue;
      label153:
      paramContext = "2G";
      continue;
      label160:
      if ((i == 3) || (i == 5) || (i == 6) || (i == 8) || (i == 9) || (i == 10) || (i == 12) || (i == 14) || (i == 15)) {
        paramContext = "3G";
      } else if (i == 13) {
        paramContext = "4G";
      }
    }
  }
  
  /* Error */
  public static String s()
  {
    // Byte code:
    //   0: new 249	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 250	java/lang/StringBuilder:<init>	()V
    //   7: astore 5
    //   9: new 528	java/util/LinkedHashMap
    //   12: dup
    //   13: invokespecial 529	java/util/LinkedHashMap:<init>	()V
    //   16: astore 4
    //   18: aload 4
    //   20: ldc_w 531
    //   23: ldc_w 533
    //   26: invokeinterface 538 3 0
    //   31: pop
    //   32: aload 4
    //   34: ldc_w 540
    //   37: ldc_w 542
    //   40: invokeinterface 538 3 0
    //   45: pop
    //   46: aload 4
    //   48: ldc 121
    //   50: ldc_w 542
    //   53: invokeinterface 538 3 0
    //   58: pop
    //   59: aload 5
    //   61: new 249	java/lang/StringBuilder
    //   64: dup
    //   65: invokespecial 250	java/lang/StringBuilder:<init>	()V
    //   68: ldc_w 464
    //   71: invokevirtual 273	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: ldc -110
    //   76: invokevirtual 273	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: invokevirtual 283	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: invokevirtual 273	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: pop
    //   86: aload 4
    //   88: invokeinterface 546 1 0
    //   93: invokeinterface 549 1 0
    //   98: astore 6
    //   100: aload 6
    //   102: invokeinterface 260 1 0
    //   107: ifeq +140 -> 247
    //   110: aload 6
    //   112: invokeinterface 264 1 0
    //   117: checkcast 79	java/lang/String
    //   120: astore 7
    //   122: aconst_null
    //   123: astore_3
    //   124: new 132	java/io/LineNumberReader
    //   127: dup
    //   128: new 127	java/io/InputStreamReader
    //   131: dup
    //   132: new 119	java/io/FileInputStream
    //   135: dup
    //   136: aload 7
    //   138: invokespecial 550	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   141: invokespecial 130	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   144: invokespecial 135	java/io/LineNumberReader:<init>	(Ljava/io/Reader;)V
    //   147: astore_2
    //   148: aload_2
    //   149: invokevirtual 138	java/io/LineNumberReader:readLine	()Ljava/lang/String;
    //   152: astore_3
    //   153: aload_3
    //   154: ifnull +117 -> 271
    //   157: aload_3
    //   158: invokevirtual 553	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   161: aload 4
    //   163: aload 7
    //   165: invokeinterface 556 2 0
    //   170: checkcast 558	java/lang/CharSequence
    //   173: invokevirtual 562	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   176: istore_1
    //   177: iload_1
    //   178: ifeq -30 -> 148
    //   181: bipush 49
    //   183: istore_0
    //   184: aload 5
    //   186: iload_0
    //   187: invokevirtual 565	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   190: pop
    //   191: aload_2
    //   192: invokevirtual 159	java/io/LineNumberReader:close	()V
    //   195: goto -95 -> 100
    //   198: astore_2
    //   199: goto -99 -> 100
    //   202: astore_2
    //   203: aconst_null
    //   204: astore_2
    //   205: aload 5
    //   207: bipush 48
    //   209: invokevirtual 565	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   212: pop
    //   213: aload_2
    //   214: ifnull -114 -> 100
    //   217: aload_2
    //   218: invokevirtual 159	java/io/LineNumberReader:close	()V
    //   221: goto -121 -> 100
    //   224: astore_2
    //   225: goto -125 -> 100
    //   228: astore_2
    //   229: aload 5
    //   231: bipush 48
    //   233: invokevirtual 565	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   236: pop
    //   237: aload_3
    //   238: ifnull +7 -> 245
    //   241: aload_3
    //   242: invokevirtual 159	java/io/LineNumberReader:close	()V
    //   245: aload_2
    //   246: athrow
    //   247: aload 5
    //   249: invokevirtual 283	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: areturn
    //   253: astore_3
    //   254: goto -9 -> 245
    //   257: astore 4
    //   259: aload_2
    //   260: astore_3
    //   261: aload 4
    //   263: astore_2
    //   264: goto -35 -> 229
    //   267: astore_3
    //   268: goto -63 -> 205
    //   271: bipush 48
    //   273: istore_0
    //   274: goto -90 -> 184
    // Local variable table:
    //   start	length	slot	name	signature
    //   183	91	0	c	char
    //   176	2	1	bool	boolean
    //   147	45	2	localLineNumberReader	java.io.LineNumberReader
    //   198	1	2	localException1	Exception
    //   202	1	2	localException2	Exception
    //   204	14	2	localObject1	Object
    //   224	1	2	localException3	Exception
    //   228	32	2	localObject2	Object
    //   263	1	2	localObject3	Object
    //   123	119	3	str1	String
    //   253	1	3	localException4	Exception
    //   260	1	3	localObject4	Object
    //   267	1	3	localException5	Exception
    //   16	146	4	localLinkedHashMap	LinkedHashMap
    //   257	5	4	localObject5	Object
    //   7	241	5	localStringBuilder	StringBuilder
    //   98	13	6	localIterator	Iterator
    //   120	44	7	str2	String
    // Exception table:
    //   from	to	target	type
    //   191	195	198	java/lang/Exception
    //   124	148	202	java/lang/Exception
    //   217	221	224	java/lang/Exception
    //   124	148	228	finally
    //   241	245	253	java/lang/Exception
    //   148	153	257	finally
    //   157	177	257	finally
    //   148	153	267	java/lang/Exception
    //   157	177	267	java/lang/Exception
  }
  
  public static String s(Context paramContext)
  {
    int i = 0;
    if (!((KeyguardManager)paramContext.getSystemService("keyguard")).isKeyguardSecure()) {
      return "0:0";
    }
    long l1 = 0L;
    while (i < 5)
    {
      paramContext = new String[] { "/data/system/password.key", "/data/system/gesture.key", "/data/system/gatekeeper.password.key", "/data/system/gatekeeper.gesture.key", "/data/system/gatekeeper.pattern.key" }[i];
      long l2 = -1L;
      try
      {
        long l3 = new File(paramContext).lastModified();
        l2 = l3;
      }
      catch (Exception paramContext)
      {
        for (;;) {}
      }
      l1 = Math.max(l2, l1);
      i += 1;
    }
    return "1:" + l1;
  }
  
  public static String t()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("00" + ":");
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put("BRAND", "generic");
    localLinkedHashMap.put("BOARD", "unknown");
    localLinkedHashMap.put("DEVICE", "generic");
    localLinkedHashMap.put("HARDWARE", "goldfish");
    localLinkedHashMap.put("PRODUCT", "sdk");
    localLinkedHashMap.put("MODEL", "sdk");
    Iterator localIterator = localLinkedHashMap.keySet().iterator();
    String str2;
    if (localIterator.hasNext()) {
      str2 = (String)localIterator.next();
    }
    for (;;)
    {
      try
      {
        String str1 = (String)Build.class.getField(str2).get(null);
        str2 = (String)localLinkedHashMap.get(str2);
        if (str1 == null) {
          break label261;
        }
        str1 = str1.toLowerCase();
        if (str1 == null) {
          break label255;
        }
        boolean bool = str1.contains(str2);
        if (!bool) {
          break label255;
        }
        c = '1';
        localStringBuilder.append(c);
        break;
      }
      catch (Exception localException)
      {
        localStringBuilder.append('0');
        break;
      }
      finally
      {
        localStringBuilder.append('0');
      }
      return localStringBuilder.toString();
      label255:
      char c = '0';
      continue;
      label261:
      Object localObject2 = null;
    }
  }
  
  public static String t(Context paramContext)
  {
    for (;;)
    {
      try
      {
        paramContext = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        j = paramContext.getIntExtra("level", -1);
        i = paramContext.getIntExtra("status", -1);
        if (i == 2) {
          break label90;
        }
        if (i != 5) {
          break label95;
        }
      }
      catch (Exception paramContext)
      {
        int j;
        StringBuilder localStringBuilder;
        return "";
      }
      localStringBuilder = new StringBuilder();
      if (i != 0)
      {
        paramContext = "1";
        return paramContext + ":" + j;
      }
      paramContext = "0";
      continue;
      label90:
      int i = 1;
      continue;
      label95:
      i = 0;
    }
  }
  
  public static String u()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("00" + ":");
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put("ro.hardware", "goldfish");
    localLinkedHashMap.put("ro.kernel.qemu", "1");
    localLinkedHashMap.put("ro.product.device", "generic");
    localLinkedHashMap.put("ro.product.model", "sdk");
    localLinkedHashMap.put("ro.product.brand", "generic");
    localLinkedHashMap.put("ro.product.name", "sdk");
    localLinkedHashMap.put("ro.build.fingerprint", "test-keys");
    localLinkedHashMap.put("ro.product.manufacturer", "unknow");
    Iterator localIterator = localLinkedHashMap.keySet().iterator();
    if (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      String str1 = (String)localLinkedHashMap.get(str2);
      str2 = a.b(str2, "");
      if ((str2 == null) || (!str2.contains(str1))) {
        break label231;
      }
    }
    label231:
    for (char c = '1';; c = '0')
    {
      localStringBuilder.append(c);
      break;
      return localStringBuilder.toString();
    }
  }
  
  private static String v()
  {
    try
    {
      Object localObject1 = Collections.list(NetworkInterface.getNetworkInterfaces());
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          Object localObject2 = (NetworkInterface)((Iterator)localObject1).next();
          if ((localObject2 != null) && (((NetworkInterface)localObject2).getName() != null) && (((NetworkInterface)localObject2).getName().equalsIgnoreCase("wlan0")))
          {
            localObject1 = ((NetworkInterface)localObject2).getHardwareAddress();
            if (localObject1 == null) {
              return "02:00:00:00:00:00";
            }
            localObject2 = new StringBuilder();
            int j = localObject1.length;
            int i = 0;
            while (i < j)
            {
              ((StringBuilder)localObject2).append(String.format("%02X:", new Object[] { Integer.valueOf(localObject1[i] & 0xFF) }));
              i += 1;
            }
            if (((StringBuilder)localObject2).length() > 0) {
              ((StringBuilder)localObject2).deleteCharAt(((StringBuilder)localObject2).length() - 1);
            }
            localObject1 = ((StringBuilder)localObject2).toString();
            return (String)localObject1;
          }
        }
      }
    }
    catch (Exception localException) {}
    return "02:00:00:00:00:00";
  }
  
  /* Error */
  private static String w()
  {
    // Byte code:
    //   0: new 221	java/io/FileReader
    //   3: dup
    //   4: ldc_w 704
    //   7: invokespecial 222	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   10: astore_2
    //   11: new 224	java/io/BufferedReader
    //   14: dup
    //   15: aload_2
    //   16: sipush 8192
    //   19: invokespecial 292	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   22: astore_1
    //   23: aload_1
    //   24: invokevirtual 226	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   27: astore_0
    //   28: aload_0
    //   29: invokestatic 212	com/alipay/b/a/a/a/a:a	(Ljava/lang/String;)Z
    //   32: ifne +18 -> 50
    //   35: aload_0
    //   36: invokevirtual 156	java/lang/String:trim	()Ljava/lang/String;
    //   39: astore_0
    //   40: aload_1
    //   41: invokevirtual 234	java/io/BufferedReader:close	()V
    //   44: aload_2
    //   45: invokevirtual 233	java/io/FileReader:close	()V
    //   48: aload_0
    //   49: areturn
    //   50: aload_1
    //   51: invokevirtual 234	java/io/BufferedReader:close	()V
    //   54: aload_2
    //   55: invokevirtual 233	java/io/FileReader:close	()V
    //   58: ldc 26
    //   60: areturn
    //   61: astore_0
    //   62: aconst_null
    //   63: astore_0
    //   64: aconst_null
    //   65: astore_2
    //   66: aload_0
    //   67: ifnull +7 -> 74
    //   70: aload_0
    //   71: invokevirtual 234	java/io/BufferedReader:close	()V
    //   74: aload_2
    //   75: ifnull -17 -> 58
    //   78: aload_2
    //   79: invokevirtual 233	java/io/FileReader:close	()V
    //   82: goto -24 -> 58
    //   85: astore_0
    //   86: goto -28 -> 58
    //   89: astore_0
    //   90: aconst_null
    //   91: astore_1
    //   92: aconst_null
    //   93: astore_2
    //   94: aload_1
    //   95: ifnull +7 -> 102
    //   98: aload_1
    //   99: invokevirtual 234	java/io/BufferedReader:close	()V
    //   102: aload_2
    //   103: ifnull +7 -> 110
    //   106: aload_2
    //   107: invokevirtual 233	java/io/FileReader:close	()V
    //   110: aload_0
    //   111: athrow
    //   112: astore_1
    //   113: goto -69 -> 44
    //   116: astore_1
    //   117: aload_0
    //   118: areturn
    //   119: astore_0
    //   120: goto -66 -> 54
    //   123: astore_0
    //   124: goto -66 -> 58
    //   127: astore_0
    //   128: goto -54 -> 74
    //   131: astore_1
    //   132: goto -30 -> 102
    //   135: astore_1
    //   136: goto -26 -> 110
    //   139: astore_0
    //   140: aconst_null
    //   141: astore_1
    //   142: goto -48 -> 94
    //   145: astore_0
    //   146: goto -52 -> 94
    //   149: astore_0
    //   150: aconst_null
    //   151: astore_0
    //   152: goto -86 -> 66
    //   155: astore_0
    //   156: aload_1
    //   157: astore_0
    //   158: goto -92 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   27	22	0	str1	String
    //   61	1	0	localException1	Exception
    //   63	8	0	localObject1	Object
    //   85	1	0	localException2	Exception
    //   89	29	0	str2	String
    //   119	1	0	localException3	Exception
    //   123	1	0	localException4	Exception
    //   127	1	0	localException5	Exception
    //   139	1	0	localObject2	Object
    //   145	1	0	localObject3	Object
    //   149	1	0	localException6	Exception
    //   151	1	0	localObject4	Object
    //   155	1	0	localException7	Exception
    //   157	1	0	localObject5	Object
    //   22	77	1	localBufferedReader	java.io.BufferedReader
    //   112	1	1	localException8	Exception
    //   116	1	1	localException9	Exception
    //   131	1	1	localException10	Exception
    //   135	1	1	localException11	Exception
    //   141	16	1	localObject6	Object
    //   10	97	2	localFileReader	java.io.FileReader
    // Exception table:
    //   from	to	target	type
    //   0	11	61	java/lang/Exception
    //   78	82	85	java/lang/Exception
    //   0	11	89	finally
    //   40	44	112	java/lang/Exception
    //   44	48	116	java/lang/Exception
    //   50	54	119	java/lang/Exception
    //   54	58	123	java/lang/Exception
    //   70	74	127	java/lang/Exception
    //   98	102	131	java/lang/Exception
    //   106	110	135	java/lang/Exception
    //   11	23	139	finally
    //   23	40	145	finally
    //   11	23	149	java/lang/Exception
    //   23	40	155	java/lang/Exception
  }
  
  /* Error */
  private static String x()
  {
    // Byte code:
    //   0: ldc 26
    //   2: astore_1
    //   3: new 221	java/io/FileReader
    //   6: dup
    //   7: ldc 121
    //   9: invokespecial 222	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: new 224	java/io/BufferedReader
    //   16: dup
    //   17: aload_2
    //   18: sipush 8192
    //   21: invokespecial 292	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   24: astore_3
    //   25: aload_3
    //   26: invokevirtual 226	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   29: astore 4
    //   31: aload_1
    //   32: astore_0
    //   33: aload 4
    //   35: ifnull +48 -> 83
    //   38: aload 4
    //   40: invokestatic 212	com/alipay/b/a/a/a/a:a	(Ljava/lang/String;)Z
    //   43: ifne -18 -> 25
    //   46: aload 4
    //   48: ldc -110
    //   50: invokevirtual 297	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   53: astore_0
    //   54: aload_0
    //   55: ifnull -30 -> 25
    //   58: aload_0
    //   59: arraylength
    //   60: iconst_1
    //   61: if_icmple -36 -> 25
    //   64: aload_0
    //   65: iconst_0
    //   66: aaload
    //   67: ldc_w 706
    //   70: invokevirtual 562	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   73: ifeq -48 -> 25
    //   76: aload_0
    //   77: iconst_1
    //   78: aaload
    //   79: invokevirtual 156	java/lang/String:trim	()Ljava/lang/String;
    //   82: astore_0
    //   83: aload_2
    //   84: invokevirtual 233	java/io/FileReader:close	()V
    //   87: aload_3
    //   88: invokevirtual 234	java/io/BufferedReader:close	()V
    //   91: aload_0
    //   92: astore_1
    //   93: aload_1
    //   94: areturn
    //   95: astore_0
    //   96: aconst_null
    //   97: astore_0
    //   98: aconst_null
    //   99: astore_2
    //   100: aload_2
    //   101: ifnull +7 -> 108
    //   104: aload_2
    //   105: invokevirtual 233	java/io/FileReader:close	()V
    //   108: aload_0
    //   109: ifnull -16 -> 93
    //   112: aload_0
    //   113: invokevirtual 234	java/io/BufferedReader:close	()V
    //   116: ldc 26
    //   118: areturn
    //   119: astore_0
    //   120: ldc 26
    //   122: areturn
    //   123: astore_0
    //   124: aconst_null
    //   125: astore_1
    //   126: aconst_null
    //   127: astore_2
    //   128: aload_2
    //   129: ifnull +7 -> 136
    //   132: aload_2
    //   133: invokevirtual 233	java/io/FileReader:close	()V
    //   136: aload_1
    //   137: ifnull +7 -> 144
    //   140: aload_1
    //   141: invokevirtual 234	java/io/BufferedReader:close	()V
    //   144: aload_0
    //   145: athrow
    //   146: astore_1
    //   147: goto -60 -> 87
    //   150: astore_1
    //   151: aload_0
    //   152: areturn
    //   153: astore_2
    //   154: goto -46 -> 108
    //   157: astore_2
    //   158: goto -22 -> 136
    //   161: astore_1
    //   162: goto -18 -> 144
    //   165: astore_0
    //   166: aconst_null
    //   167: astore_1
    //   168: goto -40 -> 128
    //   171: astore_0
    //   172: aload_3
    //   173: astore_1
    //   174: goto -46 -> 128
    //   177: astore_0
    //   178: aconst_null
    //   179: astore_0
    //   180: goto -80 -> 100
    //   183: astore_0
    //   184: aload_3
    //   185: astore_0
    //   186: goto -86 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   32	60	0	localObject1	Object
    //   95	1	0	localException1	Exception
    //   97	16	0	localObject2	Object
    //   119	1	0	localException2	Exception
    //   123	29	0	str1	String
    //   165	1	0	localObject3	Object
    //   171	1	0	localObject4	Object
    //   177	1	0	localException3	Exception
    //   179	1	0	localObject5	Object
    //   183	1	0	localException4	Exception
    //   185	1	0	localBufferedReader1	java.io.BufferedReader
    //   2	139	1	localObject6	Object
    //   146	1	1	localException5	Exception
    //   150	1	1	localException6	Exception
    //   161	1	1	localException7	Exception
    //   167	7	1	localObject7	Object
    //   12	121	2	localFileReader	java.io.FileReader
    //   153	1	2	localException8	Exception
    //   157	1	2	localException9	Exception
    //   24	161	3	localBufferedReader2	java.io.BufferedReader
    //   29	18	4	str2	String
    // Exception table:
    //   from	to	target	type
    //   3	13	95	java/lang/Exception
    //   112	116	119	java/lang/Exception
    //   3	13	123	finally
    //   83	87	146	java/lang/Exception
    //   87	91	150	java/lang/Exception
    //   104	108	153	java/lang/Exception
    //   132	136	157	java/lang/Exception
    //   140	144	161	java/lang/Exception
    //   13	25	165	finally
    //   25	31	171	finally
    //   38	54	171	finally
    //   58	83	171	finally
    //   13	25	177	java/lang/Exception
    //   25	31	183	java/lang/Exception
    //   38	54	183	java/lang/Exception
    //   58	83	183	java/lang/Exception
  }
  
  private static String y()
  {
    Object localObject1 = "";
    try
    {
      Object localObject2 = BluetoothAdapter.getDefaultAdapter();
      if ((localObject2 != null) && (!((BluetoothAdapter)localObject2).isEnabled())) {
        return "";
      }
      localObject2 = ((BluetoothAdapter)localObject2).getAddress();
      localObject1 = localObject2;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    if (localObject1 == null) {
      return "";
    }
    return (String)localObject1;
  }
  
  private static String z()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        localObject = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration;
        while (!localEnumeration.hasMoreElements())
        {
          if (!((Enumeration)localObject).hasMoreElements()) {
            break;
          }
          localEnumeration = ((NetworkInterface)((Enumeration)localObject).nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration.nextElement();
      } while ((localInetAddress.isLoopbackAddress()) || (!(localInetAddress instanceof Inet4Address)));
      Object localObject = localInetAddress.getHostAddress().toString();
      return (String)localObject;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public final String e()
  {
    try
    {
      int i = new File("/sys/devices/system/cpu/").listFiles(new c(this)).length;
      return String.valueOf(i);
    }
    catch (Exception localException) {}
    return "1";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\alipay\b\a\a\b\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */