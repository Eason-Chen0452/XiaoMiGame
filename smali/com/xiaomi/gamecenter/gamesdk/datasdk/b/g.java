package com.xiaomi.gamecenter.gamesdk.datasdk.b;

public final class g
{
  /* Error */
  public static int a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: new 10	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 14	java/lang/StringBuilder:<init>	()V
    //   7: astore_1
    //   8: new 16	java/io/BufferedReader
    //   11: dup
    //   12: new 18	java/io/InputStreamReader
    //   15: dup
    //   16: aload_0
    //   17: ldc 20
    //   19: invokevirtual 26	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   22: invokespecial 29	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   25: invokespecial 32	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   28: astore_0
    //   29: aload_0
    //   30: invokevirtual 36	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   33: astore_2
    //   34: aload_2
    //   35: ifnull +70 -> 105
    //   38: aload_1
    //   39: aload_2
    //   40: invokevirtual 40	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: pop
    //   44: goto -15 -> 29
    //   47: astore_2
    //   48: aload_0
    //   49: ifnull +7 -> 56
    //   52: aload_0
    //   53: invokevirtual 43	java/io/BufferedReader:close	()V
    //   56: new 45	com/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson
    //   59: dup
    //   60: invokespecial 46	com/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson:<init>	()V
    //   63: aload_1
    //   64: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: ldc 51
    //   69: invokevirtual 55	com/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson:fromJson	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   72: checkcast 51	com/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean
    //   75: astore_0
    //   76: aload_0
    //   77: ifnull +26 -> 103
    //   80: aload_0
    //   81: invokevirtual 58	com/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean:getDate	()Ljava/lang/String;
    //   84: invokestatic 64	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   87: ifne +16 -> 103
    //   90: invokestatic 68	com/xiaomi/gamecenter/gamesdk/datasdk/b/d:a	()Ljava/lang/String;
    //   93: aload_0
    //   94: invokevirtual 58	com/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean:getDate	()Ljava/lang/String;
    //   97: invokevirtual 74	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   100: ifne +29 -> 129
    //   103: iconst_1
    //   104: ireturn
    //   105: aload_0
    //   106: invokevirtual 43	java/io/BufferedReader:close	()V
    //   109: goto -53 -> 56
    //   112: astore_0
    //   113: goto -57 -> 56
    //   116: astore_0
    //   117: aconst_null
    //   118: astore_1
    //   119: aload_1
    //   120: ifnull +7 -> 127
    //   123: aload_1
    //   124: invokevirtual 43	java/io/BufferedReader:close	()V
    //   127: aload_0
    //   128: athrow
    //   129: aload_0
    //   130: invokevirtual 78	com/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean:getdIndex	()I
    //   133: ireturn
    //   134: astore_0
    //   135: goto -79 -> 56
    //   138: astore_1
    //   139: goto -12 -> 127
    //   142: astore_1
    //   143: aload_0
    //   144: astore_2
    //   145: aload_1
    //   146: astore_0
    //   147: aload_2
    //   148: astore_1
    //   149: goto -30 -> 119
    //   152: astore_0
    //   153: aconst_null
    //   154: astore_0
    //   155: goto -107 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	158	0	paramContext	android.content.Context
    //   7	117	1	localStringBuilder	StringBuilder
    //   138	1	1	localIOException1	java.io.IOException
    //   142	4	1	localObject1	Object
    //   148	1	1	localObject2	Object
    //   33	7	2	str	String
    //   47	1	2	localIOException2	java.io.IOException
    //   144	4	2	localContext	android.content.Context
    // Exception table:
    //   from	to	target	type
    //   29	34	47	java/io/IOException
    //   38	44	47	java/io/IOException
    //   105	109	112	java/io/IOException
    //   8	29	116	finally
    //   52	56	134	java/io/IOException
    //   123	127	138	java/io/IOException
    //   29	34	142	finally
    //   38	44	142	finally
    //   8	29	152	java/io/IOException
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\b\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */