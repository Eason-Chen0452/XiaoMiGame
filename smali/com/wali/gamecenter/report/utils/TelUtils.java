package com.wali.gamecenter.report.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Random;
import java.util.UUID;

public class TelUtils
{
  public static int versionCode = 1;
  
  /* Error */
  public static String get3gMacAddress(Context paramContext)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: ldc 22
    //   7: invokevirtual 28	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   10: checkcast 30	android/net/wifi/WifiManager
    //   13: astore 4
    //   15: aload 4
    //   17: ifnull +13 -> 30
    //   20: aload_3
    //   21: astore_0
    //   22: aload 4
    //   24: invokevirtual 34	android/net/wifi/WifiManager:isWifiEnabled	()Z
    //   27: ifne +212 -> 239
    //   30: new 36	java/io/File
    //   33: dup
    //   34: ldc 38
    //   36: invokespecial 41	java/io/File:<init>	(Ljava/lang/String;)V
    //   39: invokevirtual 45	java/io/File:listFiles	()[Ljava/io/File;
    //   42: astore 4
    //   44: aconst_null
    //   45: astore_0
    //   46: iload_1
    //   47: aload 4
    //   49: arraylength
    //   50: if_icmpge +365 -> 415
    //   53: aload_0
    //   54: astore_3
    //   55: aload 4
    //   57: iload_1
    //   58: aaload
    //   59: invokevirtual 48	java/io/File:isDirectory	()Z
    //   62: ifeq +192 -> 254
    //   65: aload 4
    //   67: iload_1
    //   68: aaload
    //   69: invokevirtual 52	java/io/File:getName	()Ljava/lang/String;
    //   72: ldc 54
    //   74: invokevirtual 60	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   77: istore_2
    //   78: aload_0
    //   79: astore_3
    //   80: iload_2
    //   81: ifne +173 -> 254
    //   84: new 62	java/io/FileInputStream
    //   87: dup
    //   88: new 64	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   95: aload 4
    //   97: iload_1
    //   98: aaload
    //   99: invokevirtual 68	java/io/File:getPath	()Ljava/lang/String;
    //   102: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: ldc 74
    //   107: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokespecial 78	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   116: astore_3
    //   117: aload_3
    //   118: invokevirtual 82	java/io/FileInputStream:read	()I
    //   121: pop
    //   122: aload_3
    //   123: invokevirtual 85	java/io/FileInputStream:close	()V
    //   126: aconst_null
    //   127: astore_0
    //   128: iconst_m1
    //   129: iload_1
    //   130: if_icmpeq +280 -> 410
    //   133: new 62	java/io/FileInputStream
    //   136: dup
    //   137: new 64	java/lang/StringBuilder
    //   140: dup
    //   141: ldc 38
    //   143: invokespecial 86	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   146: aload 4
    //   148: iload_1
    //   149: aaload
    //   150: invokevirtual 52	java/io/File:getName	()Ljava/lang/String;
    //   153: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc 88
    //   158: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 77	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokespecial 78	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   167: astore_3
    //   168: aload_3
    //   169: invokevirtual 91	java/io/FileInputStream:available	()I
    //   172: istore_1
    //   173: iload_1
    //   174: ifle +231 -> 405
    //   177: iload_1
    //   178: newarray <illegal type>
    //   180: astore_0
    //   181: aload_3
    //   182: aload_0
    //   183: invokevirtual 94	java/io/FileInputStream:read	([B)I
    //   186: pop
    //   187: new 56	java/lang/String
    //   190: dup
    //   191: aload_0
    //   192: invokespecial 97	java/lang/String:<init>	([B)V
    //   195: astore_0
    //   196: aload_0
    //   197: ldc 99
    //   199: invokevirtual 103	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   202: istore_1
    //   203: iload_1
    //   204: iconst_m1
    //   205: if_icmpeq +197 -> 402
    //   208: aload_0
    //   209: iconst_0
    //   210: iload_1
    //   211: invokevirtual 107	java/lang/String:substring	(II)Ljava/lang/String;
    //   214: astore 4
    //   216: aload 4
    //   218: invokevirtual 110	java/lang/String:length	()I
    //   221: istore_1
    //   222: iload_1
    //   223: ifne +173 -> 396
    //   226: aconst_null
    //   227: astore_0
    //   228: aload_3
    //   229: invokevirtual 85	java/io/FileInputStream:close	()V
    //   232: aload_0
    //   233: astore_3
    //   234: aload_3
    //   235: invokestatic 114	com/wali/gamecenter/report/utils/TelUtils:upperCase	(Ljava/lang/String;)Ljava/lang/String;
    //   238: astore_0
    //   239: aload_0
    //   240: areturn
    //   241: astore_3
    //   242: aload_0
    //   243: astore_3
    //   244: aload_0
    //   245: ifnull +9 -> 254
    //   248: aload_0
    //   249: invokevirtual 85	java/io/FileInputStream:close	()V
    //   252: aconst_null
    //   253: astore_3
    //   254: iload_1
    //   255: iconst_1
    //   256: iadd
    //   257: istore_1
    //   258: aload_3
    //   259: astore_0
    //   260: goto -214 -> 46
    //   263: astore_3
    //   264: aload_0
    //   265: ifnull +7 -> 272
    //   268: aload_0
    //   269: invokevirtual 85	java/io/FileInputStream:close	()V
    //   272: aload_3
    //   273: athrow
    //   274: astore_0
    //   275: aconst_null
    //   276: areturn
    //   277: astore_3
    //   278: aload_0
    //   279: astore 4
    //   281: aconst_null
    //   282: astore_0
    //   283: aload_0
    //   284: astore_3
    //   285: aload 4
    //   287: ifnull -53 -> 234
    //   290: aload 4
    //   292: invokevirtual 85	java/io/FileInputStream:close	()V
    //   295: aload_0
    //   296: astore_3
    //   297: goto -63 -> 234
    //   300: astore_3
    //   301: aload_0
    //   302: astore_3
    //   303: goto -69 -> 234
    //   306: astore_3
    //   307: aload_0
    //   308: ifnull +7 -> 315
    //   311: aload_0
    //   312: invokevirtual 85	java/io/FileInputStream:close	()V
    //   315: aload_3
    //   316: athrow
    //   317: astore_0
    //   318: goto -192 -> 126
    //   321: astore_0
    //   322: goto -70 -> 252
    //   325: astore_0
    //   326: goto -54 -> 272
    //   329: astore_3
    //   330: aload_0
    //   331: astore_3
    //   332: goto -98 -> 234
    //   335: astore_0
    //   336: goto -21 -> 315
    //   339: astore_0
    //   340: aload_3
    //   341: astore 4
    //   343: aload_0
    //   344: astore_3
    //   345: aload 4
    //   347: astore_0
    //   348: goto -41 -> 307
    //   351: astore_0
    //   352: aconst_null
    //   353: astore_0
    //   354: aload_3
    //   355: astore 4
    //   357: goto -74 -> 283
    //   360: astore 4
    //   362: aload_3
    //   363: astore 4
    //   365: goto -82 -> 283
    //   368: astore_0
    //   369: aload 4
    //   371: astore_0
    //   372: aload_3
    //   373: astore 4
    //   375: goto -92 -> 283
    //   378: astore_0
    //   379: aload_3
    //   380: astore 4
    //   382: aload_0
    //   383: astore_3
    //   384: aload 4
    //   386: astore_0
    //   387: goto -123 -> 264
    //   390: astore_0
    //   391: aload_3
    //   392: astore_0
    //   393: goto -151 -> 242
    //   396: aload 4
    //   398: astore_0
    //   399: goto -171 -> 228
    //   402: goto -174 -> 228
    //   405: aconst_null
    //   406: astore_0
    //   407: goto -179 -> 228
    //   410: aconst_null
    //   411: astore_3
    //   412: goto -178 -> 234
    //   415: iconst_m1
    //   416: istore_1
    //   417: goto -289 -> 128
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	420	0	paramContext	Context
    //   1	416	1	i	int
    //   77	4	2	bool	boolean
    //   3	232	3	localObject1	Object
    //   241	1	3	localThrowable1	Throwable
    //   243	16	3	localContext1	Context
    //   263	10	3	localObject2	Object
    //   277	1	3	localThrowable2	Throwable
    //   284	13	3	localContext2	Context
    //   300	1	3	localIOException1	java.io.IOException
    //   302	1	3	localContext3	Context
    //   306	10	3	localObject3	Object
    //   329	1	3	localIOException2	java.io.IOException
    //   331	81	3	localContext4	Context
    //   13	343	4	localObject4	Object
    //   360	1	4	localThrowable3	Throwable
    //   363	34	4	localContext5	Context
    // Exception table:
    //   from	to	target	type
    //   84	117	241	java/lang/Throwable
    //   84	117	263	finally
    //   30	44	274	java/lang/Throwable
    //   46	53	274	java/lang/Throwable
    //   55	78	274	java/lang/Throwable
    //   122	126	274	java/lang/Throwable
    //   228	232	274	java/lang/Throwable
    //   234	239	274	java/lang/Throwable
    //   248	252	274	java/lang/Throwable
    //   268	272	274	java/lang/Throwable
    //   272	274	274	java/lang/Throwable
    //   290	295	274	java/lang/Throwable
    //   311	315	274	java/lang/Throwable
    //   315	317	274	java/lang/Throwable
    //   133	168	277	java/lang/Throwable
    //   290	295	300	java/io/IOException
    //   133	168	306	finally
    //   122	126	317	java/io/IOException
    //   248	252	321	java/io/IOException
    //   268	272	325	java/io/IOException
    //   228	232	329	java/io/IOException
    //   311	315	335	java/io/IOException
    //   168	173	339	finally
    //   177	196	339	finally
    //   196	203	339	finally
    //   208	216	339	finally
    //   216	222	339	finally
    //   168	173	351	java/lang/Throwable
    //   177	196	351	java/lang/Throwable
    //   196	203	360	java/lang/Throwable
    //   208	216	360	java/lang/Throwable
    //   216	222	368	java/lang/Throwable
    //   117	122	378	finally
    //   117	122	390	java/lang/Throwable
  }
  
  public static String getDeviceId(Context paramContext)
  {
    String str = "";
    Object localObject = str;
    try
    {
      if (isPad())
      {
        localObject = str;
        paramContext = ZSIMInfo.getMacAddressNew(paramContext);
        localObject = paramContext;
        if (!TextUtils.isEmpty(paramContext))
        {
          localObject = paramContext;
          return ZSIMInfo.SHA1(paramContext);
        }
      }
      else
      {
        localObject = str;
        paramContext = ZSIMInfo.getSha1DeviceID(paramContext);
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
  
  private static String getOSVersion()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(getSystemProperties("ro.build.version.release"));
    localStringBuffer.append("_");
    if (isAlphaBuild()) {
      localStringBuffer.append("alpha");
    }
    for (;;)
    {
      localStringBuffer.append("_");
      localStringBuffer.append(Build.VERSION.INCREMENTAL);
      return localStringBuffer.toString();
      if (isDevelopmentVersion()) {
        localStringBuffer.append("develop");
      } else if (isStableVersion()) {
        localStringBuffer.append("stable");
      } else {
        localStringBuffer.append("na");
      }
    }
  }
  
  public static int getRandom(int paramInt)
  {
    return new Random().nextInt(paramInt) + 1;
  }
  
  public static String getRandomIndex()
  {
    return MD5.getMD5_16(UUID.randomUUID().toString().getBytes());
  }
  
  public static String getSIMOperatorName(Context paramContext)
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
  
  private static String getSystemProperties(String paramString)
  {
    try
    {
      paramString = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { paramString });
      return paramString;
    }
    catch (Exception paramString) {}
    return "";
  }
  
  public static int getVersionCode(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 16384).versionCode;
      return i;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return 0;
  }
  
  public static String get_device_agent_(Context paramContext)
  {
    paramContext = new StringBuffer();
    paramContext.append(getSystemProperties("ro.product.manufacturer"));
    paramContext.append("|");
    paramContext.append(getSystemProperties("ro.product.model"));
    paramContext.append("|");
    paramContext.append(getOSVersion());
    paramContext.append("|");
    paramContext.append(getSystemProperties("ro.build.display.id"));
    paramContext.append("|");
    paramContext.append(getSystemProperties("ro.build.version.sdk"));
    paramContext.append("|");
    paramContext.append(getSystemProperties("ro.product.device"));
    return paramContext.toString();
  }
  
  private static boolean isAlphaBuild()
  {
    try
    {
      boolean bool = getSystemProperties("ro.product.mod_device").endsWith("_alpha");
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  private static boolean isDevelopmentVersion()
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
    catch (Throwable localThrowable) {}
    return false;
  }
  
  private static boolean isPad()
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
  
  private static boolean isStableVersion()
  {
    return ("user".equals(Build.TYPE)) && (!isDevelopmentVersion());
  }
  
  private static String upperCase(String paramString)
  {
    return paramString.replace(":", "").toUpperCase();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\utils\TelUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */