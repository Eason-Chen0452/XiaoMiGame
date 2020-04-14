package com.mi.milink.sdk.base.os;

import com.mi.milink.sdk.debug.MiLinkLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public final class SimpleRequest
{
  private static final String ENC = "utf-8";
  private static final String TAG = "SimpleRequest";
  private static final int TIMEOUT = 20000;
  
  protected static String appendUrl(String paramString, List<NameValuePair> paramList)
  {
    if (paramString == null) {
      throw new NullPointerException("origin is not allowed null");
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    if (paramList != null)
    {
      paramList = URLEncodedUtils.format(paramList, "utf-8");
      if ((paramList != null) && (paramList.length() > 0))
      {
        if (!paramString.contains("?")) {
          break label72;
        }
        localStringBuilder.append("&");
      }
    }
    for (;;)
    {
      localStringBuilder.append(paramList);
      return localStringBuilder.toString();
      label72:
      localStringBuilder.append("?");
    }
  }
  
  public static String joinMap(Map<String, String> paramMap, String paramString)
  {
    if (paramMap == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramMap = paramMap.entrySet().iterator();
    int i = 0;
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      if (i > 0) {
        localStringBuilder.append(paramString);
      }
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (String)((Map.Entry)localObject).getValue();
      localStringBuilder.append(str);
      localStringBuilder.append("=");
      localStringBuilder.append((String)localObject);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static Map<String, String> listToMap(Map<String, List<String>> paramMap)
  {
    HashMap localHashMap = new HashMap();
    if (paramMap != null)
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Object localObject = (Map.Entry)paramMap.next();
        String str = (String)((Map.Entry)localObject).getKey();
        localObject = (List)((Map.Entry)localObject).getValue();
        if ((str != null) && (localObject != null) && (((List)localObject).size() > 0)) {
          localHashMap.put(str, ((List)localObject).get(0));
        }
      }
    }
    return localHashMap;
  }
  
  protected static HttpURLConnection makeConn(String paramString, Map<String, String> paramMap)
  {
    try
    {
      paramString = new URL(paramString);
      if (paramString == null)
      {
        paramString = null;
        return paramString;
      }
    }
    catch (MalformedURLException paramString)
    {
      for (;;)
      {
        MiLinkLog.e("SimpleRequest", paramString);
        paramString = null;
        continue;
        try
        {
          HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramString.openConnection();
          localHttpURLConnection.setInstanceFollowRedirects(false);
          localHttpURLConnection.setConnectTimeout(20000);
          localHttpURLConnection.setUseCaches(false);
          localHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
          paramString = localHttpURLConnection;
          if (paramMap != null)
          {
            localHttpURLConnection.setRequestProperty("Cookie", joinMap(paramMap, "; "));
            return localHttpURLConnection;
          }
        }
        catch (Exception paramString)
        {
          MiLinkLog.e("SimpleRequest", paramString);
        }
      }
    }
    return null;
  }
  
  public static List<NameValuePair> mapToPairs(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap.entrySet().iterator();
    if (localIterator.hasNext())
    {
      paramMap = (Map.Entry)localIterator.next();
      String str = (String)paramMap.getKey();
      paramMap = (String)paramMap.getValue();
      if (paramMap != null) {}
      for (;;)
      {
        localArrayList.add(new BasicNameValuePair(str, paramMap));
        break;
        paramMap = "";
      }
    }
    return localArrayList;
  }
  
  protected static Map<String, String> parseCookies(List<HttpCookie> paramList)
  {
    HashMap localHashMap = new HashMap();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = (HttpCookie)paramList.next();
      if (!((HttpCookie)localObject).hasExpired())
      {
        String str = ((HttpCookie)localObject).getName();
        localObject = ((HttpCookie)localObject).getValue();
        if (str != null) {
          localHashMap.put(str, localObject);
        }
      }
    }
    return localHashMap;
  }
  
  public static StringContent postAsString(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, LengthPair paramLengthPair)
    throws IOException
  {
    return postAsString(paramString, paramMap1, paramMap2, paramBoolean, null, paramLengthPair);
  }
  
  /* Error */
  public static StringContent postAsString(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2, LengthPair paramLengthPair)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokestatic 223	com/mi/milink/sdk/base/os/SimpleRequest:makeConn	(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    //   5: astore_2
    //   6: aload_2
    //   7: ifnonnull +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload_2
    //   13: iconst_1
    //   14: invokevirtual 226	java/net/HttpURLConnection:setDoInput	(Z)V
    //   17: aload_2
    //   18: iconst_1
    //   19: invokevirtual 229	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   22: aload_2
    //   23: ldc -25
    //   25: invokevirtual 234	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   28: aload 4
    //   30: invokestatic 239	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   33: ifne +11 -> 44
    //   36: aload_2
    //   37: ldc -15
    //   39: aload 4
    //   41: invokevirtual 244	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   44: aload_2
    //   45: ldc -10
    //   47: ldc -8
    //   49: invokevirtual 244	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: aload_2
    //   53: invokevirtual 251	java/net/HttpURLConnection:connect	()V
    //   56: aload_1
    //   57: invokestatic 253	com/mi/milink/sdk/base/os/SimpleRequest:mapToPairs	(Ljava/util/Map;)Ljava/util/List;
    //   60: astore_1
    //   61: aload_1
    //   62: ifnull +128 -> 190
    //   65: aload_1
    //   66: ldc 23
    //   68: invokestatic 52	org/apache/http/client/utils/URLEncodedUtils:format	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   71: astore 4
    //   73: new 255	java/io/BufferedOutputStream
    //   76: dup
    //   77: aload_2
    //   78: invokevirtual 259	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   81: invokespecial 262	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   84: astore_1
    //   85: aload 4
    //   87: ldc 23
    //   89: invokevirtual 266	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   92: astore 4
    //   94: ldc 26
    //   96: new 45	java/lang/StringBuilder
    //   99: dup
    //   100: ldc_w 268
    //   103: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   106: aload 4
    //   108: arraylength
    //   109: invokevirtual 271	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   112: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokestatic 274	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   118: iconst_1
    //   119: invokestatic 280	com/mi/milink/sdk/util/compress/CompressionFactory:createCompression	(I)Lcom/mi/milink/sdk/util/compress/ICompression;
    //   122: aload 4
    //   124: invokeinterface 286 2 0
    //   129: astore 7
    //   131: ldc 26
    //   133: new 45	java/lang/StringBuilder
    //   136: dup
    //   137: ldc_w 288
    //   140: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   143: aload 7
    //   145: arraylength
    //   146: invokevirtual 271	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   149: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: invokestatic 274	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   155: aload_1
    //   156: aload 7
    //   158: invokevirtual 292	java/io/BufferedOutputStream:write	([B)V
    //   161: aload 5
    //   163: ifnull +19 -> 182
    //   166: aload 5
    //   168: aload 4
    //   170: arraylength
    //   171: putfield 295	com/mi/milink/sdk/base/os/SimpleRequest$LengthPair:originLength	I
    //   174: aload 5
    //   176: aload 7
    //   178: arraylength
    //   179: putfield 298	com/mi/milink/sdk/base/os/SimpleRequest$LengthPair:compressLength	I
    //   182: aload_1
    //   183: invokevirtual 301	java/io/BufferedOutputStream:flush	()V
    //   186: aload_1
    //   187: invokevirtual 304	java/io/BufferedOutputStream:close	()V
    //   190: aload_2
    //   191: invokevirtual 307	java/net/HttpURLConnection:getResponseCode	()I
    //   194: istore 6
    //   196: ldc 26
    //   198: new 45	java/lang/StringBuilder
    //   201: dup
    //   202: ldc_w 309
    //   205: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   208: iload 6
    //   210: invokevirtual 271	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   213: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokestatic 274	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   219: iload 6
    //   221: sipush 200
    //   224: if_icmpeq +11 -> 235
    //   227: iload 6
    //   229: sipush 302
    //   232: if_icmpne +271 -> 503
    //   235: aload_2
    //   236: invokevirtual 313	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   239: astore_1
    //   240: new 315	java/net/CookieManager
    //   243: dup
    //   244: invokespecial 316	java/net/CookieManager:<init>	()V
    //   247: astore 4
    //   249: new 139	java/net/URL
    //   252: dup
    //   253: aload_0
    //   254: invokespecial 140	java/net/URL:<init>	(Ljava/lang/String;)V
    //   257: astore_0
    //   258: new 318	java/net/URI
    //   261: dup
    //   262: aload_0
    //   263: invokevirtual 321	java/net/URL:getProtocol	()Ljava/lang/String;
    //   266: aload_0
    //   267: invokevirtual 324	java/net/URL:getHost	()Ljava/lang/String;
    //   270: aload_0
    //   271: invokevirtual 327	java/net/URL:getPath	()Ljava/lang/String;
    //   274: aload_0
    //   275: invokevirtual 330	java/net/URL:getQuery	()Ljava/lang/String;
    //   278: aconst_null
    //   279: invokespecial 333	java/net/URI:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   282: astore_0
    //   283: aload 4
    //   285: aload_0
    //   286: aload_1
    //   287: invokevirtual 336	java/net/CookieManager:put	(Ljava/net/URI;Ljava/util/Map;)V
    //   290: new 45	java/lang/StringBuilder
    //   293: dup
    //   294: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   297: astore 5
    //   299: iload_3
    //   300: ifeq +63 -> 363
    //   303: new 338	java/io/BufferedReader
    //   306: dup
    //   307: new 340	java/io/InputStreamReader
    //   310: dup
    //   311: aload_2
    //   312: invokevirtual 344	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   315: invokespecial 347	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   318: sipush 1024
    //   321: invokespecial 350	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   324: astore 7
    //   326: aload 7
    //   328: invokevirtual 353	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   331: astore 8
    //   333: aload 8
    //   335: ifnull +140 -> 475
    //   338: aload 5
    //   340: aload 8
    //   342: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: pop
    //   346: goto -20 -> 326
    //   349: astore 8
    //   351: ldc 26
    //   353: aload 8
    //   355: invokestatic 146	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   358: aload 7
    //   360: invokevirtual 354	java/io/BufferedReader:close	()V
    //   363: new 18	com/mi/milink/sdk/base/os/SimpleRequest$StringContent
    //   366: dup
    //   367: aload 5
    //   369: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   372: invokespecial 355	com/mi/milink/sdk/base/os/SimpleRequest$StringContent:<init>	(Ljava/lang/String;)V
    //   375: astore 5
    //   377: aload 4
    //   379: invokevirtual 359	java/net/CookieManager:getCookieStore	()Ljava/net/CookieStore;
    //   382: aload_0
    //   383: invokeinterface 364 2 0
    //   388: invokestatic 366	com/mi/milink/sdk/base/os/SimpleRequest:parseCookies	(Ljava/util/List;)Ljava/util/Map;
    //   391: astore_0
    //   392: aload 5
    //   394: aload_0
    //   395: invokevirtual 370	com/mi/milink/sdk/base/os/SimpleRequest$StringContent:putCookies	(Ljava/util/Map;)V
    //   398: aload_0
    //   399: aload_1
    //   400: invokestatic 372	com/mi/milink/sdk/base/os/SimpleRequest:listToMap	(Ljava/util/Map;)Ljava/util/Map;
    //   403: invokeinterface 375 2 0
    //   408: aload 5
    //   410: aload_0
    //   411: invokevirtual 378	com/mi/milink/sdk/base/os/SimpleRequest$StringContent:putHeaders	(Ljava/util/Map;)V
    //   414: aload_2
    //   415: invokevirtual 381	java/net/HttpURLConnection:disconnect	()V
    //   418: aload 5
    //   420: areturn
    //   421: astore 4
    //   423: ldc 26
    //   425: aload 4
    //   427: invokestatic 146	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   430: aload_1
    //   431: invokevirtual 301	java/io/BufferedOutputStream:flush	()V
    //   434: aload_1
    //   435: invokevirtual 304	java/io/BufferedOutputStream:close	()V
    //   438: goto -248 -> 190
    //   441: astore_1
    //   442: goto -252 -> 190
    //   445: astore_0
    //   446: aload_1
    //   447: invokevirtual 301	java/io/BufferedOutputStream:flush	()V
    //   450: aload_1
    //   451: invokevirtual 304	java/io/BufferedOutputStream:close	()V
    //   454: aload_0
    //   455: athrow
    //   456: astore_0
    //   457: new 212	java/io/IOException
    //   460: dup
    //   461: ldc_w 383
    //   464: invokespecial 384	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   467: athrow
    //   468: astore_0
    //   469: aload_2
    //   470: invokevirtual 381	java/net/HttpURLConnection:disconnect	()V
    //   473: aload_0
    //   474: athrow
    //   475: aload 7
    //   477: invokevirtual 354	java/io/BufferedReader:close	()V
    //   480: goto -117 -> 363
    //   483: astore 7
    //   485: goto -122 -> 363
    //   488: astore_0
    //   489: aload 7
    //   491: invokevirtual 354	java/io/BufferedReader:close	()V
    //   494: aload_0
    //   495: athrow
    //   496: astore_0
    //   497: aload_2
    //   498: invokevirtual 381	java/net/HttpURLConnection:disconnect	()V
    //   501: aconst_null
    //   502: areturn
    //   503: aload_2
    //   504: invokevirtual 381	java/net/HttpURLConnection:disconnect	()V
    //   507: goto -6 -> 501
    //   510: astore 7
    //   512: goto -149 -> 363
    //   515: astore_1
    //   516: goto -22 -> 494
    //   519: astore_1
    //   520: goto -66 -> 454
    //   523: astore_1
    //   524: goto -334 -> 190
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	527	0	paramString1	String
    //   0	527	1	paramMap1	Map<String, String>
    //   0	527	2	paramMap2	Map<String, String>
    //   0	527	3	paramBoolean	boolean
    //   0	527	4	paramString2	String
    //   0	527	5	paramLengthPair	LengthPair
    //   194	39	6	i	int
    //   129	347	7	localObject	Object
    //   483	7	7	localIOException1	IOException
    //   510	1	7	localIOException2	IOException
    //   331	10	8	str	String
    //   349	5	8	localIOException3	IOException
    // Exception table:
    //   from	to	target	type
    //   326	333	349	java/io/IOException
    //   338	346	349	java/io/IOException
    //   155	161	421	java/lang/Exception
    //   166	182	421	java/lang/Exception
    //   430	438	441	java/io/IOException
    //   155	161	445	finally
    //   166	182	445	finally
    //   423	430	445	finally
    //   12	44	456	java/net/ProtocolException
    //   44	61	456	java/net/ProtocolException
    //   65	155	456	java/net/ProtocolException
    //   182	190	456	java/net/ProtocolException
    //   190	219	456	java/net/ProtocolException
    //   235	299	456	java/net/ProtocolException
    //   303	326	456	java/net/ProtocolException
    //   358	363	456	java/net/ProtocolException
    //   363	414	456	java/net/ProtocolException
    //   430	438	456	java/net/ProtocolException
    //   446	454	456	java/net/ProtocolException
    //   454	456	456	java/net/ProtocolException
    //   475	480	456	java/net/ProtocolException
    //   489	494	456	java/net/ProtocolException
    //   494	496	456	java/net/ProtocolException
    //   12	44	468	finally
    //   44	61	468	finally
    //   65	155	468	finally
    //   182	190	468	finally
    //   190	219	468	finally
    //   235	299	468	finally
    //   303	326	468	finally
    //   358	363	468	finally
    //   363	414	468	finally
    //   430	438	468	finally
    //   446	454	468	finally
    //   454	456	468	finally
    //   457	468	468	finally
    //   475	480	468	finally
    //   489	494	468	finally
    //   494	496	468	finally
    //   475	480	483	java/io/IOException
    //   326	333	488	finally
    //   338	346	488	finally
    //   351	358	488	finally
    //   12	44	496	java/net/URISyntaxException
    //   44	61	496	java/net/URISyntaxException
    //   65	155	496	java/net/URISyntaxException
    //   182	190	496	java/net/URISyntaxException
    //   190	219	496	java/net/URISyntaxException
    //   235	299	496	java/net/URISyntaxException
    //   303	326	496	java/net/URISyntaxException
    //   358	363	496	java/net/URISyntaxException
    //   363	414	496	java/net/URISyntaxException
    //   430	438	496	java/net/URISyntaxException
    //   446	454	496	java/net/URISyntaxException
    //   454	456	496	java/net/URISyntaxException
    //   475	480	496	java/net/URISyntaxException
    //   489	494	496	java/net/URISyntaxException
    //   494	496	496	java/net/URISyntaxException
    //   358	363	510	java/io/IOException
    //   489	494	515	java/io/IOException
    //   446	454	519	java/io/IOException
    //   182	190	523	java/io/IOException
  }
  
  /* Error */
  public static StringContent postAsStringByHttps(String paramString1, Map<String, String> paramMap1, Map<String, String> paramMap2, boolean paramBoolean, String paramString2, LengthPair paramLengthPair)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_2
    //   2: invokestatic 223	com/mi/milink/sdk/base/os/SimpleRequest:makeConn	(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    //   5: astore_2
    //   6: aload_2
    //   7: ifnonnull +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: aload_2
    //   13: iconst_1
    //   14: invokevirtual 226	java/net/HttpURLConnection:setDoInput	(Z)V
    //   17: aload_2
    //   18: iconst_1
    //   19: invokevirtual 229	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   22: aload_2
    //   23: ldc -25
    //   25: invokevirtual 234	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   28: aload 4
    //   30: invokestatic 239	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   33: ifne +11 -> 44
    //   36: aload_2
    //   37: ldc -15
    //   39: aload 4
    //   41: invokevirtual 244	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   44: aload_2
    //   45: ldc -10
    //   47: ldc -8
    //   49: invokevirtual 244	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   52: aload_2
    //   53: invokevirtual 251	java/net/HttpURLConnection:connect	()V
    //   56: aload_1
    //   57: invokestatic 253	com/mi/milink/sdk/base/os/SimpleRequest:mapToPairs	(Ljava/util/Map;)Ljava/util/List;
    //   60: astore_1
    //   61: aload_1
    //   62: ifnull +128 -> 190
    //   65: aload_1
    //   66: ldc 23
    //   68: invokestatic 52	org/apache/http/client/utils/URLEncodedUtils:format	(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    //   71: astore 4
    //   73: new 255	java/io/BufferedOutputStream
    //   76: dup
    //   77: aload_2
    //   78: invokevirtual 259	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   81: invokespecial 262	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   84: astore_1
    //   85: aload 4
    //   87: ldc 23
    //   89: invokevirtual 266	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   92: astore 4
    //   94: ldc 26
    //   96: new 45	java/lang/StringBuilder
    //   99: dup
    //   100: ldc_w 268
    //   103: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   106: aload 4
    //   108: arraylength
    //   109: invokevirtual 271	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   112: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: invokestatic 274	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   118: iconst_1
    //   119: invokestatic 280	com/mi/milink/sdk/util/compress/CompressionFactory:createCompression	(I)Lcom/mi/milink/sdk/util/compress/ICompression;
    //   122: aload 4
    //   124: invokeinterface 286 2 0
    //   129: astore 7
    //   131: ldc 26
    //   133: new 45	java/lang/StringBuilder
    //   136: dup
    //   137: ldc_w 288
    //   140: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   143: aload 7
    //   145: arraylength
    //   146: invokevirtual 271	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   149: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: invokestatic 274	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   155: aload_1
    //   156: aload 7
    //   158: invokevirtual 292	java/io/BufferedOutputStream:write	([B)V
    //   161: aload 5
    //   163: ifnull +19 -> 182
    //   166: aload 5
    //   168: aload 4
    //   170: arraylength
    //   171: putfield 295	com/mi/milink/sdk/base/os/SimpleRequest$LengthPair:originLength	I
    //   174: aload 5
    //   176: aload 7
    //   178: arraylength
    //   179: putfield 298	com/mi/milink/sdk/base/os/SimpleRequest$LengthPair:compressLength	I
    //   182: aload_1
    //   183: invokevirtual 301	java/io/BufferedOutputStream:flush	()V
    //   186: aload_1
    //   187: invokevirtual 304	java/io/BufferedOutputStream:close	()V
    //   190: aload_2
    //   191: invokevirtual 307	java/net/HttpURLConnection:getResponseCode	()I
    //   194: istore 6
    //   196: ldc 26
    //   198: new 45	java/lang/StringBuilder
    //   201: dup
    //   202: ldc_w 309
    //   205: invokespecial 46	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   208: iload 6
    //   210: invokevirtual 271	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   213: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: invokestatic 274	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   219: iload 6
    //   221: sipush 200
    //   224: if_icmpeq +11 -> 235
    //   227: iload 6
    //   229: sipush 302
    //   232: if_icmpne +271 -> 503
    //   235: aload_2
    //   236: invokevirtual 313	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   239: astore_1
    //   240: new 315	java/net/CookieManager
    //   243: dup
    //   244: invokespecial 316	java/net/CookieManager:<init>	()V
    //   247: astore 4
    //   249: new 139	java/net/URL
    //   252: dup
    //   253: aload_0
    //   254: invokespecial 140	java/net/URL:<init>	(Ljava/lang/String;)V
    //   257: astore_0
    //   258: new 318	java/net/URI
    //   261: dup
    //   262: aload_0
    //   263: invokevirtual 321	java/net/URL:getProtocol	()Ljava/lang/String;
    //   266: aload_0
    //   267: invokevirtual 324	java/net/URL:getHost	()Ljava/lang/String;
    //   270: aload_0
    //   271: invokevirtual 327	java/net/URL:getPath	()Ljava/lang/String;
    //   274: aload_0
    //   275: invokevirtual 330	java/net/URL:getQuery	()Ljava/lang/String;
    //   278: aconst_null
    //   279: invokespecial 333	java/net/URI:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   282: astore_0
    //   283: aload 4
    //   285: aload_0
    //   286: aload_1
    //   287: invokevirtual 336	java/net/CookieManager:put	(Ljava/net/URI;Ljava/util/Map;)V
    //   290: new 45	java/lang/StringBuilder
    //   293: dup
    //   294: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   297: astore 5
    //   299: iload_3
    //   300: ifeq +63 -> 363
    //   303: new 338	java/io/BufferedReader
    //   306: dup
    //   307: new 340	java/io/InputStreamReader
    //   310: dup
    //   311: aload_2
    //   312: invokevirtual 344	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   315: invokespecial 347	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   318: sipush 1024
    //   321: invokespecial 350	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   324: astore 7
    //   326: aload 7
    //   328: invokevirtual 353	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   331: astore 8
    //   333: aload 8
    //   335: ifnull +140 -> 475
    //   338: aload 5
    //   340: aload 8
    //   342: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   345: pop
    //   346: goto -20 -> 326
    //   349: astore 8
    //   351: ldc 26
    //   353: aload 8
    //   355: invokestatic 146	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   358: aload 7
    //   360: invokevirtual 354	java/io/BufferedReader:close	()V
    //   363: new 18	com/mi/milink/sdk/base/os/SimpleRequest$StringContent
    //   366: dup
    //   367: aload 5
    //   369: invokevirtual 74	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   372: invokespecial 355	com/mi/milink/sdk/base/os/SimpleRequest$StringContent:<init>	(Ljava/lang/String;)V
    //   375: astore 5
    //   377: aload 4
    //   379: invokevirtual 359	java/net/CookieManager:getCookieStore	()Ljava/net/CookieStore;
    //   382: aload_0
    //   383: invokeinterface 364 2 0
    //   388: invokestatic 366	com/mi/milink/sdk/base/os/SimpleRequest:parseCookies	(Ljava/util/List;)Ljava/util/Map;
    //   391: astore_0
    //   392: aload 5
    //   394: aload_0
    //   395: invokevirtual 370	com/mi/milink/sdk/base/os/SimpleRequest$StringContent:putCookies	(Ljava/util/Map;)V
    //   398: aload_0
    //   399: aload_1
    //   400: invokestatic 372	com/mi/milink/sdk/base/os/SimpleRequest:listToMap	(Ljava/util/Map;)Ljava/util/Map;
    //   403: invokeinterface 375 2 0
    //   408: aload 5
    //   410: aload_0
    //   411: invokevirtual 378	com/mi/milink/sdk/base/os/SimpleRequest$StringContent:putHeaders	(Ljava/util/Map;)V
    //   414: aload_2
    //   415: invokevirtual 381	java/net/HttpURLConnection:disconnect	()V
    //   418: aload 5
    //   420: areturn
    //   421: astore 4
    //   423: ldc 26
    //   425: aload 4
    //   427: invokestatic 146	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   430: aload_1
    //   431: invokevirtual 301	java/io/BufferedOutputStream:flush	()V
    //   434: aload_1
    //   435: invokevirtual 304	java/io/BufferedOutputStream:close	()V
    //   438: goto -248 -> 190
    //   441: astore_1
    //   442: goto -252 -> 190
    //   445: astore_0
    //   446: aload_1
    //   447: invokevirtual 301	java/io/BufferedOutputStream:flush	()V
    //   450: aload_1
    //   451: invokevirtual 304	java/io/BufferedOutputStream:close	()V
    //   454: aload_0
    //   455: athrow
    //   456: astore_0
    //   457: new 212	java/io/IOException
    //   460: dup
    //   461: ldc_w 383
    //   464: invokespecial 384	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   467: athrow
    //   468: astore_0
    //   469: aload_2
    //   470: invokevirtual 381	java/net/HttpURLConnection:disconnect	()V
    //   473: aload_0
    //   474: athrow
    //   475: aload 7
    //   477: invokevirtual 354	java/io/BufferedReader:close	()V
    //   480: goto -117 -> 363
    //   483: astore 7
    //   485: goto -122 -> 363
    //   488: astore_0
    //   489: aload 7
    //   491: invokevirtual 354	java/io/BufferedReader:close	()V
    //   494: aload_0
    //   495: athrow
    //   496: astore_0
    //   497: aload_2
    //   498: invokevirtual 381	java/net/HttpURLConnection:disconnect	()V
    //   501: aconst_null
    //   502: areturn
    //   503: aload_2
    //   504: invokevirtual 381	java/net/HttpURLConnection:disconnect	()V
    //   507: goto -6 -> 501
    //   510: astore 7
    //   512: goto -149 -> 363
    //   515: astore_1
    //   516: goto -22 -> 494
    //   519: astore_1
    //   520: goto -66 -> 454
    //   523: astore_1
    //   524: goto -334 -> 190
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	527	0	paramString1	String
    //   0	527	1	paramMap1	Map<String, String>
    //   0	527	2	paramMap2	Map<String, String>
    //   0	527	3	paramBoolean	boolean
    //   0	527	4	paramString2	String
    //   0	527	5	paramLengthPair	LengthPair
    //   194	39	6	i	int
    //   129	347	7	localObject	Object
    //   483	7	7	localIOException1	IOException
    //   510	1	7	localIOException2	IOException
    //   331	10	8	str	String
    //   349	5	8	localIOException3	IOException
    // Exception table:
    //   from	to	target	type
    //   326	333	349	java/io/IOException
    //   338	346	349	java/io/IOException
    //   155	161	421	java/lang/Exception
    //   166	182	421	java/lang/Exception
    //   430	438	441	java/io/IOException
    //   155	161	445	finally
    //   166	182	445	finally
    //   423	430	445	finally
    //   12	44	456	java/net/ProtocolException
    //   44	61	456	java/net/ProtocolException
    //   65	155	456	java/net/ProtocolException
    //   182	190	456	java/net/ProtocolException
    //   190	219	456	java/net/ProtocolException
    //   235	299	456	java/net/ProtocolException
    //   303	326	456	java/net/ProtocolException
    //   358	363	456	java/net/ProtocolException
    //   363	414	456	java/net/ProtocolException
    //   430	438	456	java/net/ProtocolException
    //   446	454	456	java/net/ProtocolException
    //   454	456	456	java/net/ProtocolException
    //   475	480	456	java/net/ProtocolException
    //   489	494	456	java/net/ProtocolException
    //   494	496	456	java/net/ProtocolException
    //   12	44	468	finally
    //   44	61	468	finally
    //   65	155	468	finally
    //   182	190	468	finally
    //   190	219	468	finally
    //   235	299	468	finally
    //   303	326	468	finally
    //   358	363	468	finally
    //   363	414	468	finally
    //   430	438	468	finally
    //   446	454	468	finally
    //   454	456	468	finally
    //   457	468	468	finally
    //   475	480	468	finally
    //   489	494	468	finally
    //   494	496	468	finally
    //   475	480	483	java/io/IOException
    //   326	333	488	finally
    //   338	346	488	finally
    //   351	358	488	finally
    //   12	44	496	java/net/URISyntaxException
    //   44	61	496	java/net/URISyntaxException
    //   65	155	496	java/net/URISyntaxException
    //   182	190	496	java/net/URISyntaxException
    //   190	219	496	java/net/URISyntaxException
    //   235	299	496	java/net/URISyntaxException
    //   303	326	496	java/net/URISyntaxException
    //   358	363	496	java/net/URISyntaxException
    //   363	414	496	java/net/URISyntaxException
    //   430	438	496	java/net/URISyntaxException
    //   446	454	496	java/net/URISyntaxException
    //   454	456	496	java/net/URISyntaxException
    //   475	480	496	java/net/URISyntaxException
    //   489	494	496	java/net/URISyntaxException
    //   494	496	496	java/net/URISyntaxException
    //   358	363	510	java/io/IOException
    //   489	494	515	java/io/IOException
    //   446	454	519	java/io/IOException
    //   182	190	523	java/io/IOException
  }
  
  public static class HeaderContent
  {
    private final Map<String, String> cookies = new HashMap();
    private final Map<String, String> headers = new HashMap();
    
    public String getCookie(String paramString)
    {
      return (String)this.cookies.get(paramString);
    }
    
    public Map<String, String> getCookies()
    {
      return this.cookies;
    }
    
    public String getHeader(String paramString)
    {
      return (String)this.headers.get(paramString);
    }
    
    public Map<String, String> getHeaders()
    {
      return this.headers;
    }
    
    public void putCookie(String paramString1, String paramString2)
    {
      this.cookies.put(paramString1, paramString2);
    }
    
    public void putCookies(Map<String, String> paramMap)
    {
      this.cookies.putAll(paramMap);
    }
    
    public void putHeader(String paramString1, String paramString2)
    {
      this.headers.put(paramString1, paramString2);
    }
    
    public void putHeaders(Map<String, String> paramMap)
    {
      this.headers.putAll(paramMap);
    }
    
    public String toString()
    {
      return "HeaderContent{headers=" + this.headers + '}';
    }
  }
  
  public static class LengthPair
  {
    public int compressLength;
    public int originLength;
  }
  
  public static class MapContent
    extends SimpleRequest.HeaderContent
  {
    private Map<String, Object> bodies;
    
    public MapContent(Map<String, Object> paramMap)
    {
      this.bodies = paramMap;
    }
    
    public Object getFromBody(String paramString)
    {
      return this.bodies.get(paramString);
    }
    
    public String toString()
    {
      return "MapContent{bodies=" + this.bodies + '}';
    }
  }
  
  public static class StreamContent
    extends SimpleRequest.HeaderContent
  {
    private InputStream stream;
    
    public StreamContent(InputStream paramInputStream)
    {
      this.stream = paramInputStream;
    }
    
    public InputStream getStream()
    {
      return this.stream;
    }
  }
  
  public static class StringContent
    extends SimpleRequest.HeaderContent
  {
    private String body;
    
    public StringContent(String paramString)
    {
      this.body = paramString;
    }
    
    public String getBody()
    {
      return this.body;
    }
    
    public String toString()
    {
      return "StringContent{body='" + this.body + '\'' + '}';
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\base\os\SimpleRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */