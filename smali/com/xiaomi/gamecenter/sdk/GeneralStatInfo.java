package com.xiaomi.gamecenter.sdk;

public class GeneralStatInfo
{
  private static long a;
  private static int b;
  private static String c;
  private static String d;
  private static String e;
  private static String f;
  private static String g;
  private static String h;
  private static String i;
  private static String j;
  private static String k;
  private static String l;
  private static String m;
  private static String n;
  private static String o;
  private static String p;
  private static String q;
  private static String r;
  private static String s;
  private static String t;
  private static long u = 0L;
  
  public static String a()
  {
    return s;
  }
  
  public static void a(long paramLong)
  {
    u = paramLong;
  }
  
  /* Error */
  public static void a(android.content.Context paramContext, String paramString1, int paramInt, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 52	com/xiaomi/gamecenter/sdk/utils/b:a	(Landroid/content/Context;)V
    //   4: iload_2
    //   5: putstatic 54	com/xiaomi/gamecenter/sdk/GeneralStatInfo:b	I
    //   8: aload_3
    //   9: putstatic 56	com/xiaomi/gamecenter/sdk/GeneralStatInfo:p	Ljava/lang/String;
    //   12: aload_1
    //   13: invokestatic 62	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   16: putstatic 64	com/xiaomi/gamecenter/sdk/GeneralStatInfo:a	J
    //   19: invokestatic 69	com/xiaomi/gamecenter/sdk/utils/n:a	()Lcom/xiaomi/gamecenter/sdk/utils/n;
    //   22: pop
    //   23: aload_0
    //   24: invokestatic 72	com/xiaomi/gamecenter/sdk/utils/n:c	(Landroid/content/Context;)Ljava/lang/String;
    //   27: astore_1
    //   28: aload_1
    //   29: putstatic 74	com/xiaomi/gamecenter/sdk/GeneralStatInfo:d	Ljava/lang/String;
    //   32: aload_1
    //   33: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   36: ifeq +9 -> 45
    //   39: getstatic 82	com/xiaomi/gamecenter/sdk/utils/b:m	Ljava/lang/String;
    //   42: putstatic 74	com/xiaomi/gamecenter/sdk/GeneralStatInfo:d	Ljava/lang/String;
    //   45: getstatic 87	android/os/Build:MODEL	Ljava/lang/String;
    //   48: putstatic 89	com/xiaomi/gamecenter/sdk/GeneralStatInfo:c	Ljava/lang/String;
    //   51: invokestatic 69	com/xiaomi/gamecenter/sdk/utils/n:a	()Lcom/xiaomi/gamecenter/sdk/utils/n;
    //   54: pop
    //   55: aload_0
    //   56: invokestatic 91	com/xiaomi/gamecenter/sdk/utils/n:d	(Landroid/content/Context;)Ljava/lang/String;
    //   59: astore_1
    //   60: aload_1
    //   61: putstatic 93	com/xiaomi/gamecenter/sdk/GeneralStatInfo:e	Ljava/lang/String;
    //   64: aload_1
    //   65: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   68: ifeq +9 -> 77
    //   71: getstatic 95	com/xiaomi/gamecenter/sdk/utils/b:k	Ljava/lang/String;
    //   74: putstatic 93	com/xiaomi/gamecenter/sdk/GeneralStatInfo:e	Ljava/lang/String;
    //   77: getstatic 97	com/xiaomi/gamecenter/sdk/utils/b:o	Ljava/lang/String;
    //   80: putstatic 99	com/xiaomi/gamecenter/sdk/GeneralStatInfo:g	Ljava/lang/String;
    //   83: invokestatic 69	com/xiaomi/gamecenter/sdk/utils/n:a	()Lcom/xiaomi/gamecenter/sdk/utils/n;
    //   86: pop
    //   87: aload_0
    //   88: invokestatic 101	com/xiaomi/gamecenter/sdk/utils/n:f	(Landroid/content/Context;)Ljava/lang/String;
    //   91: astore_1
    //   92: aload_1
    //   93: putstatic 103	com/xiaomi/gamecenter/sdk/GeneralStatInfo:i	Ljava/lang/String;
    //   96: aload_1
    //   97: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   100: ifeq +9 -> 109
    //   103: getstatic 105	com/xiaomi/gamecenter/sdk/utils/b:n	Ljava/lang/String;
    //   106: putstatic 103	com/xiaomi/gamecenter/sdk/GeneralStatInfo:i	Ljava/lang/String;
    //   109: getstatic 110	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   112: putstatic 112	com/xiaomi/gamecenter/sdk/GeneralStatInfo:j	Ljava/lang/String;
    //   115: invokestatic 117	com/xiaomi/gamecenter/sdk/utils/OSUtils:a	()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;
    //   118: astore_3
    //   119: new 119	java/lang/StringBuilder
    //   122: dup
    //   123: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   126: aload_3
    //   127: invokevirtual 125	com/xiaomi/gamecenter/sdk/utils/OSUtils$ROM:name	()Ljava/lang/String;
    //   130: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: astore 5
    //   135: aload_3
    //   136: invokevirtual 133	com/xiaomi/gamecenter/sdk/utils/OSUtils$ROM:getBaseVersion	()I
    //   139: ifge +392 -> 531
    //   142: ldc -121
    //   144: astore_1
    //   145: aload 5
    //   147: aload_1
    //   148: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: astore 5
    //   153: aload_3
    //   154: invokevirtual 138	com/xiaomi/gamecenter/sdk/utils/OSUtils$ROM:getVersion	()Ljava/lang/String;
    //   157: ifnonnull +398 -> 555
    //   160: ldc -121
    //   162: astore_1
    //   163: aload 5
    //   165: aload_1
    //   166: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: putstatic 142	com/xiaomi/gamecenter/sdk/GeneralStatInfo:k	Ljava/lang/String;
    //   175: aload_0
    //   176: invokevirtual 148	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   179: invokevirtual 154	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   182: getfield 160	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   185: astore_1
    //   186: aload_1
    //   187: invokevirtual 165	java/util/Locale:getCountry	()Ljava/lang/String;
    //   190: putstatic 167	com/xiaomi/gamecenter/sdk/GeneralStatInfo:l	Ljava/lang/String;
    //   193: aload_1
    //   194: invokevirtual 170	java/util/Locale:getLanguage	()Ljava/lang/String;
    //   197: putstatic 171	com/xiaomi/gamecenter/sdk/GeneralStatInfo:m	Ljava/lang/String;
    //   200: invokestatic 177	java/util/TimeZone:getDefault	()Ljava/util/TimeZone;
    //   203: iconst_0
    //   204: iconst_0
    //   205: invokevirtual 181	java/util/TimeZone:getDisplayName	(ZI)Ljava/lang/String;
    //   208: putstatic 182	com/xiaomi/gamecenter/sdk/GeneralStatInfo:n	Ljava/lang/String;
    //   211: aload_0
    //   212: invokestatic 183	com/xiaomi/gamecenter/sdk/utils/b:f	(Landroid/content/Context;)Ljava/lang/String;
    //   215: putstatic 184	com/xiaomi/gamecenter/sdk/GeneralStatInfo:o	Ljava/lang/String;
    //   218: invokestatic 69	com/xiaomi/gamecenter/sdk/utils/n:a	()Lcom/xiaomi/gamecenter/sdk/utils/n;
    //   221: pop
    //   222: aload_0
    //   223: invokestatic 186	com/xiaomi/gamecenter/sdk/utils/n:a	(Landroid/content/Context;)Ljava/lang/String;
    //   226: putstatic 188	com/xiaomi/gamecenter/sdk/GeneralStatInfo:q	Ljava/lang/String;
    //   229: ldc -121
    //   231: putstatic 190	com/xiaomi/gamecenter/sdk/GeneralStatInfo:h	Ljava/lang/String;
    //   234: invokestatic 69	com/xiaomi/gamecenter/sdk/utils/n:a	()Lcom/xiaomi/gamecenter/sdk/utils/n;
    //   237: pop
    //   238: aload_0
    //   239: invokestatic 192	com/xiaomi/gamecenter/sdk/utils/n:g	(Landroid/content/Context;)Ljava/lang/String;
    //   242: astore_3
    //   243: aload_3
    //   244: astore_1
    //   245: aload_3
    //   246: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   249: ifeq +8 -> 257
    //   252: aload_0
    //   253: invokestatic 194	com/xiaomi/gamecenter/sdk/utils/b:e	(Landroid/content/Context;)Ljava/lang/String;
    //   256: astore_1
    //   257: aload_1
    //   258: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   261: ifne +10 -> 271
    //   264: aload_1
    //   265: invokestatic 199	cn/com/wali/basetool/utils/MD5:a	(Ljava/lang/String;)Ljava/lang/String;
    //   268: putstatic 190	com/xiaomi/gamecenter/sdk/GeneralStatInfo:h	Ljava/lang/String;
    //   271: aload_0
    //   272: ldc -55
    //   274: invokevirtual 205	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   277: checkcast 207	android/view/WindowManager
    //   280: astore_1
    //   281: new 209	android/util/DisplayMetrics
    //   284: dup
    //   285: invokespecial 210	android/util/DisplayMetrics:<init>	()V
    //   288: astore_3
    //   289: aload_1
    //   290: invokeinterface 214 1 0
    //   295: aload_3
    //   296: invokevirtual 220	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   299: aload_3
    //   300: getfield 223	android/util/DisplayMetrics:widthPixels	I
    //   303: istore_2
    //   304: aload_3
    //   305: getfield 226	android/util/DisplayMetrics:heightPixels	I
    //   308: istore 4
    //   310: new 119	java/lang/StringBuilder
    //   313: dup
    //   314: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   317: iload 4
    //   319: invokevirtual 229	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   322: ldc -25
    //   324: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: iload_2
    //   328: invokevirtual 229	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   331: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: astore 5
    //   336: aload_0
    //   337: invokevirtual 235	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   340: ldc -19
    //   342: invokestatic 243	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   345: astore_1
    //   346: aload_1
    //   347: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   350: ifne +242 -> 592
    //   353: aload_1
    //   354: invokestatic 199	cn/com/wali/basetool/utils/MD5:a	(Ljava/lang/String;)Ljava/lang/String;
    //   357: astore_1
    //   358: getstatic 246	android/os/Build:SERIAL	Ljava/lang/String;
    //   361: astore_3
    //   362: aload_3
    //   363: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   366: ifne +221 -> 587
    //   369: aload_3
    //   370: invokestatic 199	cn/com/wali/basetool/utils/MD5:a	(Ljava/lang/String;)Ljava/lang/String;
    //   373: astore_3
    //   374: new 248	org/json/JSONObject
    //   377: dup
    //   378: invokespecial 249	org/json/JSONObject:<init>	()V
    //   381: astore 6
    //   383: aload 6
    //   385: ldc -5
    //   387: aload 5
    //   389: invokevirtual 255	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   392: pop
    //   393: aload 6
    //   395: ldc_w 257
    //   398: aload_1
    //   399: invokevirtual 255	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   402: pop
    //   403: aload 6
    //   405: ldc_w 259
    //   408: aload_0
    //   409: invokevirtual 262	android/content/Context:getPackageName	()Ljava/lang/String;
    //   412: invokevirtual 255	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   415: pop
    //   416: aload 6
    //   418: ldc_w 264
    //   421: aload_3
    //   422: invokevirtual 255	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   425: pop
    //   426: aload 6
    //   428: invokevirtual 265	org/json/JSONObject:toString	()Ljava/lang/String;
    //   431: putstatic 267	com/xiaomi/gamecenter/sdk/GeneralStatInfo:r	Ljava/lang/String;
    //   434: invokestatic 69	com/xiaomi/gamecenter/sdk/utils/n:a	()Lcom/xiaomi/gamecenter/sdk/utils/n;
    //   437: pop
    //   438: aload_0
    //   439: invokestatic 269	com/xiaomi/gamecenter/sdk/utils/n:h	(Landroid/content/Context;)Ljava/lang/String;
    //   442: astore_1
    //   443: aload_1
    //   444: putstatic 39	com/xiaomi/gamecenter/sdk/GeneralStatInfo:s	Ljava/lang/String;
    //   447: aload_1
    //   448: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   451: ifeq +13 -> 464
    //   454: invokestatic 274	com/xiaomi/gamecenter/sdk/utils/r:a	()Lcom/xiaomi/gamecenter/sdk/utils/r;
    //   457: pop
    //   458: invokestatic 276	com/xiaomi/gamecenter/sdk/utils/r:b	()Ljava/lang/String;
    //   461: putstatic 39	com/xiaomi/gamecenter/sdk/GeneralStatInfo:s	Ljava/lang/String;
    //   464: invokestatic 282	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   467: invokevirtual 283	java/util/UUID:toString	()Ljava/lang/String;
    //   470: putstatic 285	com/xiaomi/gamecenter/sdk/GeneralStatInfo:t	Ljava/lang/String;
    //   473: getstatic 286	com/xiaomi/gamecenter/sdk/utils/b:l	Ljava/lang/String;
    //   476: astore_1
    //   477: aload_1
    //   478: putstatic 288	com/xiaomi/gamecenter/sdk/GeneralStatInfo:f	Ljava/lang/String;
    //   481: aload_1
    //   482: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   485: ifeq +112 -> 597
    //   488: invokestatic 69	com/xiaomi/gamecenter/sdk/utils/n:a	()Lcom/xiaomi/gamecenter/sdk/utils/n;
    //   491: pop
    //   492: aload_0
    //   493: invokestatic 289	com/xiaomi/gamecenter/sdk/utils/n:e	(Landroid/content/Context;)Ljava/lang/String;
    //   496: invokestatic 80	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   499: ifne +98 -> 597
    //   502: invokestatic 69	com/xiaomi/gamecenter/sdk/utils/n:a	()Lcom/xiaomi/gamecenter/sdk/utils/n;
    //   505: pop
    //   506: aload_0
    //   507: invokestatic 289	com/xiaomi/gamecenter/sdk/utils/n:e	(Landroid/content/Context;)Ljava/lang/String;
    //   510: invokestatic 292	com/xiaomi/gamecenter/sdk/utils/e:a	(Ljava/lang/String;)Ljava/lang/String;
    //   513: putstatic 288	com/xiaomi/gamecenter/sdk/GeneralStatInfo:f	Ljava/lang/String;
    //   516: return
    //   517: astore_1
    //   518: aload_1
    //   519: invokevirtual 295	java/lang/Exception:printStackTrace	()V
    //   522: goto -503 -> 19
    //   525: astore_0
    //   526: aload_0
    //   527: invokevirtual 296	java/lang/Throwable:printStackTrace	()V
    //   530: return
    //   531: new 119	java/lang/StringBuilder
    //   534: dup
    //   535: ldc_w 298
    //   538: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   541: aload_3
    //   542: invokevirtual 133	com/xiaomi/gamecenter/sdk/utils/OSUtils$ROM:getBaseVersion	()I
    //   545: invokevirtual 229	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   548: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   551: astore_1
    //   552: goto -407 -> 145
    //   555: new 119	java/lang/StringBuilder
    //   558: dup
    //   559: ldc_w 298
    //   562: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   565: aload_3
    //   566: invokevirtual 138	com/xiaomi/gamecenter/sdk/utils/OSUtils$ROM:getVersion	()Ljava/lang/String;
    //   569: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   572: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   575: astore_1
    //   576: goto -413 -> 163
    //   579: astore_1
    //   580: aload_1
    //   581: invokevirtual 302	org/json/JSONException:printStackTrace	()V
    //   584: goto -158 -> 426
    //   587: aconst_null
    //   588: astore_3
    //   589: goto -215 -> 374
    //   592: aconst_null
    //   593: astore_1
    //   594: goto -236 -> 358
    //   597: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	598	0	paramContext	android.content.Context
    //   0	598	1	paramString1	String
    //   0	598	2	paramInt	int
    //   0	598	3	paramString2	String
    //   308	10	4	i1	int
    //   133	255	5	localObject	Object
    //   381	46	6	localJSONObject	org.json.JSONObject
    // Exception table:
    //   from	to	target	type
    //   12	19	517	java/lang/Exception
    //   0	12	525	java/lang/Throwable
    //   12	19	525	java/lang/Throwable
    //   19	45	525	java/lang/Throwable
    //   45	77	525	java/lang/Throwable
    //   77	109	525	java/lang/Throwable
    //   109	142	525	java/lang/Throwable
    //   145	160	525	java/lang/Throwable
    //   163	243	525	java/lang/Throwable
    //   245	257	525	java/lang/Throwable
    //   257	271	525	java/lang/Throwable
    //   271	358	525	java/lang/Throwable
    //   358	374	525	java/lang/Throwable
    //   374	383	525	java/lang/Throwable
    //   383	426	525	java/lang/Throwable
    //   426	464	525	java/lang/Throwable
    //   464	516	525	java/lang/Throwable
    //   518	522	525	java/lang/Throwable
    //   531	552	525	java/lang/Throwable
    //   555	576	525	java/lang/Throwable
    //   580	584	525	java/lang/Throwable
    //   383	426	579	org/json/JSONException
  }
  
  public static String b()
  {
    return t;
  }
  
  public static long c()
  {
    return u;
  }
  
  public static String d()
  {
    return r;
  }
  
  public static String e()
  {
    return q;
  }
  
  public static String f()
  {
    return p;
  }
  
  public static String g()
  {
    return o;
  }
  
  public static int h()
  {
    return b;
  }
  
  public static long i()
  {
    return a;
  }
  
  public static String j()
  {
    return c;
  }
  
  public static String k()
  {
    return d;
  }
  
  public static String l()
  {
    return e;
  }
  
  public static String m()
  {
    return f;
  }
  
  public static String n()
  {
    return h;
  }
  
  public static String o()
  {
    return i;
  }
  
  public static String p()
  {
    return j;
  }
  
  public static String q()
  {
    return k;
  }
  
  public static String r()
  {
    return l;
  }
  
  public static String s()
  {
    return m;
  }
  
  public static String t()
  {
    return n;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\GeneralStatInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */