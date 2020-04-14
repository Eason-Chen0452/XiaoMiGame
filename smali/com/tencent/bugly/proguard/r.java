package com.tencent.bugly.proguard;

import android.content.Context;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class r
{
  private static r b;
  public Map<String, String> a = null;
  private Context c;
  
  private r(Context paramContext)
  {
    this.c = paramContext;
  }
  
  public static r a(Context paramContext)
  {
    if (b == null) {
      b = new r(paramContext);
    }
    return b;
  }
  
  private static HttpURLConnection a(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = new URL(paramString2);
      if ((paramString1 != null) && (paramString1.toLowerCase(Locale.US).contains("wap"))) {
        paramString1 = new InetSocketAddress(System.getProperty("http.proxyHost"), Integer.parseInt(System.getProperty("http.proxyPort")));
      }
      for (paramString1 = (HttpURLConnection)paramString2.openConnection(new Proxy(Proxy.Type.HTTP, paramString1));; paramString1 = (HttpURLConnection)paramString2.openConnection())
      {
        paramString1.setConnectTimeout(30000);
        paramString1.setReadTimeout(10000);
        paramString1.setDoOutput(true);
        paramString1.setDoInput(true);
        paramString1.setRequestMethod("POST");
        paramString1.setUseCaches(false);
        paramString1.setInstanceFollowRedirects(false);
        return paramString1;
      }
      return null;
    }
    catch (Throwable paramString1)
    {
      if (!w.a(paramString1)) {
        paramString1.printStackTrace();
      }
    }
  }
  
  private HttpURLConnection a(String paramString1, byte[] paramArrayOfByte, String paramString2, Map<String, String> paramMap)
  {
    if (paramString1 == null)
    {
      w.e("destUrl is null.", new Object[0]);
      return null;
    }
    paramString1 = a(paramString2, paramString1);
    if (paramString1 == null)
    {
      w.e("Failed to get HttpURLConnection object.", new Object[0]);
      return null;
    }
    try
    {
      paramString1.setRequestProperty("wup_version", "3.0");
      if ((paramMap != null) && (paramMap.size() > 0))
      {
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          paramString1.setRequestProperty((String)localEntry.getKey(), URLEncoder.encode((String)localEntry.getValue(), "utf-8"));
        }
      }
      paramString1.setRequestProperty("A37", URLEncoder.encode(paramString2, "utf-8"));
    }
    catch (Throwable paramString1)
    {
      if (!w.a(paramString1)) {
        paramString1.printStackTrace();
      }
      w.e("Failed to upload crash, please check your network.", new Object[0]);
      return null;
    }
    paramString1.setRequestProperty("A38", URLEncoder.encode(a.e(this.c), "utf-8"));
    paramString1.connect();
    paramString2 = paramString1.getOutputStream();
    if (paramArrayOfByte == null) {
      paramString2.write(0);
    } else {
      paramString2.write(paramArrayOfByte);
    }
    return paramString1;
  }
  
  private static Map<String, String> a(HttpURLConnection paramHttpURLConnection)
  {
    HashMap localHashMap = new HashMap();
    paramHttpURLConnection = paramHttpURLConnection.getHeaderFields();
    if ((paramHttpURLConnection == null) || (paramHttpURLConnection.size() == 0)) {
      return null;
    }
    Iterator localIterator = paramHttpURLConnection.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      List localList = (List)paramHttpURLConnection.get(str);
      if (localList.size() > 0) {
        localHashMap.put(str, localList.get(0));
      }
    }
    return localHashMap;
  }
  
  /* Error */
  private static byte[] b(HttpURLConnection paramHttpURLConnection)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 244	java/io/BufferedInputStream
    //   9: dup
    //   10: aload_0
    //   11: invokevirtual 248	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   14: invokespecial 251	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_2
    //   18: aload_2
    //   19: astore_0
    //   20: new 253	java/io/ByteArrayOutputStream
    //   23: dup
    //   24: invokespecial 254	java/io/ByteArrayOutputStream:<init>	()V
    //   27: astore_3
    //   28: aload_2
    //   29: astore_0
    //   30: sipush 1024
    //   33: newarray <illegal type>
    //   35: astore 4
    //   37: aload_2
    //   38: astore_0
    //   39: aload_2
    //   40: aload 4
    //   42: invokevirtual 258	java/io/BufferedInputStream:read	([B)I
    //   45: istore_1
    //   46: iload_1
    //   47: ifle +49 -> 96
    //   50: aload_2
    //   51: astore_0
    //   52: aload_3
    //   53: aload 4
    //   55: iconst_0
    //   56: iload_1
    //   57: invokevirtual 261	java/io/ByteArrayOutputStream:write	([BII)V
    //   60: goto -23 -> 37
    //   63: astore_3
    //   64: aload_2
    //   65: astore_0
    //   66: aload_3
    //   67: invokestatic 123	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   70: ifne +9 -> 79
    //   73: aload_2
    //   74: astore_0
    //   75: aload_3
    //   76: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   79: aload_2
    //   80: ifnull -76 -> 4
    //   83: aload_2
    //   84: invokevirtual 264	java/io/BufferedInputStream:close	()V
    //   87: aconst_null
    //   88: areturn
    //   89: astore_0
    //   90: aload_0
    //   91: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   94: aconst_null
    //   95: areturn
    //   96: aload_2
    //   97: astore_0
    //   98: aload_3
    //   99: invokevirtual 267	java/io/ByteArrayOutputStream:flush	()V
    //   102: aload_2
    //   103: astore_0
    //   104: aload_3
    //   105: invokevirtual 271	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   108: astore_3
    //   109: aload_2
    //   110: invokevirtual 264	java/io/BufferedInputStream:close	()V
    //   113: aload_3
    //   114: areturn
    //   115: astore_0
    //   116: aload_0
    //   117: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   120: aload_3
    //   121: areturn
    //   122: astore_2
    //   123: aconst_null
    //   124: astore_0
    //   125: aload_0
    //   126: ifnull +7 -> 133
    //   129: aload_0
    //   130: invokevirtual 264	java/io/BufferedInputStream:close	()V
    //   133: aload_2
    //   134: athrow
    //   135: astore_0
    //   136: aload_0
    //   137: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   140: goto -7 -> 133
    //   143: astore_2
    //   144: goto -19 -> 125
    //   147: astore_3
    //   148: aconst_null
    //   149: astore_2
    //   150: goto -86 -> 64
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	153	0	paramHttpURLConnection	HttpURLConnection
    //   45	12	1	i	int
    //   17	93	2	localBufferedInputStream	java.io.BufferedInputStream
    //   122	12	2	localObject1	Object
    //   143	1	2	localObject2	Object
    //   149	1	2	localObject3	Object
    //   27	26	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   63	42	3	localThrowable1	Throwable
    //   108	13	3	arrayOfByte1	byte[]
    //   147	1	3	localThrowable2	Throwable
    //   35	19	4	arrayOfByte2	byte[]
    // Exception table:
    //   from	to	target	type
    //   20	28	63	java/lang/Throwable
    //   30	37	63	java/lang/Throwable
    //   39	46	63	java/lang/Throwable
    //   52	60	63	java/lang/Throwable
    //   98	102	63	java/lang/Throwable
    //   104	109	63	java/lang/Throwable
    //   83	87	89	java/lang/Throwable
    //   109	113	115	java/lang/Throwable
    //   6	18	122	finally
    //   129	133	135	java/lang/Throwable
    //   20	28	143	finally
    //   30	37	143	finally
    //   39	46	143	finally
    //   52	60	143	finally
    //   66	73	143	finally
    //   75	79	143	finally
    //   98	102	143	finally
    //   104	109	143	finally
    //   6	18	147	java/lang/Throwable
  }
  
  /* Error */
  public final byte[] a(String paramString, byte[] paramArrayOfByte, u paramu, Map<String, String> paramMap)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +16 -> 17
    //   4: ldc_w 276
    //   7: iconst_0
    //   8: anewarray 4	java/lang/Object
    //   11: invokestatic 133	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   14: pop
    //   15: aconst_null
    //   16: areturn
    //   17: iconst_0
    //   18: istore 5
    //   20: aload_2
    //   21: ifnonnull +115 -> 136
    //   24: lconst_0
    //   25: lstore 14
    //   27: ldc_w 278
    //   30: iconst_4
    //   31: anewarray 4	java/lang/Object
    //   34: dup
    //   35: iconst_0
    //   36: aload_1
    //   37: aastore
    //   38: dup
    //   39: iconst_1
    //   40: lload 14
    //   42: invokestatic 284	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   45: aastore
    //   46: dup
    //   47: iconst_2
    //   48: invokestatic 289	android/os/Process:myPid	()I
    //   51: invokestatic 292	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   54: aastore
    //   55: dup
    //   56: iconst_3
    //   57: invokestatic 295	android/os/Process:myTid	()I
    //   60: invokestatic 292	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   63: aastore
    //   64: invokestatic 297	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   67: pop
    //   68: iconst_0
    //   69: istore 10
    //   71: iconst_0
    //   72: istore 7
    //   74: iload 7
    //   76: iconst_1
    //   77: iadd
    //   78: istore 6
    //   80: iload 7
    //   82: iconst_3
    //   83: if_icmpge +800 -> 883
    //   86: iload 5
    //   88: iconst_2
    //   89: if_icmpge +794 -> 883
    //   92: iload 10
    //   94: ifeq +50 -> 144
    //   97: iconst_0
    //   98: istore 7
    //   100: aload_0
    //   101: getfield 20	com/tencent/bugly/proguard/r:c	Landroid/content/Context;
    //   104: invokestatic 198	com/tencent/bugly/proguard/a:e	(Landroid/content/Context;)Ljava/lang/String;
    //   107: astore 20
    //   109: aload 20
    //   111: ifnonnull +82 -> 193
    //   114: ldc_w 299
    //   117: iconst_0
    //   118: anewarray 4	java/lang/Object
    //   121: invokestatic 302	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   124: pop
    //   125: iload 7
    //   127: istore 10
    //   129: iload 6
    //   131: istore 7
    //   133: goto -59 -> 74
    //   136: aload_2
    //   137: arraylength
    //   138: i2l
    //   139: lstore 14
    //   141: goto -114 -> 27
    //   144: iload 10
    //   146: istore 7
    //   148: iload 6
    //   150: iconst_1
    //   151: if_icmple -51 -> 100
    //   154: new 304	java/lang/StringBuilder
    //   157: dup
    //   158: ldc_w 306
    //   161: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   164: iload 6
    //   166: invokevirtual 311	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   169: invokevirtual 315	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: iconst_0
    //   173: anewarray 4	java/lang/Object
    //   176: invokestatic 297	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   179: pop
    //   180: ldc2_w 316
    //   183: invokestatic 323	android/os/SystemClock:sleep	(J)V
    //   186: iload 10
    //   188: istore 7
    //   190: goto -90 -> 100
    //   193: aload_3
    //   194: lload 14
    //   196: invokevirtual 327	com/tencent/bugly/proguard/u:a	(J)V
    //   199: aload_0
    //   200: aload_1
    //   201: aload_2
    //   202: aload 20
    //   204: aload 4
    //   206: invokespecial 329	com/tencent/bugly/proguard/r:a	(Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    //   209: astore 22
    //   211: aload 22
    //   213: ifnull +640 -> 853
    //   216: iload 7
    //   218: istore 10
    //   220: iload 5
    //   222: istore 11
    //   224: iload 6
    //   226: istore 12
    //   228: aload_1
    //   229: astore 21
    //   231: aload 22
    //   233: invokevirtual 332	java/net/HttpURLConnection:getResponseCode	()I
    //   236: istore 13
    //   238: iload 13
    //   240: sipush 200
    //   243: if_icmpne +129 -> 372
    //   246: iload 7
    //   248: istore 10
    //   250: iload 5
    //   252: istore 11
    //   254: iload 6
    //   256: istore 12
    //   258: aload_1
    //   259: astore 21
    //   261: aload_0
    //   262: aload 22
    //   264: invokestatic 334	com/tencent/bugly/proguard/r:a	(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    //   267: putfield 18	com/tencent/bugly/proguard/r:a	Ljava/util/Map;
    //   270: iload 7
    //   272: istore 10
    //   274: iload 5
    //   276: istore 11
    //   278: iload 6
    //   280: istore 12
    //   282: aload_1
    //   283: astore 21
    //   285: aload 22
    //   287: invokestatic 336	com/tencent/bugly/proguard/r:b	(Ljava/net/HttpURLConnection;)[B
    //   290: astore 20
    //   292: aload 20
    //   294: ifnonnull +35 -> 329
    //   297: lconst_0
    //   298: lstore 16
    //   300: iload 7
    //   302: istore 10
    //   304: iload 5
    //   306: istore 11
    //   308: iload 6
    //   310: istore 12
    //   312: aload_1
    //   313: astore 21
    //   315: aload_3
    //   316: lload 16
    //   318: invokevirtual 338	com/tencent/bugly/proguard/u:b	(J)V
    //   321: aload 22
    //   323: invokevirtual 341	java/net/HttpURLConnection:disconnect	()V
    //   326: aload 20
    //   328: areturn
    //   329: iload 7
    //   331: istore 10
    //   333: iload 5
    //   335: istore 11
    //   337: iload 6
    //   339: istore 12
    //   341: aload_1
    //   342: astore 21
    //   344: aload 20
    //   346: arraylength
    //   347: istore 8
    //   349: iload 8
    //   351: i2l
    //   352: lstore 16
    //   354: goto -54 -> 300
    //   357: astore_1
    //   358: aload_1
    //   359: invokestatic 123	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   362: ifne -36 -> 326
    //   365: aload_1
    //   366: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   369: goto -43 -> 326
    //   372: iload 13
    //   374: sipush 301
    //   377: if_icmpeq +27 -> 404
    //   380: iload 13
    //   382: sipush 302
    //   385: if_icmpeq +19 -> 404
    //   388: iload 13
    //   390: sipush 303
    //   393: if_icmpeq +11 -> 404
    //   396: iload 13
    //   398: sipush 307
    //   401: if_icmpne +80 -> 481
    //   404: iconst_1
    //   405: istore 10
    //   407: iload 7
    //   409: istore 9
    //   411: iload 5
    //   413: istore 8
    //   415: iload 6
    //   417: istore 7
    //   419: aload_1
    //   420: astore 20
    //   422: iload 10
    //   424: ifeq +121 -> 545
    //   427: aload 22
    //   429: ldc_w 343
    //   432: invokevirtual 346	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   435: astore 20
    //   437: aload 20
    //   439: ifnonnull +63 -> 502
    //   442: new 304	java/lang/StringBuilder
    //   445: dup
    //   446: ldc_w 348
    //   449: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   452: iload 13
    //   454: invokevirtual 311	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   457: ldc_w 350
    //   460: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   463: invokevirtual 315	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   466: iconst_0
    //   467: anewarray 4	java/lang/Object
    //   470: invokestatic 133	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   473: pop
    //   474: aload 22
    //   476: invokevirtual 341	java/net/HttpURLConnection:disconnect	()V
    //   479: aconst_null
    //   480: areturn
    //   481: iconst_0
    //   482: istore 10
    //   484: goto -77 -> 407
    //   487: astore_1
    //   488: aload_1
    //   489: invokestatic 123	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   492: ifne -13 -> 479
    //   495: aload_1
    //   496: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   499: goto -20 -> 479
    //   502: iload 5
    //   504: iconst_1
    //   505: iadd
    //   506: istore 5
    //   508: iconst_0
    //   509: istore 8
    //   511: iconst_0
    //   512: istore 7
    //   514: ldc_w 355
    //   517: iconst_2
    //   518: anewarray 4	java/lang/Object
    //   521: dup
    //   522: iconst_0
    //   523: iload 13
    //   525: invokestatic 292	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   528: aastore
    //   529: dup
    //   530: iconst_1
    //   531: aload 20
    //   533: aastore
    //   534: invokestatic 297	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   537: pop
    //   538: iconst_1
    //   539: istore 9
    //   541: iload 5
    //   543: istore 8
    //   545: iload 9
    //   547: istore 10
    //   549: iload 8
    //   551: istore 11
    //   553: iload 7
    //   555: istore 12
    //   557: aload 20
    //   559: astore 21
    //   561: new 304	java/lang/StringBuilder
    //   564: dup
    //   565: ldc_w 357
    //   568: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   571: iload 13
    //   573: invokevirtual 311	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   576: invokevirtual 315	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   579: iconst_0
    //   580: anewarray 4	java/lang/Object
    //   583: invokestatic 302	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   586: pop
    //   587: iload 9
    //   589: istore 10
    //   591: iload 8
    //   593: istore 11
    //   595: iload 7
    //   597: istore 12
    //   599: aload 20
    //   601: astore 21
    //   603: aload 22
    //   605: invokevirtual 360	java/net/HttpURLConnection:getContentLength	()I
    //   608: i2l
    //   609: lstore 18
    //   611: lload 18
    //   613: lstore 16
    //   615: lload 18
    //   617: lconst_0
    //   618: lcmp
    //   619: ifge +6 -> 625
    //   622: lconst_0
    //   623: lstore 16
    //   625: iload 9
    //   627: istore 10
    //   629: iload 8
    //   631: istore 11
    //   633: iload 7
    //   635: istore 12
    //   637: aload 20
    //   639: astore 21
    //   641: aload_3
    //   642: lload 16
    //   644: invokevirtual 338	com/tencent/bugly/proguard/u:b	(J)V
    //   647: aload 22
    //   649: invokevirtual 341	java/net/HttpURLConnection:disconnect	()V
    //   652: aload 20
    //   654: astore 21
    //   656: iload 7
    //   658: istore 6
    //   660: iload 8
    //   662: istore 11
    //   664: iload 9
    //   666: istore 10
    //   668: iload 11
    //   670: istore 5
    //   672: aload 21
    //   674: astore_1
    //   675: iload 6
    //   677: istore 7
    //   679: goto -605 -> 74
    //   682: astore_1
    //   683: iload 9
    //   685: istore 10
    //   687: iload 8
    //   689: istore 11
    //   691: iload 7
    //   693: istore 6
    //   695: aload 20
    //   697: astore 21
    //   699: aload_1
    //   700: invokestatic 123	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   703: ifne -35 -> 668
    //   706: aload_1
    //   707: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   710: iload 9
    //   712: istore 10
    //   714: iload 8
    //   716: istore 11
    //   718: iload 7
    //   720: istore 6
    //   722: aload 20
    //   724: astore 21
    //   726: goto -58 -> 668
    //   729: astore 20
    //   731: aload 21
    //   733: astore_1
    //   734: iload 12
    //   736: istore 8
    //   738: iload 11
    //   740: istore 5
    //   742: iload 10
    //   744: istore 7
    //   746: aload 20
    //   748: invokestatic 123	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   751: ifne +8 -> 759
    //   754: aload 20
    //   756: invokevirtual 361	java/io/IOException:printStackTrace	()V
    //   759: aload 22
    //   761: invokevirtual 341	java/net/HttpURLConnection:disconnect	()V
    //   764: iload 7
    //   766: istore 10
    //   768: iload 5
    //   770: istore 11
    //   772: iload 8
    //   774: istore 6
    //   776: aload_1
    //   777: astore 21
    //   779: goto -111 -> 668
    //   782: astore 20
    //   784: iload 7
    //   786: istore 10
    //   788: iload 5
    //   790: istore 11
    //   792: iload 8
    //   794: istore 6
    //   796: aload_1
    //   797: astore 21
    //   799: aload 20
    //   801: invokestatic 123	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   804: ifne -136 -> 668
    //   807: aload 20
    //   809: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   812: iload 7
    //   814: istore 10
    //   816: iload 5
    //   818: istore 11
    //   820: iload 8
    //   822: istore 6
    //   824: aload_1
    //   825: astore 21
    //   827: goto -159 -> 668
    //   830: astore_1
    //   831: aload 22
    //   833: invokevirtual 341	java/net/HttpURLConnection:disconnect	()V
    //   836: aload_1
    //   837: athrow
    //   838: astore_2
    //   839: aload_2
    //   840: invokestatic 123	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   843: ifne -7 -> 836
    //   846: aload_2
    //   847: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   850: goto -14 -> 836
    //   853: ldc_w 363
    //   856: iconst_0
    //   857: anewarray 4	java/lang/Object
    //   860: invokestatic 297	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   863: pop
    //   864: aload_3
    //   865: lconst_0
    //   866: invokevirtual 338	com/tencent/bugly/proguard/u:b	(J)V
    //   869: iload 7
    //   871: istore 10
    //   873: iload 5
    //   875: istore 11
    //   877: aload_1
    //   878: astore 21
    //   880: goto -212 -> 668
    //   883: aconst_null
    //   884: areturn
    //   885: astore 20
    //   887: iconst_1
    //   888: istore 7
    //   890: iload 6
    //   892: istore 8
    //   894: goto -148 -> 746
    //   897: astore 21
    //   899: aload 20
    //   901: astore_1
    //   902: aload 21
    //   904: astore 20
    //   906: iconst_1
    //   907: istore 7
    //   909: goto -163 -> 746
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	912	0	this	r
    //   0	912	1	paramString	String
    //   0	912	2	paramArrayOfByte	byte[]
    //   0	912	3	paramu	u
    //   0	912	4	paramMap	Map<String, String>
    //   18	856	5	i	int
    //   78	813	6	j	int
    //   72	836	7	k	int
    //   347	546	8	m	int
    //   409	302	9	n	int
    //   69	803	10	i1	int
    //   222	654	11	i2	int
    //   226	509	12	i3	int
    //   236	336	13	i4	int
    //   25	170	14	l1	long
    //   298	345	16	l2	long
    //   609	7	18	l3	long
    //   107	616	20	localObject1	Object
    //   729	26	20	localIOException1	java.io.IOException
    //   782	26	20	localThrowable	Throwable
    //   885	15	20	localIOException2	java.io.IOException
    //   904	1	20	localObject2	Object
    //   229	650	21	localObject3	Object
    //   897	6	21	localIOException3	java.io.IOException
    //   209	623	22	localHttpURLConnection	HttpURLConnection
    // Exception table:
    //   from	to	target	type
    //   321	326	357	java/lang/Throwable
    //   474	479	487	java/lang/Throwable
    //   647	652	682	java/lang/Throwable
    //   231	238	729	java/io/IOException
    //   261	270	729	java/io/IOException
    //   285	292	729	java/io/IOException
    //   315	321	729	java/io/IOException
    //   344	349	729	java/io/IOException
    //   561	587	729	java/io/IOException
    //   603	611	729	java/io/IOException
    //   641	647	729	java/io/IOException
    //   759	764	782	java/lang/Throwable
    //   231	238	830	finally
    //   261	270	830	finally
    //   285	292	830	finally
    //   315	321	830	finally
    //   344	349	830	finally
    //   427	437	830	finally
    //   442	474	830	finally
    //   514	538	830	finally
    //   561	587	830	finally
    //   603	611	830	finally
    //   641	647	830	finally
    //   746	759	830	finally
    //   831	836	838	java/lang/Throwable
    //   427	437	885	java/io/IOException
    //   442	474	885	java/io/IOException
    //   514	538	897	java/io/IOException
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\tencent\bugly\proguard\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */