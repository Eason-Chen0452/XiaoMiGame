package com.wali.gamecenter.report.utils;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class ZSIMInfo
{
  private static final String[] INVALID_IMEIS = { null, "", "000000000000000" };
  private static final String[] INVALID_MACS = { "02:00:00:00:00:00" };
  
  public static String SHA1(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
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
  
  /* Error */
  public static String get3gMacAddress(Context paramContext)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: ldc 74
    //   7: invokevirtual 80	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   10: checkcast 82	android/net/wifi/WifiManager
    //   13: astore 4
    //   15: aload 4
    //   17: ifnull +13 -> 30
    //   20: aload_3
    //   21: astore_0
    //   22: aload 4
    //   24: invokevirtual 86	android/net/wifi/WifiManager:isWifiEnabled	()Z
    //   27: ifne +212 -> 239
    //   30: new 88	java/io/File
    //   33: dup
    //   34: ldc 90
    //   36: invokespecial 93	java/io/File:<init>	(Ljava/lang/String;)V
    //   39: invokevirtual 97	java/io/File:listFiles	()[Ljava/io/File;
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
    //   59: invokevirtual 100	java/io/File:isDirectory	()Z
    //   62: ifeq +192 -> 254
    //   65: aload 4
    //   67: iload_1
    //   68: aaload
    //   69: invokevirtual 104	java/io/File:getName	()Ljava/lang/String;
    //   72: ldc 106
    //   74: invokevirtual 110	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   77: istore_2
    //   78: aload_0
    //   79: astore_3
    //   80: iload_2
    //   81: ifne +173 -> 254
    //   84: new 112	java/io/FileInputStream
    //   87: dup
    //   88: new 114	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 115	java/lang/StringBuilder:<init>	()V
    //   95: aload 4
    //   97: iload_1
    //   98: aaload
    //   99: invokevirtual 118	java/io/File:getPath	()Ljava/lang/String;
    //   102: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: ldc 124
    //   107: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokespecial 128	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   116: astore_3
    //   117: aload_3
    //   118: invokevirtual 132	java/io/FileInputStream:read	()I
    //   121: pop
    //   122: aload_3
    //   123: invokevirtual 135	java/io/FileInputStream:close	()V
    //   126: aconst_null
    //   127: astore_0
    //   128: iconst_m1
    //   129: iload_1
    //   130: if_icmpeq +280 -> 410
    //   133: new 112	java/io/FileInputStream
    //   136: dup
    //   137: new 114	java/lang/StringBuilder
    //   140: dup
    //   141: ldc 90
    //   143: invokespecial 136	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   146: aload 4
    //   148: iload_1
    //   149: aaload
    //   150: invokevirtual 104	java/io/File:getName	()Ljava/lang/String;
    //   153: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: ldc -118
    //   158: invokevirtual 122	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokespecial 128	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   167: astore_3
    //   168: aload_3
    //   169: invokevirtual 141	java/io/FileInputStream:available	()I
    //   172: istore_1
    //   173: iload_1
    //   174: ifle +231 -> 405
    //   177: iload_1
    //   178: newarray <illegal type>
    //   180: astore_0
    //   181: aload_3
    //   182: aload_0
    //   183: invokevirtual 144	java/io/FileInputStream:read	([B)I
    //   186: pop
    //   187: new 11	java/lang/String
    //   190: dup
    //   191: aload_0
    //   192: invokespecial 147	java/lang/String:<init>	([B)V
    //   195: astore_0
    //   196: aload_0
    //   197: ldc -107
    //   199: invokevirtual 153	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   202: istore_1
    //   203: iload_1
    //   204: iconst_m1
    //   205: if_icmpeq +197 -> 402
    //   208: aload_0
    //   209: iconst_0
    //   210: iload_1
    //   211: invokevirtual 62	java/lang/String:substring	(II)Ljava/lang/String;
    //   214: astore 4
    //   216: aload 4
    //   218: invokevirtual 156	java/lang/String:length	()I
    //   221: istore_1
    //   222: iload_1
    //   223: ifne +173 -> 396
    //   226: aconst_null
    //   227: astore_0
    //   228: aload_3
    //   229: invokevirtual 135	java/io/FileInputStream:close	()V
    //   232: aload_0
    //   233: astore_3
    //   234: aload_3
    //   235: invokestatic 159	com/wali/gamecenter/report/utils/ZSIMInfo:upperCase	(Ljava/lang/String;)Ljava/lang/String;
    //   238: astore_0
    //   239: aload_0
    //   240: areturn
    //   241: astore_3
    //   242: aload_0
    //   243: astore_3
    //   244: aload_0
    //   245: ifnull +9 -> 254
    //   248: aload_0
    //   249: invokevirtual 135	java/io/FileInputStream:close	()V
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
    //   269: invokevirtual 135	java/io/FileInputStream:close	()V
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
    //   292: invokevirtual 135	java/io/FileInputStream:close	()V
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
    //   312: invokevirtual 135	java/io/FileInputStream:close	()V
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
    //   30	44	274	java/lang/Exception
    //   46	53	274	java/lang/Exception
    //   55	78	274	java/lang/Exception
    //   122	126	274	java/lang/Exception
    //   228	232	274	java/lang/Exception
    //   234	239	274	java/lang/Exception
    //   248	252	274	java/lang/Exception
    //   268	272	274	java/lang/Exception
    //   272	274	274	java/lang/Exception
    //   290	295	274	java/lang/Exception
    //   311	315	274	java/lang/Exception
    //   315	317	274	java/lang/Exception
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
  
  public static String getDeviceID(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
  }
  
  public static String getIMSI(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
  }
  
  public static String getMacAddress(Context paramContext)
  {
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    int i;
    if (paramContext != null)
    {
      paramContext = paramContext.getConnectionInfo();
      if (paramContext != null)
      {
        paramContext = paramContext.getMacAddress();
        i = 0;
        if (i >= INVALID_MACS.length) {
          break label70;
        }
        if (TextUtils.equals(paramContext, INVALID_MACS[i])) {
          paramContext = null;
        }
      }
    }
    label70:
    for (;;)
    {
      if (paramContext != null)
      {
        return upperCase(paramContext);
        i += 1;
        break;
      }
      return null;
    }
  }
  
  public static String getMacAddressNew(Context paramContext)
  {
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    int i;
    if (paramContext != null)
    {
      paramContext = paramContext.getConnectionInfo();
      if (paramContext != null)
      {
        paramContext = paramContext.getMacAddress();
        i = 0;
        if (i >= INVALID_MACS.length) {
          break label67;
        }
        if (TextUtils.equals(paramContext, INVALID_MACS[i])) {
          paramContext = null;
        }
      }
    }
    label67:
    for (;;)
    {
      if (paramContext != null)
      {
        return paramContext;
        i += 1;
        break;
      }
      return null;
    }
  }
  
  public static String getPhoneType(Context paramContext)
  {
    int i = ((TelephonyManager)paramContext.getSystemService("phone")).getPhoneType();
    if (i == 1) {
      return "GSM";
    }
    if (i == 2) {
      return "CDMA";
    }
    return "未知";
  }
  
  public static String getSIMCountryIso(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimCountryIso();
  }
  
  public static String getSIMNumber(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimSerialNumber();
  }
  
  public static String getSIMOperator(Context paramContext)
  {
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperator();
    if (("46000".equals(paramContext)) || ("46002".equals(paramContext)) || ("45412".equals(paramContext)) || ("46007".equals(paramContext))) {
      return "中国移动";
    }
    if ("46001".equals(paramContext)) {
      return "中国联通";
    }
    if ("46003".equals(paramContext)) {
      return "中国电信";
    }
    return "未知";
  }
  
  public static String getSIMOperatorEnName(Context paramContext)
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
  
  public static String getSIMOperatorName(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperatorName();
  }
  
  public static int getSIMState(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimState();
  }
  
  public static String getSha1DeviceID(Context paramContext)
  {
    paramContext = getDeviceID(paramContext);
    int i = 0;
    if (i < INVALID_IMEIS.length) {
      if (TextUtils.equals(paramContext, INVALID_IMEIS[i])) {
        paramContext = null;
      }
    }
    for (;;)
    {
      return SHA1(paramContext);
      i += 1;
      break;
    }
  }
  
  private static String upperCase(String paramString)
  {
    return paramString.replace(":", "").toUpperCase();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\wali\gamecenter\report\utils\ZSIMInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */