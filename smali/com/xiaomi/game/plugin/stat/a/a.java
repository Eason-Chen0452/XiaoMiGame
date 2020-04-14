package com.xiaomi.game.plugin.stat.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.xiaomi.game.plugin.stat.MiGamePluginStatConfig;
import java.io.PrintStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

final class a
{
  protected Context a;
  private ExecutorService b;
  private String c = "";
  private String d = "";
  private String e = "";
  private String f = "";
  private String g = "";
  private String h = "";
  
  public a(MiGamePluginStatConfig paramMiGamePluginStatConfig)
  {
    this.a = paramMiGamePluginStatConfig.a();
    this.c = "720";
    this.d = this.a.getPackageName();
    this.e = paramMiGamePluginStatConfig.b();
    this.g = c.a();
    this.f = c.e(this.a);
    this.h = paramMiGamePluginStatConfig.e();
    this.b = Executors.newSingleThreadExecutor();
  }
  
  private void a(int paramInt)
  {
    String str = this.a.getPackageName();
    if ((TextUtils.isEmpty(str)) || (TextUtils.equals(str, "com.xiaomi.gamecenter")) || (TextUtils.equals(str, "com.xiaomi.gamecenter.sdk.service"))) {
      return;
    }
    this.b.execute(new a.1(this, paramInt, str));
  }
  
  public static byte[] a(String paramString1, String paramString2)
  {
    return b(paramString1.getBytes(), paramString2.getBytes());
  }
  
  public static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte2 == null) {
      try
      {
        System.out.print("Key为空null");
        throw new Exception("Key为空null");
      }
      catch (Exception paramArrayOfByte1)
      {
        throw new Exception("AES加密错误", paramArrayOfByte1);
      }
    }
    if (paramArrayOfByte2.length != 16) {
      throw new Exception("Key长度不是16位");
    }
    paramArrayOfByte2 = new SecretKeySpec(paramArrayOfByte2, "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    localCipher.init(2, paramArrayOfByte2);
    paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
    return paramArrayOfByte1;
  }
  
  public static byte[] b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte2 == null) {
      try
      {
        throw new Exception("Key为空null");
      }
      catch (Exception paramArrayOfByte1)
      {
        throw new Exception("AES加密错误", paramArrayOfByte1);
      }
    }
    if (paramArrayOfByte2.length != 16) {
      throw new Exception("Key长度不是16位");
    }
    paramArrayOfByte2 = new SecretKeySpec(paramArrayOfByte2, "AES");
    Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
    localCipher.init(1, paramArrayOfByte2);
    paramArrayOfByte1 = localCipher.doFinal(paramArrayOfByte1);
    return paramArrayOfByte1;
  }
  
  public final void a()
  {
    int i;
    if (e())
    {
      com.xiaomi.game.plugin.stat.c.a.b("应该要访问游戏中心");
      if (b())
      {
        com.xiaomi.game.plugin.stat.c.a.b("要访问游戏中心Success");
        i = 2;
      }
    }
    for (;;)
    {
      a(i);
      d();
      return;
      com.xiaomi.game.plugin.stat.c.a.b("要访问游戏中心failed");
      i = 3;
      continue;
      com.xiaomi.game.plugin.stat.c.a.b("不应该访问游戏中心");
      i = 1;
    }
  }
  
  public final boolean a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(this.a).edit();
    localEditor.putBoolean("migame_fetch_promotion", paramBoolean);
    return localEditor.commit();
  }
  
  public final boolean b()
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setPackage("com.xiaomi.gamecenter");
      localIntent.setData(Uri.parse("migamecenter://sdkad?channel=sdk&bid=" + this.c));
      localIntent.addFlags(268435456);
      this.a.startActivity(localIntent);
      return true;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return false;
  }
  
  /* Error */
  final byte[] c()
  {
    // Byte code:
    //   0: new 246	java/util/HashMap
    //   3: dup
    //   4: invokespecial 247	java/util/HashMap:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: ldc -7
    //   11: aload_0
    //   12: getfield 24	com/xiaomi/game/plugin/stat/a/a:c	Ljava/lang/String;
    //   15: invokevirtual 253	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   18: pop
    //   19: aload_3
    //   20: ldc -1
    //   22: aload_0
    //   23: getfield 32	com/xiaomi/game/plugin/stat/a/a:g	Ljava/lang/String;
    //   26: invokevirtual 253	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   29: pop
    //   30: aload_3
    //   31: ldc_w 257
    //   34: aload_0
    //   35: getfield 30	com/xiaomi/game/plugin/stat/a/a:f	Ljava/lang/String;
    //   38: invokevirtual 253	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   41: pop
    //   42: aload_3
    //   43: ldc_w 259
    //   46: aload_0
    //   47: getfield 28	com/xiaomi/game/plugin/stat/a/a:e	Ljava/lang/String;
    //   50: invokevirtual 253	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   53: pop
    //   54: aload_3
    //   55: ldc_w 261
    //   58: aload_0
    //   59: getfield 26	com/xiaomi/game/plugin/stat/a/a:d	Ljava/lang/String;
    //   62: invokevirtual 253	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   65: pop
    //   66: new 263	org/json/JSONObject
    //   69: dup
    //   70: invokespecial 264	org/json/JSONObject:<init>	()V
    //   73: astore_2
    //   74: aload_3
    //   75: invokevirtual 268	java/util/HashMap:entrySet	()Ljava/util/Set;
    //   78: invokeinterface 274 1 0
    //   83: astore_3
    //   84: aload_3
    //   85: invokeinterface 279 1 0
    //   90: ifeq +94 -> 184
    //   93: aload_3
    //   94: invokeinterface 283 1 0
    //   99: checkcast 285	java/util/Map$Entry
    //   102: astore 4
    //   104: aload 4
    //   106: invokeinterface 288 1 0
    //   111: checkcast 290	java/lang/CharSequence
    //   114: invokestatic 77	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   117: istore_1
    //   118: iload_1
    //   119: ifne -35 -> 84
    //   122: aload_2
    //   123: aload 4
    //   125: invokeinterface 293 1 0
    //   130: checkcast 99	java/lang/String
    //   133: aload 4
    //   135: invokeinterface 288 1 0
    //   140: checkcast 99	java/lang/String
    //   143: ldc_w 295
    //   146: invokestatic 301	java/net/URLEncoder:encode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   149: invokevirtual 304	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   152: pop
    //   153: goto -69 -> 84
    //   156: astore 4
    //   158: ldc 22
    //   160: aload 4
    //   162: invokestatic 310	android/util/Log:w	(Ljava/lang/String;Ljava/lang/Throwable;)I
    //   165: pop
    //   166: goto -82 -> 84
    //   169: astore_2
    //   170: aload_2
    //   171: invokevirtual 244	java/lang/Throwable:printStackTrace	()V
    //   174: aconst_null
    //   175: areturn
    //   176: astore_2
    //   177: aload_2
    //   178: invokevirtual 311	java/lang/Exception:printStackTrace	()V
    //   181: goto -115 -> 66
    //   184: aload_2
    //   185: invokevirtual 312	org/json/JSONObject:toString	()Ljava/lang/String;
    //   188: astore_2
    //   189: new 212	java/lang/StringBuilder
    //   192: dup
    //   193: ldc_w 314
    //   196: invokespecial 215	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   199: aload_2
    //   200: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: invokestatic 163	com/xiaomi/game/plugin/stat/c/a:b	(Ljava/lang/String;)V
    //   209: aload_2
    //   210: ldc_w 316
    //   213: invokestatic 318	com/xiaomi/game/plugin/stat/a/a:a	(Ljava/lang/String;Ljava/lang/String;)[B
    //   216: iconst_0
    //   217: invokestatic 324	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   220: ldc_w 295
    //   223: invokevirtual 327	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   226: astore_2
    //   227: aload_2
    //   228: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	0	this	a
    //   117	2	1	bool	boolean
    //   73	50	2	localJSONObject	org.json.JSONObject
    //   169	2	2	localThrowable	Throwable
    //   176	9	2	localException1	Exception
    //   188	40	2	localObject1	Object
    //   7	87	3	localObject2	Object
    //   102	32	4	localEntry	java.util.Map.Entry
    //   156	5	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   122	153	156	java/lang/Exception
    //   0	8	169	java/lang/Throwable
    //   8	66	169	java/lang/Throwable
    //   66	84	169	java/lang/Throwable
    //   84	118	169	java/lang/Throwable
    //   122	153	169	java/lang/Throwable
    //   158	166	169	java/lang/Throwable
    //   177	181	169	java/lang/Throwable
    //   184	227	169	java/lang/Throwable
    //   8	66	176	java/lang/Exception
  }
  
  /* Error */
  public final void d()
  {
    // Byte code:
    //   0: new 329	java/net/URL
    //   3: dup
    //   4: ldc_w 331
    //   7: invokespecial 332	java/net/URL:<init>	(Ljava/lang/String;)V
    //   10: invokevirtual 336	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   13: checkcast 338	java/net/HttpURLConnection
    //   16: astore_2
    //   17: aload_2
    //   18: sipush 5000
    //   21: invokevirtual 341	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   24: aload_2
    //   25: sipush 5000
    //   28: invokevirtual 344	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   31: aload_2
    //   32: ldc_w 346
    //   35: invokevirtual 349	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   38: aload_2
    //   39: ldc_w 351
    //   42: ldc_w 353
    //   45: invokevirtual 357	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   48: aload_2
    //   49: iconst_0
    //   50: invokevirtual 361	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   53: aload_2
    //   54: iconst_0
    //   55: invokevirtual 364	java/net/HttpURLConnection:setDefaultUseCaches	(Z)V
    //   58: aload_2
    //   59: iconst_1
    //   60: invokevirtual 367	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   63: aload_2
    //   64: iconst_1
    //   65: invokevirtual 370	java/net/HttpURLConnection:setDoInput	(Z)V
    //   68: aload_2
    //   69: invokevirtual 373	java/net/HttpURLConnection:connect	()V
    //   72: new 375	java/io/DataOutputStream
    //   75: dup
    //   76: aload_2
    //   77: invokevirtual 379	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   80: invokespecial 382	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   83: astore 5
    //   85: aload 5
    //   87: aload_0
    //   88: invokevirtual 384	com/xiaomi/game/plugin/stat/a/a:c	()[B
    //   91: invokevirtual 388	java/io/DataOutputStream:write	([B)V
    //   94: aload 5
    //   96: invokevirtual 391	java/io/DataOutputStream:flush	()V
    //   99: aload 5
    //   101: invokevirtual 394	java/io/DataOutputStream:close	()V
    //   104: aload_2
    //   105: invokevirtual 398	java/net/HttpURLConnection:getResponseCode	()I
    //   108: istore_1
    //   109: new 212	java/lang/StringBuilder
    //   112: dup
    //   113: ldc_w 400
    //   116: invokespecial 215	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   119: iload_1
    //   120: invokevirtual 403	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   123: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: invokestatic 163	com/xiaomi/game/plugin/stat/c/a:b	(Ljava/lang/String;)V
    //   129: new 405	java/io/BufferedReader
    //   132: dup
    //   133: new 407	java/io/InputStreamReader
    //   136: dup
    //   137: aload_2
    //   138: invokevirtual 411	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   141: ldc_w 295
    //   144: invokespecial 414	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   147: invokespecial 417	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   150: astore_3
    //   151: new 212	java/lang/StringBuilder
    //   154: dup
    //   155: invokespecial 418	java/lang/StringBuilder:<init>	()V
    //   158: astore 4
    //   160: aload_3
    //   161: invokevirtual 421	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   164: astore 6
    //   166: aload 6
    //   168: ifnull +55 -> 223
    //   171: aload 4
    //   173: aload 6
    //   175: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: pop
    //   179: goto -19 -> 160
    //   182: astore 6
    //   184: aload_2
    //   185: astore 4
    //   187: aload 6
    //   189: astore_2
    //   190: aload_2
    //   191: invokevirtual 244	java/lang/Throwable:printStackTrace	()V
    //   194: aload 5
    //   196: ifnull +8 -> 204
    //   199: aload 5
    //   201: invokevirtual 394	java/io/DataOutputStream:close	()V
    //   204: aload 4
    //   206: ifnull +8 -> 214
    //   209: aload 4
    //   211: invokevirtual 424	java/net/HttpURLConnection:disconnect	()V
    //   214: aload_3
    //   215: ifnull +7 -> 222
    //   218: aload_3
    //   219: invokevirtual 425	java/io/BufferedReader:close	()V
    //   222: return
    //   223: new 99	java/lang/String
    //   226: dup
    //   227: aload 4
    //   229: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: iconst_0
    //   233: invokestatic 429	android/util/Base64:decode	(Ljava/lang/String;I)[B
    //   236: ldc_w 316
    //   239: ldc_w 295
    //   242: invokevirtual 327	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   245: invokestatic 431	com/xiaomi/game/plugin/stat/a/a:a	([B[B)[B
    //   248: ldc_w 295
    //   251: invokespecial 432	java/lang/String:<init>	([BLjava/lang/String;)V
    //   254: astore 4
    //   256: new 212	java/lang/StringBuilder
    //   259: dup
    //   260: ldc_w 434
    //   263: invokespecial 215	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: aload 4
    //   268: invokevirtual 219	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   274: invokestatic 163	com/xiaomi/game/plugin/stat/c/a:b	(Ljava/lang/String;)V
    //   277: new 263	org/json/JSONObject
    //   280: dup
    //   281: aload 4
    //   283: invokespecial 435	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   286: ldc_w 437
    //   289: invokevirtual 441	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   292: istore_1
    //   293: iload_1
    //   294: iconst_1
    //   295: if_icmpne +9 -> 304
    //   298: aload_0
    //   299: iconst_1
    //   300: invokevirtual 443	com/xiaomi/game/plugin/stat/a/a:a	(Z)Z
    //   303: pop
    //   304: iload_1
    //   305: ifne +9 -> 314
    //   308: aload_0
    //   309: iconst_0
    //   310: invokevirtual 443	com/xiaomi/game/plugin/stat/a/a:a	(Z)Z
    //   313: pop
    //   314: aload 5
    //   316: invokevirtual 394	java/io/DataOutputStream:close	()V
    //   319: aload_2
    //   320: ifnull +7 -> 327
    //   323: aload_2
    //   324: invokevirtual 424	java/net/HttpURLConnection:disconnect	()V
    //   327: aload_3
    //   328: invokevirtual 425	java/io/BufferedReader:close	()V
    //   331: return
    //   332: astore_2
    //   333: aload_2
    //   334: invokevirtual 244	java/lang/Throwable:printStackTrace	()V
    //   337: return
    //   338: astore_2
    //   339: aload_2
    //   340: invokevirtual 244	java/lang/Throwable:printStackTrace	()V
    //   343: return
    //   344: astore_2
    //   345: aconst_null
    //   346: astore 5
    //   348: aconst_null
    //   349: astore_3
    //   350: aconst_null
    //   351: astore 4
    //   353: aload 5
    //   355: ifnull +8 -> 363
    //   358: aload 5
    //   360: invokevirtual 394	java/io/DataOutputStream:close	()V
    //   363: aload 4
    //   365: ifnull +8 -> 373
    //   368: aload 4
    //   370: invokevirtual 424	java/net/HttpURLConnection:disconnect	()V
    //   373: aload_3
    //   374: ifnull +7 -> 381
    //   377: aload_3
    //   378: invokevirtual 425	java/io/BufferedReader:close	()V
    //   381: aload_2
    //   382: athrow
    //   383: astore_3
    //   384: aload_3
    //   385: invokevirtual 244	java/lang/Throwable:printStackTrace	()V
    //   388: goto -7 -> 381
    //   391: astore 6
    //   393: aconst_null
    //   394: astore 5
    //   396: aconst_null
    //   397: astore_3
    //   398: aload_2
    //   399: astore 4
    //   401: aload 6
    //   403: astore_2
    //   404: goto -51 -> 353
    //   407: astore 6
    //   409: aconst_null
    //   410: astore_3
    //   411: aload_2
    //   412: astore 4
    //   414: aload 6
    //   416: astore_2
    //   417: goto -64 -> 353
    //   420: astore 6
    //   422: aload_2
    //   423: astore 4
    //   425: aload 6
    //   427: astore_2
    //   428: goto -75 -> 353
    //   431: astore_2
    //   432: goto -79 -> 353
    //   435: astore_2
    //   436: aconst_null
    //   437: astore 5
    //   439: aconst_null
    //   440: astore_3
    //   441: aconst_null
    //   442: astore 4
    //   444: goto -254 -> 190
    //   447: astore 6
    //   449: aconst_null
    //   450: astore 5
    //   452: aconst_null
    //   453: astore_3
    //   454: aload_2
    //   455: astore 4
    //   457: aload 6
    //   459: astore_2
    //   460: goto -270 -> 190
    //   463: astore 6
    //   465: aconst_null
    //   466: astore_3
    //   467: aload_2
    //   468: astore 4
    //   470: aload 6
    //   472: astore_2
    //   473: goto -283 -> 190
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	476	0	this	a
    //   108	197	1	i	int
    //   16	308	2	localObject1	Object
    //   332	2	2	localThrowable1	Throwable
    //   338	2	2	localThrowable2	Throwable
    //   344	55	2	localObject2	Object
    //   403	25	2	localObject3	Object
    //   431	1	2	localObject4	Object
    //   435	20	2	localThrowable3	Throwable
    //   459	14	2	localObject5	Object
    //   150	228	3	localBufferedReader	java.io.BufferedReader
    //   383	2	3	localThrowable4	Throwable
    //   397	70	3	localObject6	Object
    //   158	311	4	localObject7	Object
    //   83	368	5	localDataOutputStream	java.io.DataOutputStream
    //   164	10	6	str	String
    //   182	6	6	localThrowable5	Throwable
    //   391	11	6	localObject8	Object
    //   407	8	6	localObject9	Object
    //   420	6	6	localObject10	Object
    //   447	11	6	localThrowable6	Throwable
    //   463	8	6	localThrowable7	Throwable
    // Exception table:
    //   from	to	target	type
    //   151	160	182	java/lang/Throwable
    //   160	166	182	java/lang/Throwable
    //   171	179	182	java/lang/Throwable
    //   223	293	182	java/lang/Throwable
    //   298	304	182	java/lang/Throwable
    //   308	314	182	java/lang/Throwable
    //   314	319	332	java/lang/Throwable
    //   323	327	332	java/lang/Throwable
    //   327	331	332	java/lang/Throwable
    //   199	204	338	java/lang/Throwable
    //   209	214	338	java/lang/Throwable
    //   218	222	338	java/lang/Throwable
    //   0	17	344	finally
    //   358	363	383	java/lang/Throwable
    //   368	373	383	java/lang/Throwable
    //   377	381	383	java/lang/Throwable
    //   17	85	391	finally
    //   85	151	407	finally
    //   151	160	420	finally
    //   160	166	420	finally
    //   171	179	420	finally
    //   223	293	420	finally
    //   298	304	420	finally
    //   308	314	420	finally
    //   190	194	431	finally
    //   0	17	435	java/lang/Throwable
    //   17	85	447	java/lang/Throwable
    //   85	151	463	java/lang/Throwable
  }
  
  public final boolean e()
  {
    return PreferenceManager.getDefaultSharedPreferences(this.a).getBoolean("migame_fetch_promotion", false);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\game\plugin\stat\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */