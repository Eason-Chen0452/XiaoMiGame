package com.xiaomi.game.plugin.stat.b;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import org.json.JSONObject;

class c
{
  /* Error */
  private static String a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: new 14	java/net/URL
    //   4: dup
    //   5: aload_1
    //   6: invokespecial 18	java/net/URL:<init>	(Ljava/lang/String;)V
    //   9: invokestatic 21	com/xiaomi/game/plugin/stat/b/c:a	(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   12: astore_3
    //   13: aload_3
    //   14: sipush 10000
    //   17: invokevirtual 27	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   20: aload_3
    //   21: sipush 15000
    //   24: invokevirtual 30	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   27: aload_3
    //   28: ldc 32
    //   30: invokevirtual 35	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   33: aload_3
    //   34: iconst_1
    //   35: invokevirtual 39	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   38: aload_2
    //   39: invokevirtual 45	java/lang/String:getBytes	()[B
    //   42: astore_0
    //   43: aload_3
    //   44: invokevirtual 49	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   47: astore_2
    //   48: aload_2
    //   49: aload_0
    //   50: iconst_0
    //   51: aload_0
    //   52: arraylength
    //   53: invokevirtual 55	java/io/OutputStream:write	([BII)V
    //   56: aload_2
    //   57: invokevirtual 59	java/io/OutputStream:flush	()V
    //   60: aload_2
    //   61: invokevirtual 62	java/io/OutputStream:close	()V
    //   64: aload_3
    //   65: invokevirtual 66	java/net/HttpURLConnection:getResponseCode	()I
    //   68: pop
    //   69: new 68	java/io/BufferedReader
    //   72: dup
    //   73: new 70	java/io/InputStreamReader
    //   76: dup
    //   77: new 6	com/xiaomi/game/plugin/stat/b/c$a
    //   80: dup
    //   81: aload_3
    //   82: invokevirtual 74	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   85: invokespecial 77	com/xiaomi/game/plugin/stat/b/c$a:<init>	(Ljava/io/InputStream;)V
    //   88: invokespecial 78	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   91: invokespecial 81	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   94: astore_1
    //   95: aload_1
    //   96: invokevirtual 85	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   99: astore_0
    //   100: new 87	java/lang/StringBuilder
    //   103: dup
    //   104: invokespecial 89	java/lang/StringBuilder:<init>	()V
    //   107: astore_2
    //   108: ldc 91
    //   110: invokestatic 97	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   113: astore 4
    //   115: aload_0
    //   116: ifnull +24 -> 140
    //   119: aload_2
    //   120: aload_0
    //   121: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: pop
    //   125: aload_2
    //   126: aload 4
    //   128: invokevirtual 101	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: pop
    //   132: aload_1
    //   133: invokevirtual 85	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   136: astore_0
    //   137: goto -22 -> 115
    //   140: aload_2
    //   141: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: astore_0
    //   145: aload_1
    //   146: invokevirtual 105	java/io/BufferedReader:close	()V
    //   149: aload_3
    //   150: ifnull +7 -> 157
    //   153: aload_3
    //   154: invokevirtual 108	java/net/HttpURLConnection:disconnect	()V
    //   157: aload_0
    //   158: areturn
    //   159: astore_1
    //   160: aload_1
    //   161: invokevirtual 111	java/io/IOException:printStackTrace	()V
    //   164: aload_0
    //   165: areturn
    //   166: astore 4
    //   168: aconst_null
    //   169: astore_0
    //   170: aconst_null
    //   171: astore_1
    //   172: aconst_null
    //   173: astore_3
    //   174: aload 4
    //   176: athrow
    //   177: astore 4
    //   179: aload_1
    //   180: astore_2
    //   181: aload_0
    //   182: astore_1
    //   183: aload 4
    //   185: astore_0
    //   186: aload_2
    //   187: ifnull +7 -> 194
    //   190: aload_2
    //   191: invokevirtual 62	java/io/OutputStream:close	()V
    //   194: aload_1
    //   195: ifnull +7 -> 202
    //   198: aload_1
    //   199: invokevirtual 105	java/io/BufferedReader:close	()V
    //   202: aload_3
    //   203: ifnull +7 -> 210
    //   206: aload_3
    //   207: invokevirtual 108	java/net/HttpURLConnection:disconnect	()V
    //   210: aload_0
    //   211: athrow
    //   212: astore 4
    //   214: aconst_null
    //   215: astore_0
    //   216: aconst_null
    //   217: astore_1
    //   218: aconst_null
    //   219: astore_3
    //   220: new 10	java/io/IOException
    //   223: dup
    //   224: aload 4
    //   226: invokevirtual 114	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   229: invokespecial 115	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   232: athrow
    //   233: astore_1
    //   234: aload_1
    //   235: invokevirtual 111	java/io/IOException:printStackTrace	()V
    //   238: goto -28 -> 210
    //   241: astore_0
    //   242: aconst_null
    //   243: astore_1
    //   244: aconst_null
    //   245: astore_2
    //   246: aconst_null
    //   247: astore_3
    //   248: goto -62 -> 186
    //   251: astore_0
    //   252: aconst_null
    //   253: astore_1
    //   254: aconst_null
    //   255: astore_2
    //   256: goto -70 -> 186
    //   259: astore_0
    //   260: aconst_null
    //   261: astore_1
    //   262: goto -76 -> 186
    //   265: astore_0
    //   266: aconst_null
    //   267: astore_2
    //   268: goto -82 -> 186
    //   271: astore 4
    //   273: aconst_null
    //   274: astore_0
    //   275: aconst_null
    //   276: astore_1
    //   277: goto -57 -> 220
    //   280: astore 4
    //   282: aconst_null
    //   283: astore_0
    //   284: aload_2
    //   285: astore_1
    //   286: goto -66 -> 220
    //   289: astore 4
    //   291: aconst_null
    //   292: astore_2
    //   293: aload_1
    //   294: astore_0
    //   295: aload_2
    //   296: astore_1
    //   297: goto -77 -> 220
    //   300: astore 4
    //   302: aconst_null
    //   303: astore_0
    //   304: aconst_null
    //   305: astore_1
    //   306: goto -132 -> 174
    //   309: astore 4
    //   311: aconst_null
    //   312: astore_0
    //   313: aload_2
    //   314: astore_1
    //   315: goto -141 -> 174
    //   318: astore 4
    //   320: aconst_null
    //   321: astore_2
    //   322: aload_1
    //   323: astore_0
    //   324: aload_2
    //   325: astore_1
    //   326: goto -152 -> 174
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	329	0	paramContext	Context
    //   0	329	1	paramString1	String
    //   0	329	2	paramString2	String
    //   12	236	3	localHttpURLConnection	HttpURLConnection
    //   113	14	4	str	String
    //   166	9	4	localIOException1	java.io.IOException
    //   177	7	4	localObject	Object
    //   212	13	4	localThrowable1	Throwable
    //   271	1	4	localThrowable2	Throwable
    //   280	1	4	localThrowable3	Throwable
    //   289	1	4	localThrowable4	Throwable
    //   300	1	4	localIOException2	java.io.IOException
    //   309	1	4	localIOException3	java.io.IOException
    //   318	1	4	localIOException4	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   153	157	159	java/io/IOException
    //   0	13	166	java/io/IOException
    //   174	177	177	finally
    //   220	233	177	finally
    //   0	13	212	java/lang/Throwable
    //   190	194	233	java/io/IOException
    //   198	202	233	java/io/IOException
    //   206	210	233	java/io/IOException
    //   0	13	241	finally
    //   13	48	251	finally
    //   64	95	251	finally
    //   48	64	259	finally
    //   95	115	265	finally
    //   119	137	265	finally
    //   140	149	265	finally
    //   13	48	271	java/lang/Throwable
    //   64	95	271	java/lang/Throwable
    //   48	64	280	java/lang/Throwable
    //   95	115	289	java/lang/Throwable
    //   119	137	289	java/lang/Throwable
    //   140	149	289	java/lang/Throwable
    //   13	48	300	java/io/IOException
    //   64	95	300	java/io/IOException
    //   48	64	309	java/io/IOException
    //   95	115	318	java/io/IOException
    //   119	137	318	java/io/IOException
    //   140	149	318	java/io/IOException
  }
  
  public static String a(URL paramURL)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramURL.getProtocol()).append("://10.0.0.172").append(paramURL.getPath());
    if (!TextUtils.isEmpty(paramURL.getQuery())) {
      localStringBuilder.append("?").append(paramURL.getQuery());
    }
    return localStringBuilder.toString();
  }
  
  public static HttpURLConnection a(Context paramContext, URL paramURL)
  {
    if (!"http".equals(paramURL.getProtocol())) {
      return (HttpURLConnection)paramURL.openConnection();
    }
    if (b(paramContext)) {
      return (HttpURLConnection)paramURL.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
    }
    if (!a(paramContext)) {
      return (HttpURLConnection)paramURL.openConnection();
    }
    paramContext = paramURL.getHost();
    paramURL = (HttpURLConnection)new URL(a(paramURL)).openConnection();
    paramURL.addRequestProperty("X-Online-Host", paramContext);
    return paramURL;
  }
  
  public static boolean a(Context paramContext)
  {
    if (!"CN".equalsIgnoreCase(((TelephonyManager)paramContext.getSystemService("phone")).getSimCountryIso())) {}
    for (;;)
    {
      return false;
      try
      {
        paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (paramContext == null) {
          continue;
        }
        try
        {
          paramContext = paramContext.getActiveNetworkInfo();
          if (paramContext == null) {
            continue;
          }
          paramContext = paramContext.getExtraInfo();
          if ((TextUtils.isEmpty(paramContext)) || (paramContext.length() < 3) || (paramContext.contains("ctwap"))) {
            continue;
          }
          return paramContext.regionMatches(true, paramContext.length() - 3, "wap", 0, 3);
        }
        catch (Exception paramContext)
        {
          return false;
        }
        return false;
      }
      catch (Exception paramContext) {}
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    return a(a(paramContext, "https://data.mistat.xiaomi.com/micrash", paramString));
  }
  
  private static boolean a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      try
      {
        paramString = new JSONObject(paramString);
        if (paramString.has("code"))
        {
          int i = paramString.getInt("code");
          if (i == 0) {
            return true;
          }
        }
      }
      catch (Throwable paramString)
      {
        paramString.printStackTrace();
      }
    }
    return false;
  }
  
  public static boolean b(Context paramContext)
  {
    if (!"CN".equalsIgnoreCase(((TelephonyManager)paramContext.getSystemService("phone")).getSimCountryIso())) {
      return false;
    }
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      return false;
    }
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if (paramContext == null) {
        return false;
      }
    }
    catch (Exception paramContext)
    {
      return false;
    }
    paramContext = paramContext.getExtraInfo();
    if ((TextUtils.isEmpty(paramContext)) || (paramContext.length() < 3)) {
      return false;
    }
    return paramContext.contains("ctwap");
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    return a(a(paramContext, "https://data.mistat.xiaomi.com/mistats", paramString));
  }
  
  public static final class a
    extends FilterInputStream
  {
    private boolean a;
    
    public a(InputStream paramInputStream)
    {
      super();
    }
    
    public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      if (!this.a)
      {
        paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
        if (paramInt1 != -1) {
          return paramInt1;
        }
      }
      this.a = true;
      return -1;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */