package com.xiaomi.gamecenter.sdk.protocol;

import android.content.Context;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.c;

public class MessageRequest_MiFloatMenuConfig
{
  private MiAppEntry a;
  private Context b;
  private boolean c = false;
  
  public MessageRequest_MiFloatMenuConfig(Context paramContext, MiAppEntry paramMiAppEntry)
  {
    this.b = paramContext;
    this.a = paramMiAppEntry;
    this.c = c.a(paramContext, "MENU_TEST", "TRUE");
  }
  
  /* Error */
  public final com.xiaomi.gamecenter.sdk.ui.mifloat.menu.MiFloatMenuInfo a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 21	com/xiaomi/gamecenter/sdk/protocol/MessageRequest_MiFloatMenuConfig:a	Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: new 36	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   16: astore 4
    //   18: aload_0
    //   19: getfield 17	com/xiaomi/gamecenter/sdk/protocol/MessageRequest_MiFloatMenuConfig:c	Z
    //   22: ifeq +317 -> 339
    //   25: ldc 39
    //   27: astore_2
    //   28: aload 4
    //   30: aload_2
    //   31: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: pop
    //   35: aload 4
    //   37: new 36	java/lang/StringBuilder
    //   40: dup
    //   41: ldc 45
    //   43: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: getfield 21	com/xiaomi/gamecenter/sdk/protocol/MessageRequest_MiFloatMenuConfig:a	Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
    //   50: invokevirtual 54	com/xiaomi/gamecenter/sdk/entry/MiAppEntry:getAppId	()Ljava/lang/String;
    //   53: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: pop
    //   63: aload 4
    //   65: new 36	java/lang/StringBuilder
    //   68: dup
    //   69: ldc 59
    //   71: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   74: getstatic 65	com/xiaomi/gamecenter/sdk/utils/b:m	Ljava/lang/String;
    //   77: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   83: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: aload 4
    //   89: new 36	java/lang/StringBuilder
    //   92: dup
    //   93: ldc 67
    //   95: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   98: getstatic 70	com/xiaomi/gamecenter/sdk/utils/b:k	Ljava/lang/String;
    //   101: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: pop
    //   111: aload 4
    //   113: ldc 72
    //   115: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: pop
    //   119: aload 4
    //   121: new 36	java/lang/StringBuilder
    //   124: dup
    //   125: ldc 74
    //   127: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: getstatic 77	com/xiaomi/gamecenter/sdk/utils/b:n	Ljava/lang/String;
    //   133: ldc 79
    //   135: invokestatic 85	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   138: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: pop
    //   148: ldc 87
    //   150: new 36	java/lang/StringBuilder
    //   153: dup
    //   154: ldc 89
    //   156: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   159: aload 4
    //   161: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   170: invokestatic 94	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   173: ldc 96
    //   175: astore_2
    //   176: aload_2
    //   177: astore_3
    //   178: new 98	java/net/URL
    //   181: dup
    //   182: aload 4
    //   184: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: invokespecial 99	java/net/URL:<init>	(Ljava/lang/String;)V
    //   190: invokevirtual 103	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   193: checkcast 105	java/net/HttpURLConnection
    //   196: astore 5
    //   198: aload_2
    //   199: astore_3
    //   200: aload 5
    //   202: iconst_0
    //   203: invokevirtual 109	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   206: aload_2
    //   207: astore_3
    //   208: aload 5
    //   210: iconst_1
    //   211: invokevirtual 112	java/net/HttpURLConnection:setDoInput	(Z)V
    //   214: aload_2
    //   215: astore_3
    //   216: aload 5
    //   218: ldc 114
    //   220: invokevirtual 117	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   223: aload_2
    //   224: astore_3
    //   225: aload 5
    //   227: iconst_1
    //   228: invokevirtual 120	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   231: aload_2
    //   232: astore_3
    //   233: aload 5
    //   235: iconst_1
    //   236: invokevirtual 123	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   239: aload_2
    //   240: astore_3
    //   241: aload 5
    //   243: sipush 2000
    //   246: invokevirtual 127	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   249: aload_2
    //   250: astore_3
    //   251: aload 5
    //   253: invokevirtual 130	java/net/HttpURLConnection:connect	()V
    //   256: aload_2
    //   257: astore 4
    //   259: aload_2
    //   260: astore_3
    //   261: aload 5
    //   263: invokevirtual 134	java/net/HttpURLConnection:getResponseCode	()I
    //   266: sipush 200
    //   269: if_icmpne +89 -> 358
    //   272: aload_2
    //   273: astore_3
    //   274: new 136	java/io/BufferedReader
    //   277: dup
    //   278: new 138	java/io/InputStreamReader
    //   281: dup
    //   282: aload 5
    //   284: invokevirtual 142	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   287: invokespecial 145	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   290: invokespecial 148	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   293: astore 4
    //   295: aload_2
    //   296: astore_3
    //   297: aload 4
    //   299: invokevirtual 151	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   302: astore 6
    //   304: aload 6
    //   306: ifnull +42 -> 348
    //   309: aload_2
    //   310: astore_3
    //   311: new 36	java/lang/StringBuilder
    //   314: dup
    //   315: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   318: aload_2
    //   319: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload 6
    //   324: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   327: ldc -103
    //   329: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   335: astore_2
    //   336: goto -41 -> 295
    //   339: ldc -101
    //   341: astore_2
    //   342: goto -314 -> 28
    //   345: astore_2
    //   346: aconst_null
    //   347: areturn
    //   348: aload_2
    //   349: astore_3
    //   350: aload 5
    //   352: invokevirtual 158	java/net/HttpURLConnection:disconnect	()V
    //   355: aload_2
    //   356: astore 4
    //   358: aload 4
    //   360: astore_2
    //   361: ldc 87
    //   363: new 36	java/lang/StringBuilder
    //   366: dup
    //   367: ldc -96
    //   369: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   372: aload_2
    //   373: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   379: invokestatic 94	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   382: aload_2
    //   383: invokestatic 166	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   386: istore_1
    //   387: iload_1
    //   388: ifeq +17 -> 405
    //   391: aconst_null
    //   392: areturn
    //   393: astore 4
    //   395: aload_3
    //   396: astore_2
    //   397: aload 4
    //   399: invokevirtual 169	java/lang/Exception:printStackTrace	()V
    //   402: goto -41 -> 361
    //   405: new 171	org/json/JSONObject
    //   408: dup
    //   409: aload_2
    //   410: invokespecial 172	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   413: astore_3
    //   414: aload_3
    //   415: ldc -82
    //   417: invokevirtual 178	org/json/JSONObject:optInt	(Ljava/lang/String;)I
    //   420: sipush 200
    //   423: if_icmpne +83 -> 506
    //   426: aload_0
    //   427: getfield 21	com/xiaomi/gamecenter/sdk/protocol/MessageRequest_MiFloatMenuConfig:a	Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
    //   430: invokevirtual 54	com/xiaomi/gamecenter/sdk/entry/MiAppEntry:getAppId	()Ljava/lang/String;
    //   433: astore 4
    //   435: aload_2
    //   436: invokevirtual 184	java/lang/String:getBytes	()[B
    //   439: invokestatic 189	cn/com/wali/basetool/utils/a:a	([B)Ljava/lang/String;
    //   442: astore_2
    //   443: aload 4
    //   445: invokestatic 166	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   448: ifne +58 -> 506
    //   451: ldc -65
    //   453: new 36	java/lang/StringBuilder
    //   456: dup
    //   457: ldc -63
    //   459: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   462: aload_2
    //   463: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   469: invokestatic 94	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   472: new 36	java/lang/StringBuilder
    //   475: dup
    //   476: ldc -61
    //   478: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   481: aload 4
    //   483: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   486: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   489: astore 4
    //   491: invokestatic 200	com/xiaomi/gamecenter/sdk/a:a	()Lcom/xiaomi/gamecenter/sdk/a;
    //   494: aload 4
    //   496: aload_2
    //   497: invokevirtual 201	com/xiaomi/gamecenter/sdk/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   500: invokestatic 200	com/xiaomi/gamecenter/sdk/a:a	()Lcom/xiaomi/gamecenter/sdk/a;
    //   503: invokevirtual 203	com/xiaomi/gamecenter/sdk/a:b	()V
    //   506: ldc 87
    //   508: new 36	java/lang/StringBuilder
    //   511: dup
    //   512: ldc -51
    //   514: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   517: aload_3
    //   518: invokevirtual 206	org/json/JSONObject:toString	()Ljava/lang/String;
    //   521: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   524: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   527: invokestatic 94	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   530: aload_3
    //   531: invokestatic 211	com/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo:a	(Lorg/json/JSONObject;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;
    //   534: astore_2
    //   535: aload_2
    //   536: areturn
    //   537: astore_2
    //   538: aload_2
    //   539: invokevirtual 169	java/lang/Exception:printStackTrace	()V
    //   542: aconst_null
    //   543: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	544	0	this	MessageRequest_MiFloatMenuConfig
    //   386	2	1	bool	boolean
    //   27	315	2	str1	String
    //   345	11	2	localException1	Exception
    //   360	176	2	localObject1	Object
    //   537	2	2	localException2	Exception
    //   177	354	3	localObject2	Object
    //   16	343	4	localObject3	Object
    //   393	5	4	localException3	Exception
    //   433	62	4	str2	String
    //   196	155	5	localHttpURLConnection	java.net.HttpURLConnection
    //   302	21	6	str3	String
    // Exception table:
    //   from	to	target	type
    //   18	25	345	java/lang/Exception
    //   28	148	345	java/lang/Exception
    //   178	198	393	java/lang/Exception
    //   200	206	393	java/lang/Exception
    //   208	214	393	java/lang/Exception
    //   216	223	393	java/lang/Exception
    //   225	231	393	java/lang/Exception
    //   233	239	393	java/lang/Exception
    //   241	249	393	java/lang/Exception
    //   251	256	393	java/lang/Exception
    //   261	272	393	java/lang/Exception
    //   274	295	393	java/lang/Exception
    //   297	304	393	java/lang/Exception
    //   311	336	393	java/lang/Exception
    //   350	355	393	java/lang/Exception
    //   382	387	537	java/lang/Exception
    //   405	506	537	java/lang/Exception
    //   506	535	537	java/lang/Exception
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\MessageRequest_MiFloatMenuConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */