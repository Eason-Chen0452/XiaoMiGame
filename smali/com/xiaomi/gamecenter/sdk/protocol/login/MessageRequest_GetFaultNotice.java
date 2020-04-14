package com.xiaomi.gamecenter.sdk.protocol.login;

import android.content.Context;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.c;

public class MessageRequest_GetFaultNotice
{
  public MiAppEntry a;
  private Context b;
  private boolean c = false;
  
  public MessageRequest_GetFaultNotice(Context paramContext, MiAppEntry paramMiAppEntry)
  {
    this.a = paramMiAppEntry;
    this.b = paramContext;
    this.c = c.a(this.b, "FAULT_TEST", "TRUE");
  }
  
  /* Error */
  public final FaultInfo a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 19	com/xiaomi/gamecenter/sdk/protocol/login/MessageRequest_GetFaultNotice:a	Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: new 36	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   16: astore_3
    //   17: aload_0
    //   18: getfield 17	com/xiaomi/gamecenter/sdk/protocol/login/MessageRequest_GetFaultNotice:c	Z
    //   21: ifeq +311 -> 332
    //   24: ldc 39
    //   26: astore_1
    //   27: aload_3
    //   28: aload_1
    //   29: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: pop
    //   33: aload_3
    //   34: new 36	java/lang/StringBuilder
    //   37: dup
    //   38: ldc 45
    //   40: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: getfield 19	com/xiaomi/gamecenter/sdk/protocol/login/MessageRequest_GetFaultNotice:a	Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
    //   47: invokevirtual 54	com/xiaomi/gamecenter/sdk/entry/MiAppEntry:getAppId	()Ljava/lang/String;
    //   50: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: pop
    //   60: aload_3
    //   61: new 36	java/lang/StringBuilder
    //   64: dup
    //   65: ldc 59
    //   67: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   70: getstatic 65	com/xiaomi/gamecenter/sdk/utils/b:m	Ljava/lang/String;
    //   73: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: pop
    //   83: aload_3
    //   84: new 36	java/lang/StringBuilder
    //   87: dup
    //   88: ldc 67
    //   90: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   93: getstatic 70	com/xiaomi/gamecenter/sdk/utils/b:j	Ljava/lang/String;
    //   96: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: pop
    //   106: aload_3
    //   107: ldc 72
    //   109: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: pop
    //   113: aload_3
    //   114: ldc 74
    //   116: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: pop
    //   120: aload_3
    //   121: new 36	java/lang/StringBuilder
    //   124: dup
    //   125: ldc 76
    //   127: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: getstatic 79	com/xiaomi/gamecenter/sdk/utils/b:n	Ljava/lang/String;
    //   133: ldc 81
    //   135: invokestatic 87	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   138: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: pop
    //   148: new 36	java/lang/StringBuilder
    //   151: dup
    //   152: ldc 89
    //   154: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   157: aload_3
    //   158: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: invokestatic 93	cn/com/wali/basetool/log/Logger:a	(Ljava/lang/String;)V
    //   170: ldc 95
    //   172: astore_1
    //   173: aload_1
    //   174: astore_2
    //   175: new 97	java/net/URL
    //   178: dup
    //   179: aload_3
    //   180: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokespecial 98	java/net/URL:<init>	(Ljava/lang/String;)V
    //   186: invokevirtual 102	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   189: checkcast 104	java/net/HttpURLConnection
    //   192: astore 4
    //   194: aload_1
    //   195: astore_2
    //   196: aload 4
    //   198: iconst_0
    //   199: invokevirtual 108	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   202: aload_1
    //   203: astore_2
    //   204: aload 4
    //   206: iconst_1
    //   207: invokevirtual 111	java/net/HttpURLConnection:setDoInput	(Z)V
    //   210: aload_1
    //   211: astore_2
    //   212: aload 4
    //   214: ldc 113
    //   216: invokevirtual 116	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   219: aload_1
    //   220: astore_2
    //   221: aload 4
    //   223: iconst_1
    //   224: invokevirtual 119	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   227: aload_1
    //   228: astore_2
    //   229: aload 4
    //   231: iconst_1
    //   232: invokevirtual 122	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   235: aload_1
    //   236: astore_2
    //   237: aload 4
    //   239: sipush 2000
    //   242: invokevirtual 126	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   245: aload_1
    //   246: astore_2
    //   247: aload 4
    //   249: invokevirtual 129	java/net/HttpURLConnection:connect	()V
    //   252: aload_1
    //   253: astore_3
    //   254: aload_1
    //   255: astore_2
    //   256: aload 4
    //   258: invokevirtual 133	java/net/HttpURLConnection:getResponseCode	()I
    //   261: sipush 200
    //   264: if_icmpne +86 -> 350
    //   267: aload_1
    //   268: astore_2
    //   269: new 135	java/io/BufferedReader
    //   272: dup
    //   273: new 137	java/io/InputStreamReader
    //   276: dup
    //   277: aload 4
    //   279: invokevirtual 141	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   282: invokespecial 144	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   285: invokespecial 147	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   288: astore_3
    //   289: aload_1
    //   290: astore_2
    //   291: aload_3
    //   292: invokevirtual 150	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   295: astore 5
    //   297: aload 5
    //   299: ifnull +42 -> 341
    //   302: aload_1
    //   303: astore_2
    //   304: new 36	java/lang/StringBuilder
    //   307: dup
    //   308: invokespecial 37	java/lang/StringBuilder:<init>	()V
    //   311: aload_1
    //   312: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: aload 5
    //   317: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: ldc -104
    //   322: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   328: astore_1
    //   329: goto -40 -> 289
    //   332: ldc -102
    //   334: astore_1
    //   335: goto -308 -> 27
    //   338: astore_1
    //   339: aconst_null
    //   340: areturn
    //   341: aload_1
    //   342: astore_2
    //   343: aload 4
    //   345: invokevirtual 157	java/net/HttpURLConnection:disconnect	()V
    //   348: aload_1
    //   349: astore_3
    //   350: new 159	org/json/JSONObject
    //   353: dup
    //   354: aload_3
    //   355: invokespecial 160	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   358: invokestatic 165	com/xiaomi/gamecenter/sdk/protocol/login/FaultInfo:a	(Lorg/json/JSONObject;)Lcom/xiaomi/gamecenter/sdk/protocol/login/FaultInfo;
    //   361: astore_1
    //   362: aload_1
    //   363: areturn
    //   364: astore_1
    //   365: aload_1
    //   366: invokevirtual 168	java/lang/Exception:printStackTrace	()V
    //   369: aload_2
    //   370: astore_3
    //   371: goto -21 -> 350
    //   374: astore_1
    //   375: aload_1
    //   376: invokevirtual 168	java/lang/Exception:printStackTrace	()V
    //   379: aconst_null
    //   380: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	381	0	this	MessageRequest_GetFaultNotice
    //   26	309	1	str1	String
    //   338	11	1	localException1	Exception
    //   361	2	1	localFaultInfo	FaultInfo
    //   364	2	1	localException2	Exception
    //   374	2	1	localException3	Exception
    //   174	196	2	localObject1	Object
    //   16	355	3	localObject2	Object
    //   192	152	4	localHttpURLConnection	java.net.HttpURLConnection
    //   295	21	5	str2	String
    // Exception table:
    //   from	to	target	type
    //   17	24	338	java/lang/Exception
    //   27	148	338	java/lang/Exception
    //   175	194	364	java/lang/Exception
    //   196	202	364	java/lang/Exception
    //   204	210	364	java/lang/Exception
    //   212	219	364	java/lang/Exception
    //   221	227	364	java/lang/Exception
    //   229	235	364	java/lang/Exception
    //   237	245	364	java/lang/Exception
    //   247	252	364	java/lang/Exception
    //   256	267	364	java/lang/Exception
    //   269	289	364	java/lang/Exception
    //   291	297	364	java/lang/Exception
    //   304	329	364	java/lang/Exception
    //   343	348	364	java/lang/Exception
    //   350	362	374	java/lang/Exception
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\login\MessageRequest_GetFaultNotice.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */