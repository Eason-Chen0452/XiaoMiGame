package com.xiaomi.accountsdk.request;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import com.xiaomi.accountsdk.account.XMPassportSettings;
import com.xiaomi.accountsdk.utils.EasyMap;
import com.xiaomi.accountsdk.utils.VersionUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.CookieHandler;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.logging.Logger;

@SuppressLint({"NewApi"})
public final class SimpleRequest
{
  private static final Logger a = Logger.getLogger(SimpleRequest.class.getSimpleName());
  private static a b;
  private static a c = new f();
  private static b d = null;
  
  public static StringContent a(String paramString)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    return b(paramString);
  }
  
  private static String a(Map<String, String> paramMap, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(paramString);
      }
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (String)((Map.Entry)localObject).getValue();
      localStringBuilder.append(str);
      localStringBuilder.append("=");
      localStringBuilder.append((String)localObject);
    }
    return localStringBuilder.toString();
  }
  
  private static Map<String, String> a(List<HttpCookie> paramList)
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
  
  /* Error */
  private static StringContent b(String paramString)
    throws IOException, AccessDeniedException, AuthenticationFailureException
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: new 148	java/lang/NullPointerException
    //   7: dup
    //   8: ldc -106
    //   10: invokespecial 153	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: aload_0
    //   15: invokestatic 159	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   18: invokevirtual 163	android/net/Uri:buildUpon	()Landroid/net/Uri$Builder;
    //   21: invokevirtual 169	android/net/Uri$Builder:build	()Landroid/net/Uri;
    //   24: invokevirtual 170	android/net/Uri:toString	()Ljava/lang/String;
    //   27: astore_3
    //   28: aload_3
    //   29: invokestatic 173	com/xiaomi/accountsdk/request/SimpleRequest:c	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    //   32: astore_2
    //   33: aload_2
    //   34: ifnonnull +21 -> 55
    //   37: getstatic 47	com/xiaomi/accountsdk/request/SimpleRequest:a	Ljava/util/logging/Logger;
    //   40: ldc -81
    //   42: invokevirtual 178	java/util/logging/Logger:severe	(Ljava/lang/String;)V
    //   45: new 61	java/io/IOException
    //   48: dup
    //   49: ldc -76
    //   51: invokespecial 181	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   54: athrow
    //   55: aload_2
    //   56: iconst_1
    //   57: invokevirtual 187	java/net/HttpURLConnection:setDoInput	(Z)V
    //   60: aload_2
    //   61: ldc -67
    //   63: invokevirtual 192	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   66: aload_2
    //   67: invokevirtual 195	java/net/HttpURLConnection:connect	()V
    //   70: aload_2
    //   71: invokevirtual 198	java/net/HttpURLConnection:getResponseCode	()I
    //   74: istore_1
    //   75: invokestatic 203	com/xiaomi/accountsdk/utils/ServerTimeUtil:a	()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;
    //   78: ifnull +369 -> 447
    //   81: aload_2
    //   82: ldc -51
    //   84: invokevirtual 209	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   87: astore 4
    //   89: aload 4
    //   91: ifnull +356 -> 447
    //   94: invokestatic 203	com/xiaomi/accountsdk/utils/ServerTimeUtil:a	()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;
    //   97: aload_0
    //   98: aload 4
    //   100: invokeinterface 214 3 0
    //   105: goto +342 -> 447
    //   108: aload_2
    //   109: invokevirtual 218	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   112: astore_0
    //   113: new 220	java/net/CookieManager
    //   116: dup
    //   117: invokespecial 221	java/net/CookieManager:<init>	()V
    //   120: astore 4
    //   122: aload_3
    //   123: invokestatic 227	java/net/URI:create	(Ljava/lang/String;)Ljava/net/URI;
    //   126: astore_3
    //   127: aload 4
    //   129: aload_3
    //   130: aload_0
    //   131: invokevirtual 230	java/net/CookieManager:put	(Ljava/net/URI;Ljava/util/Map;)V
    //   134: aload 4
    //   136: invokevirtual 234	java/net/CookieManager:getCookieStore	()Ljava/net/CookieStore;
    //   139: aload_3
    //   140: invokeinterface 240 2 0
    //   145: invokestatic 242	com/xiaomi/accountsdk/request/SimpleRequest:a	(Ljava/util/List;)Ljava/util/Map;
    //   148: astore_3
    //   149: new 75	java/lang/StringBuilder
    //   152: dup
    //   153: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   156: astore 5
    //   158: new 244	java/io/BufferedReader
    //   161: dup
    //   162: new 246	java/io/InputStreamReader
    //   165: dup
    //   166: aload_2
    //   167: invokevirtual 250	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   170: invokespecial 253	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   173: sipush 1024
    //   176: invokespecial 256	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   179: astore 4
    //   181: aload 4
    //   183: invokevirtual 259	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   186: astore 6
    //   188: aload 6
    //   190: ifnull +41 -> 231
    //   193: aload 5
    //   195: aload 6
    //   197: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: pop
    //   201: goto -20 -> 181
    //   204: astore_0
    //   205: aload 4
    //   207: invokestatic 264	com/xiaomi/accountsdk/utils/IOUtils:a	(Ljava/io/Reader;)V
    //   210: aload_0
    //   211: athrow
    //   212: astore_0
    //   213: new 61	java/io/IOException
    //   216: dup
    //   217: ldc_w 266
    //   220: invokespecial 181	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   223: athrow
    //   224: astore_0
    //   225: aload_2
    //   226: invokevirtual 269	java/net/HttpURLConnection:disconnect	()V
    //   229: aload_0
    //   230: athrow
    //   231: aload 4
    //   233: invokestatic 264	com/xiaomi/accountsdk/utils/IOUtils:a	(Ljava/io/Reader;)V
    //   236: new 15	com/xiaomi/accountsdk/request/SimpleRequest$StringContent
    //   239: dup
    //   240: aload 5
    //   242: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   245: invokespecial 270	com/xiaomi/accountsdk/request/SimpleRequest$StringContent:<init>	(Ljava/lang/String;)V
    //   248: astore 4
    //   250: aload 4
    //   252: aload_3
    //   253: invokevirtual 273	com/xiaomi/accountsdk/request/SimpleRequest$StringContent:b	(Ljava/util/Map;)V
    //   256: aload 4
    //   258: aload_0
    //   259: invokestatic 278	com/xiaomi/accountsdk/utils/ObjectUtils:a	(Ljava/util/Map;)Ljava/util/Map;
    //   262: invokevirtual 280	com/xiaomi/accountsdk/request/SimpleRequest$StringContent:a	(Ljava/util/Map;)V
    //   265: aload 4
    //   267: iload_1
    //   268: invokevirtual 283	com/xiaomi/accountsdk/request/SimpleRequest$StringContent:a	(I)V
    //   271: aload_2
    //   272: invokevirtual 269	java/net/HttpURLConnection:disconnect	()V
    //   275: aload 4
    //   277: areturn
    //   278: iload_1
    //   279: sipush 403
    //   282: if_icmpne +182 -> 464
    //   285: new 63	com/xiaomi/accountsdk/request/AccessDeniedException
    //   288: dup
    //   289: iload_1
    //   290: ldc_w 285
    //   293: invokespecial 288	com/xiaomi/accountsdk/request/AccessDeniedException:<init>	(ILjava/lang/String;)V
    //   296: athrow
    //   297: new 65	com/xiaomi/accountsdk/request/AuthenticationFailureException
    //   300: dup
    //   301: iload_1
    //   302: new 75	java/lang/StringBuilder
    //   305: dup
    //   306: ldc_w 290
    //   309: invokespecial 291	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   312: iload_1
    //   313: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   316: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   319: invokespecial 295	com/xiaomi/accountsdk/request/AuthenticationFailureException:<init>	(ILjava/lang/String;)V
    //   322: astore_0
    //   323: aload_0
    //   324: aload_2
    //   325: ldc_w 297
    //   328: invokevirtual 209	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   331: invokevirtual 299	com/xiaomi/accountsdk/request/AuthenticationFailureException:a	(Ljava/lang/String;)V
    //   334: aload_0
    //   335: aload_2
    //   336: ldc_w 301
    //   339: invokevirtual 209	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   342: invokevirtual 303	com/xiaomi/accountsdk/request/AuthenticationFailureException:b	(Ljava/lang/String;)V
    //   345: aload_0
    //   346: athrow
    //   347: getstatic 47	com/xiaomi/accountsdk/request/SimpleRequest:a	Ljava/util/logging/Logger;
    //   350: new 75	java/lang/StringBuilder
    //   353: dup
    //   354: ldc_w 305
    //   357: invokespecial 291	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   360: iload_1
    //   361: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   364: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   367: invokevirtual 308	java/util/logging/Logger:info	(Ljava/lang/String;)V
    //   370: iload_1
    //   371: sipush 301
    //   374: if_icmpne +48 -> 422
    //   377: getstatic 47	com/xiaomi/accountsdk/request/SimpleRequest:a	Ljava/util/logging/Logger;
    //   380: new 75	java/lang/StringBuilder
    //   383: dup
    //   384: ldc_w 310
    //   387: invokespecial 291	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   390: aload_2
    //   391: invokevirtual 314	java/net/HttpURLConnection:getURL	()Ljava/net/URL;
    //   394: invokevirtual 319	java/net/URL:getHost	()Ljava/lang/String;
    //   397: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: ldc_w 321
    //   403: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   406: aload_2
    //   407: ldc_w 323
    //   410: invokevirtual 209	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   413: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: invokevirtual 308	java/util/logging/Logger:info	(Ljava/lang/String;)V
    //   422: new 61	java/io/IOException
    //   425: dup
    //   426: new 75	java/lang/StringBuilder
    //   429: dup
    //   430: ldc_w 325
    //   433: invokespecial 291	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   436: iload_1
    //   437: invokevirtual 294	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   440: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   443: invokespecial 181	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   446: athrow
    //   447: iload_1
    //   448: sipush 200
    //   451: if_icmpeq -343 -> 108
    //   454: iload_1
    //   455: sipush 302
    //   458: if_icmpne -180 -> 278
    //   461: goto -353 -> 108
    //   464: iload_1
    //   465: sipush 401
    //   468: if_icmpeq -171 -> 297
    //   471: iload_1
    //   472: sipush 400
    //   475: if_icmpne -128 -> 347
    //   478: goto -181 -> 297
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	481	0	paramString	String
    //   74	402	1	i	int
    //   32	375	2	localHttpURLConnection	HttpURLConnection
    //   27	226	3	localObject1	Object
    //   87	189	4	localObject2	Object
    //   156	85	5	localStringBuilder	StringBuilder
    //   186	10	6	str	String
    // Exception table:
    //   from	to	target	type
    //   181	188	204	finally
    //   193	201	204	finally
    //   55	89	212	java/net/ProtocolException
    //   94	105	212	java/net/ProtocolException
    //   108	181	212	java/net/ProtocolException
    //   205	212	212	java/net/ProtocolException
    //   231	271	212	java/net/ProtocolException
    //   285	297	212	java/net/ProtocolException
    //   297	347	212	java/net/ProtocolException
    //   347	370	212	java/net/ProtocolException
    //   377	422	212	java/net/ProtocolException
    //   422	447	212	java/net/ProtocolException
    //   55	89	224	finally
    //   94	105	224	finally
    //   108	181	224	finally
    //   205	212	224	finally
    //   213	224	224	finally
    //   231	271	224	finally
    //   285	297	224	finally
    //   297	347	224	finally
    //   347	370	224	finally
    //   377	422	224	finally
    //   422	447	224	finally
  }
  
  private static HttpURLConnection c(String paramString)
  {
    try
    {
      paramString = new URL(paramString);
      if (paramString == null)
      {
        a.severe("failed to init url");
        return null;
      }
    }
    catch (MalformedURLException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = null;
      }
      Object localObject = Integer.valueOf(30000);
      try
      {
        CookieHandler.setDefault(null);
        paramString = c.a(paramString);
        paramString.setInstanceFollowRedirects(false);
        paramString.setConnectTimeout(((Integer)localObject).intValue());
        paramString.setReadTimeout(((Integer)localObject).intValue());
        paramString.setUseCaches(false);
        paramString.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        if (!TextUtils.isEmpty(XMPassportSettings.a())) {
          paramString.setRequestProperty("User-Agent", XMPassportSettings.a());
        }
        localObject = new EasyMap();
        ((Map)localObject).put("sdkVersion", VersionUtils.a());
        paramString.setRequestProperty("Cookie", a((Map)localObject, "; "));
        return paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
    }
    return null;
  }
  
  public static class HeaderContent
  {
    private int a = -1;
    private final Set<String> b = new HashSet();
    private final Map<String, String> c = new HashMap();
    
    public final void a(int paramInt)
    {
      this.a = paramInt;
    }
    
    public final void a(Map<String, String> paramMap)
    {
      this.c.putAll(paramMap);
    }
    
    public final void b(Map<String, String> paramMap)
    {
      a(paramMap);
      if (paramMap != null) {
        this.b.addAll(paramMap.keySet());
      }
    }
    
    public String toString()
    {
      return "HeaderContent{headers=" + this.c + '}';
    }
  }
  
  public static class MapContent
    extends SimpleRequest.HeaderContent
  {
    private Map<String, Object> a;
    
    public MapContent(Map<String, Object> paramMap)
    {
      this.a = paramMap;
    }
    
    public String toString()
    {
      return "MapContent{bodies=" + this.a + '}';
    }
  }
  
  public static class StreamContent
    extends SimpleRequest.HeaderContent
  {
    private InputStream a;
    
    public StreamContent(InputStream paramInputStream)
    {
      this.a = paramInputStream;
    }
  }
  
  public static class StringContent
    extends SimpleRequest.HeaderContent
  {
    private String a;
    
    public StringContent(String paramString)
    {
      this.a = paramString;
    }
    
    public final String a()
    {
      return this.a;
    }
    
    public String toString()
    {
      return "StringContent{body='" + this.a + '\'' + '}';
    }
  }
  
  public static abstract interface a
  {
    public abstract HttpURLConnection a(URL paramURL)
      throws IOException;
  }
  
  public static abstract interface b {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\request\SimpleRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */