package com.xiaomi.hy.dj.f;

import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class p
{
  public static String a(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
  }
  
  public static String a(String paramString)
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
  
  public static String b(Context paramContext)
  {
    String str2 = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    String str1 = str2;
    if (TextUtils.isEmpty(str2)) {
      str1 = k(paramContext);
    }
    paramContext = str1;
    if (TextUtils.isEmpty(str1)) {
      paramContext = "";
    }
    return paramContext;
  }
  
  private static String b(String paramString)
  {
    return paramString.replace(":", "").toUpperCase();
  }
  
  public static int c(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimState();
  }
  
  public static String d(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimSerialNumber();
  }
  
  public static String e(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperatorName();
  }
  
  public static String f(Context paramContext)
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
  
  public static String g(Context paramContext)
  {
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperator();
    if (("46000".equals(paramContext)) || ("46002".equals(paramContext)) || ("45412".equals(paramContext)) || ("46007".equals(paramContext))) {
      return "CMCC";
    }
    if ("46001".equals(paramContext)) {
      return "UNICOM";
    }
    if ("46003".equals(paramContext)) {
      return "TELECOM";
    }
    return "UNKNOWN";
  }
  
  public static String h(Context paramContext)
  {
    paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperator();
    if (("46000".equals(paramContext)) || ("46002".equals(paramContext)) || ("45412".equals(paramContext)) || ("46007".equals(paramContext))) {
      return "CMCC";
    }
    if ("46001".equals(paramContext)) {
      return "UNICOM";
    }
    if ("46003".equals(paramContext)) {
      return "TELECOM";
    }
    return "UNKNOW";
  }
  
  public static String i(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimCountryIso();
  }
  
  /* Error */
  public static String j(Context paramContext)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: ldc -106
    //   5: invokevirtual 19	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   8: checkcast 152	android/net/wifi/WifiManager
    //   11: astore_0
    //   12: aload_0
    //   13: ifnull +10 -> 23
    //   16: aload_0
    //   17: invokevirtual 156	android/net/wifi/WifiManager:isWifiEnabled	()Z
    //   20: ifne +439 -> 459
    //   23: new 158	java/io/File
    //   26: dup
    //   27: ldc -96
    //   29: invokespecial 163	java/io/File:<init>	(Ljava/lang/String;)V
    //   32: invokevirtual 167	java/io/File:listFiles	()[Ljava/io/File;
    //   35: astore 5
    //   37: aconst_null
    //   38: astore_0
    //   39: iload_1
    //   40: aload 5
    //   42: arraylength
    //   43: if_icmpge +411 -> 454
    //   46: aload_0
    //   47: astore_3
    //   48: aload 5
    //   50: iload_1
    //   51: aaload
    //   52: invokevirtual 170	java/io/File:isDirectory	()Z
    //   55: ifeq +220 -> 275
    //   58: aload 5
    //   60: iload_1
    //   61: aaload
    //   62: invokevirtual 173	java/io/File:getName	()Ljava/lang/String;
    //   65: ldc -81
    //   67: invokevirtual 179	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   70: istore_2
    //   71: aload_0
    //   72: astore_3
    //   73: iload_2
    //   74: ifne +201 -> 275
    //   77: aload_0
    //   78: astore_3
    //   79: new 181	java/io/FileInputStream
    //   82: dup
    //   83: new 183	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 184	java/lang/StringBuilder:<init>	()V
    //   90: aload 5
    //   92: iload_1
    //   93: aaload
    //   94: invokevirtual 187	java/io/File:getPath	()Ljava/lang/String;
    //   97: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: ldc -63
    //   102: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 196	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokespecial 197	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   111: astore 4
    //   113: aload 4
    //   115: invokevirtual 200	java/io/FileInputStream:read	()I
    //   118: pop
    //   119: aload 4
    //   121: invokevirtual 203	java/io/FileInputStream:close	()V
    //   124: aconst_null
    //   125: astore_0
    //   126: iconst_m1
    //   127: iload_1
    //   128: if_icmpeq +321 -> 449
    //   131: new 181	java/io/FileInputStream
    //   134: dup
    //   135: new 183	java/lang/StringBuilder
    //   138: dup
    //   139: ldc -96
    //   141: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   144: aload 5
    //   146: iload_1
    //   147: aaload
    //   148: invokevirtual 173	java/io/File:getName	()Ljava/lang/String;
    //   151: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: ldc -50
    //   156: invokevirtual 191	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: invokevirtual 196	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: invokespecial 197	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   165: astore 4
    //   167: aload 4
    //   169: invokevirtual 209	java/io/FileInputStream:available	()I
    //   172: istore_1
    //   173: iload_1
    //   174: ifle +270 -> 444
    //   177: iload_1
    //   178: newarray <illegal type>
    //   180: astore_0
    //   181: aload 4
    //   183: aload_0
    //   184: invokevirtual 212	java/io/FileInputStream:read	([B)I
    //   187: pop
    //   188: new 40	java/lang/String
    //   191: dup
    //   192: aload_0
    //   193: invokespecial 215	java/lang/String:<init>	([B)V
    //   196: astore_0
    //   197: aload_0
    //   198: ldc -39
    //   200: invokevirtual 221	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   203: istore_1
    //   204: iload_1
    //   205: iconst_m1
    //   206: if_icmpeq +235 -> 441
    //   209: aload_0
    //   210: iconst_0
    //   211: iload_1
    //   212: invokevirtual 58	java/lang/String:substring	(II)Ljava/lang/String;
    //   215: astore_3
    //   216: aload_3
    //   217: invokevirtual 224	java/lang/String:length	()I
    //   220: istore_1
    //   221: iload_1
    //   222: ifne +214 -> 436
    //   225: aconst_null
    //   226: astore_0
    //   227: aload 4
    //   229: invokevirtual 203	java/io/FileInputStream:close	()V
    //   232: aload_0
    //   233: astore_3
    //   234: aload_3
    //   235: invokestatic 226	com/xiaomi/hy/dj/f/p:b	(Ljava/lang/String;)Ljava/lang/String;
    //   238: areturn
    //   239: astore_0
    //   240: aload_0
    //   241: invokevirtual 227	java/io/IOException:printStackTrace	()V
    //   244: goto -120 -> 124
    //   247: astore_0
    //   248: aload_0
    //   249: invokevirtual 64	java/lang/Exception:printStackTrace	()V
    //   252: aconst_null
    //   253: areturn
    //   254: astore 4
    //   256: aload_0
    //   257: astore_3
    //   258: aload 4
    //   260: invokevirtual 64	java/lang/Exception:printStackTrace	()V
    //   263: aload_0
    //   264: astore_3
    //   265: aload_0
    //   266: ifnull +9 -> 275
    //   269: aload_0
    //   270: invokevirtual 203	java/io/FileInputStream:close	()V
    //   273: aconst_null
    //   274: astore_3
    //   275: iload_1
    //   276: iconst_1
    //   277: iadd
    //   278: istore_1
    //   279: aload_3
    //   280: astore_0
    //   281: goto -242 -> 39
    //   284: astore_0
    //   285: aload_0
    //   286: invokevirtual 227	java/io/IOException:printStackTrace	()V
    //   289: goto -16 -> 273
    //   292: astore_0
    //   293: aload_3
    //   294: astore 4
    //   296: aload 4
    //   298: ifnull +8 -> 306
    //   301: aload 4
    //   303: invokevirtual 203	java/io/FileInputStream:close	()V
    //   306: aload_0
    //   307: athrow
    //   308: astore_3
    //   309: aload_3
    //   310: invokevirtual 227	java/io/IOException:printStackTrace	()V
    //   313: goto -7 -> 306
    //   316: astore_3
    //   317: aload_3
    //   318: invokevirtual 227	java/io/IOException:printStackTrace	()V
    //   321: aload_0
    //   322: astore_3
    //   323: goto -89 -> 234
    //   326: astore_3
    //   327: aload_0
    //   328: astore 4
    //   330: aconst_null
    //   331: astore_0
    //   332: aload_3
    //   333: invokevirtual 64	java/lang/Exception:printStackTrace	()V
    //   336: aload_0
    //   337: astore_3
    //   338: aload 4
    //   340: ifnull -106 -> 234
    //   343: aload 4
    //   345: invokevirtual 203	java/io/FileInputStream:close	()V
    //   348: aload_0
    //   349: astore_3
    //   350: goto -116 -> 234
    //   353: astore_3
    //   354: aload_3
    //   355: invokevirtual 227	java/io/IOException:printStackTrace	()V
    //   358: aload_0
    //   359: astore_3
    //   360: goto -126 -> 234
    //   363: astore 4
    //   365: aload_0
    //   366: astore_3
    //   367: aload 4
    //   369: astore_0
    //   370: aload_3
    //   371: ifnull +7 -> 378
    //   374: aload_3
    //   375: invokevirtual 203	java/io/FileInputStream:close	()V
    //   378: aload_0
    //   379: athrow
    //   380: astore_3
    //   381: aload_3
    //   382: invokevirtual 227	java/io/IOException:printStackTrace	()V
    //   385: goto -7 -> 378
    //   388: astore_0
    //   389: aload 4
    //   391: astore_3
    //   392: goto -22 -> 370
    //   395: astore_0
    //   396: aload 4
    //   398: astore_3
    //   399: goto -29 -> 370
    //   402: astore_3
    //   403: aconst_null
    //   404: astore_0
    //   405: goto -73 -> 332
    //   408: astore_3
    //   409: goto -77 -> 332
    //   412: astore 5
    //   414: aload_3
    //   415: astore_0
    //   416: aload 5
    //   418: astore_3
    //   419: goto -87 -> 332
    //   422: astore_0
    //   423: goto -127 -> 296
    //   426: astore_3
    //   427: aload 4
    //   429: astore_0
    //   430: aload_3
    //   431: astore 4
    //   433: goto -177 -> 256
    //   436: aload_3
    //   437: astore_0
    //   438: goto -211 -> 227
    //   441: goto -214 -> 227
    //   444: aconst_null
    //   445: astore_0
    //   446: goto -219 -> 227
    //   449: aconst_null
    //   450: astore_3
    //   451: goto -217 -> 234
    //   454: iconst_m1
    //   455: istore_1
    //   456: goto -330 -> 126
    //   459: aconst_null
    //   460: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	461	0	paramContext	Context
    //   1	455	1	i	int
    //   70	4	2	bool	boolean
    //   47	247	3	localObject1	Object
    //   308	2	3	localIOException1	java.io.IOException
    //   316	2	3	localIOException2	java.io.IOException
    //   322	1	3	localContext1	Context
    //   326	7	3	localException1	Exception
    //   337	13	3	localContext2	Context
    //   353	2	3	localIOException3	java.io.IOException
    //   359	16	3	localContext3	Context
    //   380	2	3	localIOException4	java.io.IOException
    //   391	8	3	localObject2	Object
    //   402	1	3	localException2	Exception
    //   408	7	3	localException3	Exception
    //   418	1	3	localException4	Exception
    //   426	11	3	localException5	Exception
    //   450	1	3	localObject3	Object
    //   111	117	4	localFileInputStream	java.io.FileInputStream
    //   254	5	4	localException6	Exception
    //   294	50	4	localObject4	Object
    //   363	65	4	localObject5	Object
    //   431	1	4	localException7	Exception
    //   35	110	5	arrayOfFile	java.io.File[]
    //   412	5	5	localException8	Exception
    // Exception table:
    //   from	to	target	type
    //   119	124	239	java/io/IOException
    //   23	37	247	java/lang/Exception
    //   39	46	247	java/lang/Exception
    //   48	71	247	java/lang/Exception
    //   119	124	247	java/lang/Exception
    //   227	232	247	java/lang/Exception
    //   234	239	247	java/lang/Exception
    //   240	244	247	java/lang/Exception
    //   269	273	247	java/lang/Exception
    //   285	289	247	java/lang/Exception
    //   301	306	247	java/lang/Exception
    //   306	308	247	java/lang/Exception
    //   309	313	247	java/lang/Exception
    //   317	321	247	java/lang/Exception
    //   343	348	247	java/lang/Exception
    //   354	358	247	java/lang/Exception
    //   374	378	247	java/lang/Exception
    //   378	380	247	java/lang/Exception
    //   381	385	247	java/lang/Exception
    //   79	113	254	java/lang/Exception
    //   269	273	284	java/io/IOException
    //   79	113	292	finally
    //   258	263	292	finally
    //   301	306	308	java/io/IOException
    //   227	232	316	java/io/IOException
    //   131	167	326	java/lang/Exception
    //   343	348	353	java/io/IOException
    //   131	167	363	finally
    //   374	378	380	java/io/IOException
    //   167	173	388	finally
    //   177	197	388	finally
    //   197	204	388	finally
    //   209	216	388	finally
    //   216	221	388	finally
    //   332	336	395	finally
    //   167	173	402	java/lang/Exception
    //   177	197	402	java/lang/Exception
    //   197	204	408	java/lang/Exception
    //   209	216	408	java/lang/Exception
    //   216	221	412	java/lang/Exception
    //   113	119	422	finally
    //   113	119	426	java/lang/Exception
  }
  
  public static String k(Context paramContext)
  {
    paramContext = (WifiManager)paramContext.getSystemService("wifi");
    if (paramContext != null)
    {
      paramContext = paramContext.getConnectionInfo();
      if (paramContext != null)
      {
        paramContext = paramContext.getMacAddress();
        if (paramContext != null) {
          return b(paramContext);
        }
      }
    }
    return null;
  }
  
  public static String l(Context paramContext)
  {
    return a(b(paramContext));
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\f\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */