package com.xiaomi.gamecenter.sdk.utils;

public class ConnectionUtils
{
  /* Error */
  public static String a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 17	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 18	java/lang/StringBuilder:<init>	()V
    //   7: astore 5
    //   9: aconst_null
    //   10: astore 4
    //   12: aconst_null
    //   13: astore_3
    //   14: aload 4
    //   16: astore_2
    //   17: new 20	java/net/URL
    //   20: dup
    //   21: new 17	java/lang/StringBuilder
    //   24: dup
    //   25: invokespecial 18	java/lang/StringBuilder:<init>	()V
    //   28: aload_0
    //   29: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: ldc 26
    //   34: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_1
    //   38: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 30	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokespecial 33	java/net/URL:<init>	(Ljava/lang/String;)V
    //   47: invokevirtual 37	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   50: astore_0
    //   51: aload 4
    //   53: astore_2
    //   54: aload_0
    //   55: ldc 39
    //   57: ldc 41
    //   59: invokevirtual 47	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   62: aload 4
    //   64: astore_2
    //   65: aload_0
    //   66: ldc 49
    //   68: ldc 51
    //   70: invokevirtual 47	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   73: aload 4
    //   75: astore_2
    //   76: aload_0
    //   77: ldc 53
    //   79: ldc 55
    //   81: invokevirtual 47	java/net/URLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   84: aload 4
    //   86: astore_2
    //   87: aload_0
    //   88: invokevirtual 58	java/net/URLConnection:connect	()V
    //   91: aload 4
    //   93: astore_2
    //   94: aload_0
    //   95: invokevirtual 62	java/net/URLConnection:getHeaderFields	()Ljava/util/Map;
    //   98: astore_1
    //   99: aload 4
    //   101: astore_2
    //   102: aload_1
    //   103: invokeinterface 68 1 0
    //   108: invokeinterface 74 1 0
    //   113: astore 6
    //   115: aload 4
    //   117: astore_2
    //   118: aload 6
    //   120: invokeinterface 80 1 0
    //   125: ifeq +102 -> 227
    //   128: aload 4
    //   130: astore_2
    //   131: aload 6
    //   133: invokeinterface 84 1 0
    //   138: checkcast 86	java/lang/String
    //   141: astore 7
    //   143: aload 4
    //   145: astore_2
    //   146: new 17	java/lang/StringBuilder
    //   149: dup
    //   150: invokespecial 18	java/lang/StringBuilder:<init>	()V
    //   153: aload 7
    //   155: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: ldc 88
    //   160: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: aload_1
    //   164: aload 7
    //   166: invokeinterface 92 2 0
    //   171: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   174: invokevirtual 30	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   177: invokestatic 99	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;)V
    //   180: goto -65 -> 115
    //   183: astore_1
    //   184: aload_3
    //   185: astore_0
    //   186: aload_0
    //   187: astore_2
    //   188: new 17	java/lang/StringBuilder
    //   191: dup
    //   192: ldc 101
    //   194: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   197: aload_1
    //   198: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 30	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokestatic 105	cn/com/wali/basetool/log/Logger:d	(Ljava/lang/String;)V
    //   207: aload_0
    //   208: astore_2
    //   209: aload_1
    //   210: invokevirtual 108	java/lang/Exception:printStackTrace	()V
    //   213: aload_0
    //   214: ifnull +7 -> 221
    //   217: aload_0
    //   218: invokevirtual 113	java/io/BufferedReader:close	()V
    //   221: aload 5
    //   223: invokevirtual 30	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: areturn
    //   227: aload 4
    //   229: astore_2
    //   230: new 110	java/io/BufferedReader
    //   233: dup
    //   234: new 115	java/io/InputStreamReader
    //   237: dup
    //   238: aload_0
    //   239: invokevirtual 119	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   242: invokespecial 122	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   245: invokespecial 125	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   248: astore_0
    //   249: aload_0
    //   250: invokevirtual 128	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   253: astore_1
    //   254: aload_1
    //   255: ifnull +17 -> 272
    //   258: aload 5
    //   260: aload_1
    //   261: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: pop
    //   265: goto -16 -> 249
    //   268: astore_1
    //   269: goto -83 -> 186
    //   272: aload_0
    //   273: invokevirtual 113	java/io/BufferedReader:close	()V
    //   276: goto -55 -> 221
    //   279: astore_0
    //   280: aload_0
    //   281: invokevirtual 129	java/io/IOException:printStackTrace	()V
    //   284: goto -63 -> 221
    //   287: astore_0
    //   288: aload_0
    //   289: invokevirtual 129	java/io/IOException:printStackTrace	()V
    //   292: goto -71 -> 221
    //   295: astore_0
    //   296: aload_2
    //   297: ifnull +7 -> 304
    //   300: aload_2
    //   301: invokevirtual 113	java/io/BufferedReader:close	()V
    //   304: aload_0
    //   305: athrow
    //   306: astore_1
    //   307: aload_1
    //   308: invokevirtual 129	java/io/IOException:printStackTrace	()V
    //   311: goto -7 -> 304
    //   314: astore_1
    //   315: aload_0
    //   316: astore_2
    //   317: aload_1
    //   318: astore_0
    //   319: goto -23 -> 296
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	322	0	paramString1	String
    //   0	322	1	paramString2	String
    //   16	301	2	localObject1	Object
    //   13	172	3	localObject2	Object
    //   10	218	4	localObject3	Object
    //   7	252	5	localStringBuilder	StringBuilder
    //   113	19	6	localIterator	java.util.Iterator
    //   141	24	7	str	String
    // Exception table:
    //   from	to	target	type
    //   17	51	183	java/lang/Exception
    //   54	62	183	java/lang/Exception
    //   65	73	183	java/lang/Exception
    //   76	84	183	java/lang/Exception
    //   87	91	183	java/lang/Exception
    //   94	99	183	java/lang/Exception
    //   102	115	183	java/lang/Exception
    //   118	128	183	java/lang/Exception
    //   131	143	183	java/lang/Exception
    //   146	180	183	java/lang/Exception
    //   230	249	183	java/lang/Exception
    //   249	254	268	java/lang/Exception
    //   258	265	268	java/lang/Exception
    //   272	276	279	java/io/IOException
    //   217	221	287	java/io/IOException
    //   17	51	295	finally
    //   54	62	295	finally
    //   65	73	295	finally
    //   76	84	295	finally
    //   87	91	295	finally
    //   94	99	295	finally
    //   102	115	295	finally
    //   118	128	295	finally
    //   131	143	295	finally
    //   146	180	295	finally
    //   188	207	295	finally
    //   209	213	295	finally
    //   230	249	295	finally
    //   300	304	306	java/io/IOException
    //   249	254	314	finally
    //   258	265	314	finally
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\utils\ConnectionUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */