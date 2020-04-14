package com.xiaomi.gamecenter.gamesdk.datasdk.b.a;

public final class a
{
  /* Error */
  public static int a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: iconst_0
    //   3: istore_2
    //   4: aconst_null
    //   5: astore 4
    //   7: aconst_null
    //   8: astore 5
    //   10: new 12	java/net/URL
    //   13: dup
    //   14: aload_0
    //   15: invokespecial 16	java/net/URL:<init>	(Ljava/lang/String;)V
    //   18: invokevirtual 20	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   21: checkcast 22	javax/net/ssl/HttpsURLConnection
    //   24: astore_0
    //   25: aload_0
    //   26: ldc 24
    //   28: ldc 26
    //   30: invokevirtual 30	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   33: aload_0
    //   34: ldc 32
    //   36: ldc 26
    //   38: invokevirtual 30	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   41: aload_0
    //   42: ldc 34
    //   44: ldc 36
    //   46: invokevirtual 30	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   49: aload_0
    //   50: ldc 38
    //   52: ldc 40
    //   54: invokevirtual 30	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   57: aload_0
    //   58: iconst_0
    //   59: invokevirtual 44	javax/net/ssl/HttpsURLConnection:setUseCaches	(Z)V
    //   62: aload_0
    //   63: ldc 45
    //   65: invokevirtual 49	javax/net/ssl/HttpsURLConnection:setReadTimeout	(I)V
    //   68: aload_0
    //   69: ldc 45
    //   71: invokevirtual 52	javax/net/ssl/HttpsURLConnection:setConnectTimeout	(I)V
    //   74: aload_0
    //   75: iconst_1
    //   76: invokevirtual 55	javax/net/ssl/HttpsURLConnection:setDoInput	(Z)V
    //   79: aload_0
    //   80: iconst_1
    //   81: invokevirtual 58	javax/net/ssl/HttpsURLConnection:setDoOutput	(Z)V
    //   84: aload_1
    //   85: invokestatic 64	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   88: ifne +44 -> 132
    //   91: aload_1
    //   92: ldc 66
    //   94: invokevirtual 72	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   97: astore_1
    //   98: new 74	java/util/zip/GZIPOutputStream
    //   101: dup
    //   102: aload_0
    //   103: invokevirtual 78	javax/net/ssl/HttpsURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   106: invokespecial 81	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   109: astore 4
    //   111: aload 4
    //   113: aload_1
    //   114: invokevirtual 85	java/util/zip/GZIPOutputStream:write	([B)V
    //   117: aload 4
    //   119: invokevirtual 89	java/util/zip/GZIPOutputStream:flush	()V
    //   122: aload 4
    //   124: invokevirtual 91	java/util/zip/GZIPOutputStream:close	()V
    //   127: aload_0
    //   128: invokevirtual 95	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   131: istore_2
    //   132: iload_2
    //   133: istore_3
    //   134: aload_0
    //   135: ifnull +107 -> 242
    //   138: aload_0
    //   139: invokevirtual 99	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   142: invokevirtual 102	java/io/InputStream:close	()V
    //   145: aload_0
    //   146: invokevirtual 105	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   149: iload_2
    //   150: ireturn
    //   151: astore_1
    //   152: aload_1
    //   153: invokevirtual 108	java/io/IOException:printStackTrace	()V
    //   156: goto -11 -> 145
    //   159: astore_1
    //   160: aload 5
    //   162: astore_0
    //   163: aload_0
    //   164: astore 4
    //   166: ldc 110
    //   168: ldc 112
    //   170: aload_1
    //   171: invokestatic 118	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   174: pop
    //   175: aload_0
    //   176: ifnull +66 -> 242
    //   179: aload_0
    //   180: invokevirtual 99	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   183: invokevirtual 102	java/io/InputStream:close	()V
    //   186: aload_0
    //   187: invokevirtual 105	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   190: iconst_0
    //   191: ireturn
    //   192: astore_1
    //   193: aload_1
    //   194: invokevirtual 108	java/io/IOException:printStackTrace	()V
    //   197: goto -11 -> 186
    //   200: astore_0
    //   201: aload 4
    //   203: ifnull +16 -> 219
    //   206: aload 4
    //   208: invokevirtual 99	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   211: invokevirtual 102	java/io/InputStream:close	()V
    //   214: aload 4
    //   216: invokevirtual 105	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   219: aload_0
    //   220: athrow
    //   221: astore_1
    //   222: aload_1
    //   223: invokevirtual 108	java/io/IOException:printStackTrace	()V
    //   226: goto -12 -> 214
    //   229: astore_1
    //   230: aload_0
    //   231: astore 4
    //   233: aload_1
    //   234: astore_0
    //   235: goto -34 -> 201
    //   238: astore_1
    //   239: goto -76 -> 163
    //   242: iload_3
    //   243: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	244	0	paramString1	String
    //   0	244	1	paramString2	String
    //   3	147	2	i	int
    //   1	242	3	j	int
    //   5	227	4	localObject1	Object
    //   8	153	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   138	145	151	java/io/IOException
    //   10	25	159	java/lang/Exception
    //   179	186	192	java/io/IOException
    //   10	25	200	finally
    //   166	175	200	finally
    //   206	214	221	java/io/IOException
    //   25	84	229	finally
    //   84	132	229	finally
    //   25	84	238	java/lang/Exception
    //   84	132	238	java/lang/Exception
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */