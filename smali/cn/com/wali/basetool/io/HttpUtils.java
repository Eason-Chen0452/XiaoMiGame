package cn.com.wali.basetool.io;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.util.Log;
import cn.com.wali.basetool.log.Logger;
import cn.com.wali.basetool.utils.Pair;
import cn.com.wali.basetool.utils.SystemConfig;
import java.io.BufferedOutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;

public final class HttpUtils
{
  public static int a = -1;
  
  public static QHttpResponse a(Context paramContext, QHttpRequest paramQHttpRequest)
  {
    a = -1;
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager.getActiveNetworkInfo() == null) {
      a = 59;
    }
    do
    {
      for (;;)
      {
        return null;
        if (localConnectivityManager.getActiveNetworkInfo().isConnected()) {
          break;
        }
        a = 60;
      }
      paramQHttpRequest = b(paramContext, paramQHttpRequest);
      if (paramQHttpRequest == null) {
        SystemConfig.e(paramContext);
      }
    } while ((paramQHttpRequest == null) || (paramQHttpRequest.c != 200));
    return paramQHttpRequest;
  }
  
  private static HttpURLConnection a(Context paramContext, QHttpRequest paramQHttpRequest, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2) {}
    try
    {
      if ((!paramQHttpRequest.a.startsWith("https")) && ((SystemConfig.c(paramContext)) || (SystemConfig.d(paramContext))) && (paramBoolean1))
      {
        localObject1 = paramQHttpRequest.a;
        if (((String)localObject1).indexOf("http://10.0.0.172") < 0) {
          break label245;
        }
        paramQHttpRequest.a = ((String)localObject1);
      }
      if ((!paramBoolean2) || (!SystemConfig.b(paramContext))) {
        break label464;
      }
      paramContext = new InetSocketAddress("10.0.0.200", 80);
      paramContext = new Proxy(Proxy.Type.HTTP, paramContext);
    }
    catch (Exception paramQHttpRequest)
    {
      for (;;)
      {
        Object localObject1;
        label245:
        label435:
        paramContext = null;
        continue;
        paramContext = null;
      }
    }
    if ((paramQHttpRequest.b != null) && (paramQHttpRequest.b.length > 0))
    {
      if (paramContext == null) {}
      for (localObject1 = (HttpURLConnection)new URL(paramQHttpRequest.a).openConnection();; localObject1 = (HttpURLConnection)new URL(paramQHttpRequest.a).openConnection(paramContext))
      {
        paramContext = (Context)localObject1;
        try
        {
          ((HttpURLConnection)localObject1).setRequestMethod("POST");
          paramContext = (Context)localObject1;
          ((HttpURLConnection)localObject1).setRequestProperty("Content-Type", paramQHttpRequest.e);
          paramContext = (Context)localObject1;
          ((HttpURLConnection)localObject1).setRequestProperty("Content-Encoding", "");
          paramContext = (Context)localObject1;
          ((HttpURLConnection)localObject1).setFixedLengthStreamingMode(paramQHttpRequest.b.length);
          paramContext = (Context)localObject1;
          ((HttpURLConnection)localObject1).setDoOutput(true);
          paramContext = (Context)localObject1;
          a(paramBoolean1, paramQHttpRequest, (HttpURLConnection)localObject1);
          paramContext = (Context)localObject1;
          localObject2 = new BufferedOutputStream(((HttpURLConnection)localObject1).getOutputStream());
          paramContext = (Context)localObject1;
          ((BufferedOutputStream)localObject2).write(paramQHttpRequest.b);
          paramContext = (Context)localObject1;
          ((BufferedOutputStream)localObject2).flush();
          paramContext = (Context)localObject1;
          ((BufferedOutputStream)localObject2).close();
          return (HttpURLConnection)localObject1;
        }
        catch (Exception paramQHttpRequest) {}
        Object localObject2 = new StringBuffer();
        ((StringBuffer)localObject2).append("http://10.0.0.172");
        localObject1 = URI.create((String)localObject1);
        if (((URI)localObject1).getPort() != -1) {
          ((StringBuffer)localObject2).append(":" + ((URI)localObject1).getPort());
        }
        ((StringBuffer)localObject2).append(((URI)localObject1).getPath());
        if (((URI)localObject1).getQuery() != null)
        {
          ((StringBuffer)localObject2).append('?');
          ((StringBuffer)localObject2).append(((URI)localObject1).getQuery());
        }
        localObject1 = ((StringBuffer)localObject2).toString();
        break;
      }
    }
    else
    {
      if (paramContext != null) {
        break label435;
      }
    }
    for (localObject1 = (HttpURLConnection)new URL(paramQHttpRequest.a).openConnection();; localObject1 = (HttpURLConnection)new URL(paramQHttpRequest.a).openConnection(paramContext))
    {
      paramContext = (Context)localObject1;
      ((HttpURLConnection)localObject1).setRequestMethod("GET");
      paramContext = (Context)localObject1;
      a(paramBoolean1, paramQHttpRequest, (HttpURLConnection)localObject1);
      return (HttpURLConnection)localObject1;
      paramQHttpRequest.printStackTrace();
      Logger.e(Log.getStackTraceString(paramQHttpRequest));
      return paramContext;
    }
  }
  
  private static void a(boolean paramBoolean, QHttpRequest paramQHttpRequest, HttpURLConnection paramHttpURLConnection)
  {
    paramHttpURLConnection.setConnectTimeout(15000);
    paramHttpURLConnection.setReadTimeout(paramQHttpRequest.d());
    if (paramBoolean) {
      paramHttpURLConnection.setRequestProperty("X-Online-Host", URI.create(paramQHttpRequest.a).getHost());
    }
    if (paramQHttpRequest.c != null)
    {
      paramQHttpRequest = paramQHttpRequest.c.iterator();
      while (paramQHttpRequest.hasNext())
      {
        Pair localPair = (Pair)paramQHttpRequest.next();
        paramHttpURLConnection.setRequestProperty((String)localPair.getKey(), (String)localPair.getValue());
      }
    }
    paramHttpURLConnection.setRequestProperty("Connection", "close");
  }
  
  /* Error */
  private static QHttpResponse b(Context paramContext, QHttpRequest paramQHttpRequest)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 353	cn/com/wali/basetool/utils/SystemConfig:a	(Landroid/content/Context;)Z
    //   4: istore 8
    //   6: aload_0
    //   7: ldc 17
    //   9: invokevirtual 23	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   12: checkcast 25	android/net/ConnectivityManager
    //   15: invokevirtual 29	android/net/ConnectivityManager:getActiveNetworkInfo	()Landroid/net/NetworkInfo;
    //   18: astore 14
    //   20: aload 14
    //   22: ifnonnull +5 -> 27
    //   25: aconst_null
    //   26: areturn
    //   27: iconst_0
    //   28: istore_3
    //   29: new 46	cn/com/wali/basetool/io/QHttpResponse
    //   32: dup
    //   33: invokespecial 354	cn/com/wali/basetool/io/QHttpResponse:<init>	()V
    //   36: astore 15
    //   38: aload_1
    //   39: getfield 57	cn/com/wali/basetool/io/QHttpRequest:a	Ljava/lang/String;
    //   42: astore 16
    //   44: getstatic 357	cn/com/wali/basetool/log/Logger:a	Z
    //   47: ifeq +25 -> 72
    //   50: new 176	java/lang/StringBuilder
    //   53: dup
    //   54: ldc_w 359
    //   57: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: getstatic 364	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:needOnlyUseHttp	Z
    //   63: invokevirtual 367	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   66: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: invokestatic 369	cn/com/wali/basetool/log/Logger:d	(Ljava/lang/String;)V
    //   72: aload 16
    //   74: invokestatic 374	com/xiaomi/gamecenter/sdk/milink/MiLinkCommand:a	(Ljava/lang/String;)Ljava/lang/String;
    //   77: invokestatic 379	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   80: ifne +15 -> 95
    //   83: invokestatic 299	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   86: lconst_0
    //   87: sipush 7541
    //   90: aload 16
    //   92: invokevirtual 303	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:reportMilink	(JILjava/lang/String;)V
    //   95: getstatic 364	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:needOnlyUseHttp	Z
    //   98: ifeq +10 -> 108
    //   101: aload_1
    //   102: getfield 382	cn/com/wali/basetool/io/QHttpRequest:h	Z
    //   105: ifne +953 -> 1058
    //   108: aload 16
    //   110: invokestatic 374	com/xiaomi/gamecenter/sdk/milink/MiLinkCommand:a	(Ljava/lang/String;)Ljava/lang/String;
    //   113: invokestatic 379	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   116: ifne +831 -> 947
    //   119: invokestatic 299	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   122: lconst_0
    //   123: sipush 7538
    //   126: aload 16
    //   128: invokevirtual 303	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:reportMilink	(JILjava/lang/String;)V
    //   131: iconst_1
    //   132: istore_3
    //   133: iload_3
    //   134: istore_2
    //   135: new 176	java/lang/StringBuilder
    //   138: dup
    //   139: ldc_w 384
    //   142: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: aload 16
    //   147: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   156: iload_3
    //   157: istore_2
    //   158: invokestatic 387	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:getInstance	()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;
    //   161: invokevirtual 390	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:isMilinkLogined	()Z
    //   164: ifeq +767 -> 931
    //   167: iload_3
    //   168: istore_2
    //   169: invokestatic 229	java/lang/System:currentTimeMillis	()J
    //   172: lstore 9
    //   174: iload_3
    //   175: istore_2
    //   176: invokestatic 387	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:getInstance	()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;
    //   179: aload 16
    //   181: aload_1
    //   182: iconst_0
    //   183: invokevirtual 394	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:sendSyncHttpTransfer	(Ljava/lang/String;Lcn/com/wali/basetool/io/QHttpRequest;Z)Lcom/mi/milink/sdk/aidl/PacketData;
    //   186: astore 13
    //   188: iload_3
    //   189: istore_2
    //   190: invokestatic 229	java/lang/System:currentTimeMillis	()J
    //   193: lstore 11
    //   195: iload_3
    //   196: istore_2
    //   197: aload_0
    //   198: invokestatic 44	cn/com/wali/basetool/utils/SystemConfig:e	(Landroid/content/Context;)Z
    //   201: ifeq +297 -> 498
    //   204: iconst_1
    //   205: istore_2
    //   206: lload 11
    //   208: lload 9
    //   210: lsub
    //   211: lstore 9
    //   213: iload_2
    //   214: iconst_2
    //   215: if_icmpne +14 -> 229
    //   218: iload_3
    //   219: istore_2
    //   220: ldc -38
    //   222: ldc_w 396
    //   225: invokestatic 223	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   228: pop
    //   229: aload 13
    //   231: ifnull +687 -> 918
    //   234: iload_3
    //   235: istore_2
    //   236: aload 13
    //   238: invokevirtual 401	com/mi/milink/sdk/aidl/PacketData:getBusiCode	()I
    //   241: istore 4
    //   243: iload_3
    //   244: istore_2
    //   245: aload 13
    //   247: invokevirtual 404	com/mi/milink/sdk/aidl/PacketData:getMnsCode	()I
    //   250: istore 5
    //   252: iload 4
    //   254: sipush 515
    //   257: if_icmpeq +19 -> 276
    //   260: iload 4
    //   262: sipush 519
    //   265: if_icmpeq +11 -> 276
    //   268: iload 4
    //   270: sipush 520
    //   273: if_icmpne +230 -> 503
    //   276: iload_3
    //   277: istore_2
    //   278: new 176	java/lang/StringBuilder
    //   281: dup
    //   282: ldc_w 406
    //   285: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   288: aload 13
    //   290: invokevirtual 401	com/mi/milink/sdk/aidl/PacketData:getBusiCode	()I
    //   293: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   296: ldc_w 408
    //   299: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   302: aload 13
    //   304: invokevirtual 404	com/mi/milink/sdk/aidl/PacketData:getMnsCode	()I
    //   307: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   310: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   313: invokestatic 369	cn/com/wali/basetool/log/Logger:d	(Ljava/lang/String;)V
    //   316: iload_3
    //   317: istore_2
    //   318: new 176	java/lang/StringBuilder
    //   321: dup
    //   322: ldc_w 410
    //   325: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   328: aload 13
    //   330: invokevirtual 401	com/mi/milink/sdk/aidl/PacketData:getBusiCode	()I
    //   333: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   336: ldc_w 408
    //   339: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   342: aload 13
    //   344: invokevirtual 404	com/mi/milink/sdk/aidl/PacketData:getMnsCode	()I
    //   347: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   350: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   353: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   356: iload_3
    //   357: istore_2
    //   358: invokestatic 299	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   361: lconst_0
    //   362: sipush 7534
    //   365: new 176	java/lang/StringBuilder
    //   368: dup
    //   369: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   372: aload 16
    //   374: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: ldc_w 412
    //   380: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   383: aload 13
    //   385: invokevirtual 401	com/mi/milink/sdk/aidl/PacketData:getBusiCode	()I
    //   388: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   391: ldc_w 408
    //   394: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: aload 13
    //   399: invokevirtual 404	com/mi/milink/sdk/aidl/PacketData:getMnsCode	()I
    //   402: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   405: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   408: invokevirtual 303	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:reportMilink	(JILjava/lang/String;)V
    //   411: iconst_1
    //   412: istore_2
    //   413: iload_2
    //   414: istore_3
    //   415: iload_2
    //   416: ifeq +594 -> 1010
    //   419: iconst_1
    //   420: putstatic 364	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:needOnlyUseHttp	Z
    //   423: aload_1
    //   424: getfield 382	cn/com/wali/basetool/io/QHttpRequest:h	Z
    //   427: istore 7
    //   429: new 176	java/lang/StringBuilder
    //   432: dup
    //   433: ldc_w 414
    //   436: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   439: iload 7
    //   441: invokevirtual 367	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   444: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   447: invokestatic 369	cn/com/wali/basetool/log/Logger:d	(Ljava/lang/String;)V
    //   450: new 176	java/lang/StringBuilder
    //   453: dup
    //   454: ldc_w 416
    //   457: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   460: iload 7
    //   462: invokevirtual 367	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   465: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   468: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   471: invokestatic 299	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   474: lconst_0
    //   475: sipush 7529
    //   478: aload_1
    //   479: getfield 57	cn/com/wali/basetool/io/QHttpRequest:a	Ljava/lang/String;
    //   482: invokevirtual 303	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:reportMilink	(JILjava/lang/String;)V
    //   485: iload 7
    //   487: ifne +501 -> 988
    //   490: ldc_w 418
    //   493: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   496: aconst_null
    //   497: areturn
    //   498: iconst_2
    //   499: istore_2
    //   500: goto -294 -> 206
    //   503: iload_3
    //   504: istore_2
    //   505: aload 13
    //   507: invokevirtual 422	com/mi/milink/sdk/aidl/PacketData:getData	()[B
    //   510: invokestatic 428	org/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo:parseFrom	([B)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;
    //   513: astore 17
    //   515: aload 17
    //   517: ifnull +190 -> 707
    //   520: iload_3
    //   521: istore_2
    //   522: aload 17
    //   524: invokevirtual 431	org/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo:getCode	()I
    //   527: istore 6
    //   529: iload_3
    //   530: istore_2
    //   531: aload 15
    //   533: iload 6
    //   535: putfield 49	cn/com/wali/basetool/io/QHttpResponse:c	I
    //   538: iload_3
    //   539: istore_2
    //   540: new 176	java/lang/StringBuilder
    //   543: dup
    //   544: ldc_w 433
    //   547: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   550: iload 6
    //   552: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   555: ldc_w 435
    //   558: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   561: iload 4
    //   563: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   566: ldc_w 408
    //   569: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   572: iload 5
    //   574: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   577: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   580: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   583: iload 6
    //   585: sipush 200
    //   588: if_icmpne +52 -> 640
    //   591: iload_3
    //   592: istore_2
    //   593: getstatic 357	cn/com/wali/basetool/log/Logger:a	Z
    //   596: ifeq +26 -> 622
    //   599: iload_3
    //   600: istore_2
    //   601: ldc_w 437
    //   604: aload 16
    //   606: invokestatic 439	cn/com/wali/basetool/log/Logger:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   609: iload_3
    //   610: istore_2
    //   611: ldc_w 441
    //   614: aload 17
    //   616: invokevirtual 444	org/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo:getBody	()Ljava/lang/String;
    //   619: invokestatic 439	cn/com/wali/basetool/log/Logger:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   622: iload_3
    //   623: istore_2
    //   624: aload 15
    //   626: aload 17
    //   628: invokevirtual 448	org/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo:getBodyBytes	()Lcom/google/protobuf/ByteString;
    //   631: invokevirtual 453	com/google/protobuf/ByteString:toByteArray	()[B
    //   634: putfield 455	cn/com/wali/basetool/io/QHttpResponse:a	[B
    //   637: goto +1178 -> 1815
    //   640: iload_3
    //   641: istore_2
    //   642: ldc -38
    //   644: new 176	java/lang/StringBuilder
    //   647: dup
    //   648: ldc_w 457
    //   651: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   654: iload 6
    //   656: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   659: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   662: invokestatic 223	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   665: pop
    //   666: iload_3
    //   667: istore_2
    //   668: invokestatic 299	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   671: lload 9
    //   673: sipush 7511
    //   676: aload 16
    //   678: invokevirtual 303	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:reportMilink	(JILjava/lang/String;)V
    //   681: goto +1134 -> 1815
    //   684: astore 13
    //   686: aload 13
    //   688: invokevirtual 458	java/io/IOException:printStackTrace	()V
    //   691: bipush 56
    //   693: putstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   696: aload 13
    //   698: invokestatic 210	android/util/Log:getStackTraceString	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   701: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   704: goto -291 -> 413
    //   707: iload_3
    //   708: istore_2
    //   709: new 176	java/lang/StringBuilder
    //   712: dup
    //   713: ldc_w 406
    //   716: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   719: aload 13
    //   721: invokevirtual 401	com/mi/milink/sdk/aidl/PacketData:getBusiCode	()I
    //   724: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   727: ldc_w 408
    //   730: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   733: aload 13
    //   735: invokevirtual 404	com/mi/milink/sdk/aidl/PacketData:getMnsCode	()I
    //   738: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   741: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   744: invokestatic 369	cn/com/wali/basetool/log/Logger:d	(Ljava/lang/String;)V
    //   747: iload_3
    //   748: istore_2
    //   749: new 176	java/lang/StringBuilder
    //   752: dup
    //   753: ldc_w 410
    //   756: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   759: aload 13
    //   761: invokevirtual 401	com/mi/milink/sdk/aidl/PacketData:getBusiCode	()I
    //   764: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   767: ldc_w 408
    //   770: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   773: aload 13
    //   775: invokevirtual 404	com/mi/milink/sdk/aidl/PacketData:getMnsCode	()I
    //   778: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   781: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   784: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   787: iload_3
    //   788: istore_2
    //   789: invokestatic 299	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   792: lload 9
    //   794: sipush 7500
    //   797: new 176	java/lang/StringBuilder
    //   800: dup
    //   801: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   804: aload 16
    //   806: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   809: ldc_w 412
    //   812: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   815: aload 13
    //   817: invokevirtual 401	com/mi/milink/sdk/aidl/PacketData:getBusiCode	()I
    //   820: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   823: ldc_w 408
    //   826: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   829: aload 13
    //   831: invokevirtual 404	com/mi/milink/sdk/aidl/PacketData:getMnsCode	()I
    //   834: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   837: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   840: invokevirtual 303	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:reportMilink	(JILjava/lang/String;)V
    //   843: iload_3
    //   844: istore_2
    //   845: invokestatic 299	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   848: lload 9
    //   850: sipush 7534
    //   853: new 176	java/lang/StringBuilder
    //   856: dup
    //   857: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   860: aload 16
    //   862: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   865: ldc_w 412
    //   868: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   871: aload 13
    //   873: invokevirtual 401	com/mi/milink/sdk/aidl/PacketData:getBusiCode	()I
    //   876: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   879: ldc_w 408
    //   882: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   885: aload 13
    //   887: invokevirtual 404	com/mi/milink/sdk/aidl/PacketData:getMnsCode	()I
    //   890: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   893: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   896: invokevirtual 303	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:reportMilink	(JILjava/lang/String;)V
    //   899: iload_3
    //   900: istore_2
    //   901: new 460	cn/com/wali/basetool/io/b
    //   904: dup
    //   905: aload 16
    //   907: invokespecial 461	cn/com/wali/basetool/io/b:<init>	(Ljava/lang/String;)V
    //   910: invokevirtual 464	cn/com/wali/basetool/io/b:start	()V
    //   913: iconst_1
    //   914: istore_2
    //   915: goto -502 -> 413
    //   918: iload_3
    //   919: istore_2
    //   920: ldc_w 466
    //   923: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   926: iconst_1
    //   927: istore_2
    //   928: goto -515 -> 413
    //   931: iload_3
    //   932: istore_2
    //   933: invokestatic 387	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:getInstance	()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;
    //   936: getfield 470	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:miLinkChannelClient	Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;
    //   939: invokevirtual 475	com/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient:initUseChannelMode	()V
    //   942: iconst_1
    //   943: istore_2
    //   944: goto -531 -> 413
    //   947: iconst_0
    //   948: istore_3
    //   949: iload_3
    //   950: istore_2
    //   951: invokestatic 387	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:getInstance	()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;
    //   954: getfield 470	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:miLinkChannelClient	Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;
    //   957: invokevirtual 475	com/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient:initUseChannelMode	()V
    //   960: iload_3
    //   961: istore_2
    //   962: new 176	java/lang/StringBuilder
    //   965: dup
    //   966: ldc_w 477
    //   969: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   972: aload 16
    //   974: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   977: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   980: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   983: iconst_0
    //   984: istore_2
    //   985: goto -572 -> 413
    //   988: invokestatic 299	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   991: lconst_0
    //   992: sipush 7540
    //   995: aload_1
    //   996: getfield 57	cn/com/wali/basetool/io/QHttpRequest:a	Ljava/lang/String;
    //   999: invokevirtual 303	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:reportMilink	(JILjava/lang/String;)V
    //   1002: ldc_w 479
    //   1005: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   1008: iload_2
    //   1009: istore_3
    //   1010: aload 14
    //   1012: invokevirtual 482	android/net/NetworkInfo:getType	()I
    //   1015: iconst_1
    //   1016: if_icmpeq +66 -> 1082
    //   1019: iconst_1
    //   1020: istore 7
    //   1022: aload_0
    //   1023: aload_1
    //   1024: iload 8
    //   1026: iload 7
    //   1028: invokestatic 484	cn/com/wali/basetool/io/HttpUtils:a	(Landroid/content/Context;Lcn/com/wali/basetool/io/QHttpRequest;ZZ)Ljava/net/HttpURLConnection;
    //   1031: astore 18
    //   1033: invokestatic 229	java/lang/System:currentTimeMillis	()J
    //   1036: pop2
    //   1037: aload 18
    //   1039: invokevirtual 267	java/net/HttpURLConnection:connect	()V
    //   1042: invokestatic 229	java/lang/System:currentTimeMillis	()J
    //   1045: pop2
    //   1046: aload 18
    //   1048: ifnonnull +78 -> 1126
    //   1051: bipush 58
    //   1053: putstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   1056: aconst_null
    //   1057: areturn
    //   1058: new 176	java/lang/StringBuilder
    //   1061: dup
    //   1062: ldc_w 477
    //   1065: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1068: aload 16
    //   1070: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1073: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1076: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   1079: goto -69 -> 1010
    //   1082: iconst_0
    //   1083: istore 7
    //   1085: goto -63 -> 1022
    //   1088: astore_0
    //   1089: bipush 55
    //   1091: putstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   1094: aload_0
    //   1095: invokevirtual 485	java/net/ProtocolException:printStackTrace	()V
    //   1098: aload_0
    //   1099: invokestatic 210	android/util/Log:getStackTraceString	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   1102: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   1105: aconst_null
    //   1106: areturn
    //   1107: astore_0
    //   1108: bipush 56
    //   1110: putstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   1113: aload_0
    //   1114: invokevirtual 458	java/io/IOException:printStackTrace	()V
    //   1117: aload_0
    //   1118: invokestatic 210	android/util/Log:getStackTraceString	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   1121: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   1124: aconst_null
    //   1125: areturn
    //   1126: aload 18
    //   1128: invokevirtual 488	java/net/HttpURLConnection:getResponseCode	()I
    //   1131: istore_2
    //   1132: iload_2
    //   1133: sipush 200
    //   1136: if_icmpeq +456 -> 1592
    //   1139: aload 18
    //   1141: invokevirtual 488	java/net/HttpURLConnection:getResponseCode	()I
    //   1144: putstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   1147: new 176	java/lang/StringBuilder
    //   1150: dup
    //   1151: ldc_w 490
    //   1154: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1157: getstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   1160: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1163: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1166: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   1169: getstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   1172: sipush 403
    //   1175: if_icmpeq +14 -> 1189
    //   1178: getstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   1181: istore_3
    //   1182: iload_3
    //   1183: sipush 400
    //   1186: if_icmpne +290 -> 1476
    //   1189: aconst_null
    //   1190: astore 16
    //   1192: aconst_null
    //   1193: astore 15
    //   1195: aconst_null
    //   1196: astore 17
    //   1198: aconst_null
    //   1199: astore_0
    //   1200: aload 16
    //   1202: astore 14
    //   1204: aload 17
    //   1206: astore 13
    //   1208: new 176	java/lang/StringBuilder
    //   1211: dup
    //   1212: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   1215: astore 19
    //   1217: aload 18
    //   1219: ifnull +299 -> 1518
    //   1222: aload 16
    //   1224: astore 14
    //   1226: aload 17
    //   1228: astore 13
    //   1230: aload 18
    //   1232: invokevirtual 493	java/net/HttpURLConnection:getContent	()Ljava/lang/Object;
    //   1235: ifnull +110 -> 1345
    //   1238: ldc 127
    //   1240: astore 15
    //   1242: aload 16
    //   1244: astore 14
    //   1246: aload 17
    //   1248: astore 13
    //   1250: aload 18
    //   1252: invokevirtual 275	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   1255: astore_0
    //   1256: aload_0
    //   1257: astore 14
    //   1259: aload_0
    //   1260: astore 13
    //   1262: new 269	java/io/BufferedReader
    //   1265: dup
    //   1266: new 271	java/io/InputStreamReader
    //   1269: dup
    //   1270: aload_0
    //   1271: invokespecial 278	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   1274: invokespecial 281	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   1277: astore 16
    //   1279: aload_0
    //   1280: astore 14
    //   1282: aload_0
    //   1283: astore 13
    //   1285: aload 16
    //   1287: invokevirtual 284	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   1290: astore 17
    //   1292: aload 17
    //   1294: ifnull +40 -> 1334
    //   1297: aload_0
    //   1298: astore 14
    //   1300: aload_0
    //   1301: astore 13
    //   1303: new 176	java/lang/StringBuilder
    //   1306: dup
    //   1307: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   1310: aload 15
    //   1312: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1315: aload 17
    //   1317: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1320: ldc_w 495
    //   1323: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1326: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1329: astore 15
    //   1331: goto -52 -> 1279
    //   1334: aload_0
    //   1335: astore 14
    //   1337: aload_0
    //   1338: astore 13
    //   1340: aload 16
    //   1342: invokevirtual 291	java/io/BufferedReader:close	()V
    //   1345: aload_0
    //   1346: astore 14
    //   1348: aload_0
    //   1349: astore 13
    //   1351: aload 18
    //   1353: invokevirtual 499	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   1356: astore 16
    //   1358: aload_0
    //   1359: astore 15
    //   1361: aload 16
    //   1363: ifnull +155 -> 1518
    //   1366: aload_0
    //   1367: astore 14
    //   1369: aload_0
    //   1370: astore 15
    //   1372: aload_0
    //   1373: astore 13
    //   1375: aload 16
    //   1377: invokeinterface 504 1 0
    //   1382: ifle +136 -> 1518
    //   1385: aload_0
    //   1386: astore 14
    //   1388: aload_0
    //   1389: astore 13
    //   1391: aload 16
    //   1393: invokeinterface 508 1 0
    //   1398: invokeinterface 511 1 0
    //   1403: astore 16
    //   1405: aload_0
    //   1406: astore 14
    //   1408: aload_0
    //   1409: astore 15
    //   1411: aload_0
    //   1412: astore 13
    //   1414: aload 16
    //   1416: invokeinterface 332 1 0
    //   1421: ifeq +97 -> 1518
    //   1424: aload_0
    //   1425: astore 14
    //   1427: aload_0
    //   1428: astore 13
    //   1430: aload 19
    //   1432: aload 16
    //   1434: invokeinterface 336 1 0
    //   1439: checkcast 513	java/util/Map$Entry
    //   1442: invokeinterface 514 1 0
    //   1447: invokevirtual 515	java/lang/Object:toString	()Ljava/lang/String;
    //   1450: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1453: pop
    //   1454: goto -49 -> 1405
    //   1457: astore_0
    //   1458: aload 14
    //   1460: astore 13
    //   1462: aload_0
    //   1463: invokevirtual 458	java/io/IOException:printStackTrace	()V
    //   1466: aload 14
    //   1468: ifnull +8 -> 1476
    //   1471: aload 14
    //   1473: invokevirtual 518	java/io/InputStream:close	()V
    //   1476: new 176	java/lang/StringBuilder
    //   1479: dup
    //   1480: ldc_w 520
    //   1483: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1486: iload_2
    //   1487: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1490: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1493: invokestatic 369	cn/com/wali/basetool/log/Logger:d	(Ljava/lang/String;)V
    //   1496: new 176	java/lang/StringBuilder
    //   1499: dup
    //   1500: ldc_w 522
    //   1503: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1506: iload_2
    //   1507: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1510: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1513: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   1516: aconst_null
    //   1517: areturn
    //   1518: aload 15
    //   1520: ifnull -44 -> 1476
    //   1523: aload 15
    //   1525: invokevirtual 518	java/io/InputStream:close	()V
    //   1528: goto -52 -> 1476
    //   1531: astore_0
    //   1532: bipush 57
    //   1534: putstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   1537: aload_0
    //   1538: invokevirtual 204	java/lang/Exception:printStackTrace	()V
    //   1541: new 176	java/lang/StringBuilder
    //   1544: dup
    //   1545: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   1548: aload_1
    //   1549: getfield 57	cn/com/wali/basetool/io/QHttpRequest:a	Ljava/lang/String;
    //   1552: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1555: ldc_w 495
    //   1558: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1561: aload_0
    //   1562: invokestatic 210	android/util/Log:getStackTraceString	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   1565: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1568: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1571: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   1574: aconst_null
    //   1575: areturn
    //   1576: astore_0
    //   1577: aload 13
    //   1579: ifnull +8 -> 1587
    //   1582: aload 13
    //   1584: invokevirtual 518	java/io/InputStream:close	()V
    //   1587: aload_0
    //   1588: athrow
    //   1589: astore_0
    //   1590: aload_0
    //   1591: athrow
    //   1592: new 176	java/lang/StringBuilder
    //   1595: dup
    //   1596: ldc_w 522
    //   1599: invokespecial 179	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1602: iload_2
    //   1603: invokevirtual 182	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1606: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1609: invokestatic 214	cn/com/wali/basetool/log/Logger:e	(Ljava/lang/String;)V
    //   1612: aload 15
    //   1614: aload 18
    //   1616: invokevirtual 488	java/net/HttpURLConnection:getResponseCode	()I
    //   1619: putfield 49	cn/com/wali/basetool/io/QHttpResponse:c	I
    //   1622: aconst_null
    //   1623: astore_0
    //   1624: ldc 127
    //   1626: astore 14
    //   1628: aload 18
    //   1630: invokevirtual 275	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   1633: astore 13
    //   1635: aload 13
    //   1637: astore_0
    //   1638: new 269	java/io/BufferedReader
    //   1641: dup
    //   1642: new 271	java/io/InputStreamReader
    //   1645: dup
    //   1646: aload 13
    //   1648: invokespecial 278	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   1651: invokespecial 281	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   1654: astore 17
    //   1656: aload 13
    //   1658: astore_0
    //   1659: aload 17
    //   1661: invokevirtual 284	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   1664: astore 18
    //   1666: aload 18
    //   1668: ifnull +37 -> 1705
    //   1671: aload 13
    //   1673: astore_0
    //   1674: new 176	java/lang/StringBuilder
    //   1677: dup
    //   1678: invokespecial 232	java/lang/StringBuilder:<init>	()V
    //   1681: aload 14
    //   1683: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1686: aload 18
    //   1688: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1691: ldc_w 495
    //   1694: invokevirtual 237	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1697: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1700: astore 14
    //   1702: goto -46 -> 1656
    //   1705: aload 13
    //   1707: astore_0
    //   1708: aload 17
    //   1710: invokevirtual 291	java/io/BufferedReader:close	()V
    //   1713: aload 13
    //   1715: astore_0
    //   1716: aload 15
    //   1718: aload 14
    //   1720: invokevirtual 525	java/lang/String:getBytes	()[B
    //   1723: putfield 455	cn/com/wali/basetool/io/QHttpResponse:a	[B
    //   1726: aload 13
    //   1728: ifnull +8 -> 1736
    //   1731: aload 13
    //   1733: invokevirtual 518	java/io/InputStream:close	()V
    //   1736: iload_3
    //   1737: ifeq +15 -> 1752
    //   1740: invokestatic 299	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:getInstance	()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    //   1743: lconst_0
    //   1744: sipush 7539
    //   1747: aload 16
    //   1749: invokevirtual 303	com/xiaomi/gamecenter/sdk/utils/ReporterUtils:reportMilink	(JILjava/lang/String;)V
    //   1752: aload 15
    //   1754: areturn
    //   1755: astore 13
    //   1757: aconst_null
    //   1758: astore_0
    //   1759: bipush 56
    //   1761: putstatic 10	cn/com/wali/basetool/io/HttpUtils:a	I
    //   1764: aload 13
    //   1766: invokevirtual 458	java/io/IOException:printStackTrace	()V
    //   1769: aload_0
    //   1770: ifnull +48 -> 1818
    //   1773: aload_0
    //   1774: invokevirtual 518	java/io/InputStream:close	()V
    //   1777: goto +41 -> 1818
    //   1780: aload_0
    //   1781: ifnull +7 -> 1788
    //   1784: aload_0
    //   1785: invokevirtual 518	java/io/InputStream:close	()V
    //   1788: aload 13
    //   1790: athrow
    //   1791: astore 13
    //   1793: goto -13 -> 1780
    //   1796: astore 14
    //   1798: aload 13
    //   1800: astore_0
    //   1801: aload 14
    //   1803: astore 13
    //   1805: goto -46 -> 1759
    //   1808: astore 13
    //   1810: iconst_0
    //   1811: istore_2
    //   1812: goto -1126 -> 686
    //   1815: aload 15
    //   1817: areturn
    //   1818: aconst_null
    //   1819: areturn
    //   1820: astore 13
    //   1822: goto -42 -> 1780
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1825	0	paramContext	Context
    //   0	1825	1	paramQHttpRequest	QHttpRequest
    //   134	1678	2	i	int
    //   28	1709	3	j	int
    //   241	321	4	k	int
    //   250	323	5	m	int
    //   527	128	6	n	int
    //   427	657	7	bool1	boolean
    //   4	1021	8	bool2	boolean
    //   172	677	9	l1	long
    //   193	14	11	l2	long
    //   186	320	13	localPacketData	com.mi.milink.sdk.aidl.PacketData
    //   684	202	13	localIOException1	java.io.IOException
    //   1206	526	13	localObject1	Object
    //   1755	34	13	localIOException2	java.io.IOException
    //   1791	8	13	localObject2	Object
    //   1803	1	13	localIOException3	java.io.IOException
    //   1808	1	13	localIOException4	java.io.IOException
    //   1820	1	13	localObject3	Object
    //   18	1701	14	localObject4	Object
    //   1796	6	14	localIOException5	java.io.IOException
    //   36	1780	15	localObject5	Object
    //   42	1706	16	localObject6	Object
    //   513	1196	17	localObject7	Object
    //   1031	656	18	localObject8	Object
    //   1215	216	19	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   135	156	684	java/io/IOException
    //   158	167	684	java/io/IOException
    //   169	174	684	java/io/IOException
    //   176	188	684	java/io/IOException
    //   190	195	684	java/io/IOException
    //   197	204	684	java/io/IOException
    //   220	229	684	java/io/IOException
    //   236	243	684	java/io/IOException
    //   245	252	684	java/io/IOException
    //   278	316	684	java/io/IOException
    //   318	356	684	java/io/IOException
    //   358	411	684	java/io/IOException
    //   505	515	684	java/io/IOException
    //   522	529	684	java/io/IOException
    //   531	538	684	java/io/IOException
    //   540	583	684	java/io/IOException
    //   593	599	684	java/io/IOException
    //   601	609	684	java/io/IOException
    //   611	622	684	java/io/IOException
    //   624	637	684	java/io/IOException
    //   642	666	684	java/io/IOException
    //   668	681	684	java/io/IOException
    //   709	747	684	java/io/IOException
    //   749	787	684	java/io/IOException
    //   789	843	684	java/io/IOException
    //   845	899	684	java/io/IOException
    //   901	913	684	java/io/IOException
    //   920	926	684	java/io/IOException
    //   933	942	684	java/io/IOException
    //   951	960	684	java/io/IOException
    //   962	983	684	java/io/IOException
    //   1033	1046	1088	java/net/ProtocolException
    //   1033	1046	1107	java/io/IOException
    //   1208	1217	1457	java/io/IOException
    //   1230	1238	1457	java/io/IOException
    //   1250	1256	1457	java/io/IOException
    //   1262	1279	1457	java/io/IOException
    //   1285	1292	1457	java/io/IOException
    //   1303	1331	1457	java/io/IOException
    //   1340	1345	1457	java/io/IOException
    //   1351	1358	1457	java/io/IOException
    //   1375	1385	1457	java/io/IOException
    //   1391	1405	1457	java/io/IOException
    //   1414	1424	1457	java/io/IOException
    //   1430	1454	1457	java/io/IOException
    //   1022	1033	1531	java/lang/Exception
    //   1033	1046	1531	java/lang/Exception
    //   1051	1056	1531	java/lang/Exception
    //   1089	1105	1531	java/lang/Exception
    //   1108	1124	1531	java/lang/Exception
    //   1126	1132	1531	java/lang/Exception
    //   1139	1182	1531	java/lang/Exception
    //   1471	1476	1531	java/lang/Exception
    //   1476	1516	1531	java/lang/Exception
    //   1523	1528	1531	java/lang/Exception
    //   1582	1587	1531	java/lang/Exception
    //   1587	1589	1531	java/lang/Exception
    //   1592	1622	1531	java/lang/Exception
    //   1731	1736	1531	java/lang/Exception
    //   1740	1752	1531	java/lang/Exception
    //   1773	1777	1531	java/lang/Exception
    //   1784	1788	1531	java/lang/Exception
    //   1788	1791	1531	java/lang/Exception
    //   1208	1217	1576	finally
    //   1230	1238	1576	finally
    //   1250	1256	1576	finally
    //   1262	1279	1576	finally
    //   1285	1292	1576	finally
    //   1303	1331	1576	finally
    //   1340	1345	1576	finally
    //   1351	1358	1576	finally
    //   1375	1385	1576	finally
    //   1391	1405	1576	finally
    //   1414	1424	1576	finally
    //   1430	1454	1576	finally
    //   1462	1466	1576	finally
    //   1022	1033	1589	finally
    //   1033	1046	1589	finally
    //   1051	1056	1589	finally
    //   1089	1105	1589	finally
    //   1108	1124	1589	finally
    //   1126	1132	1589	finally
    //   1139	1182	1589	finally
    //   1471	1476	1589	finally
    //   1476	1516	1589	finally
    //   1523	1528	1589	finally
    //   1532	1574	1589	finally
    //   1582	1587	1589	finally
    //   1587	1589	1589	finally
    //   1592	1622	1589	finally
    //   1731	1736	1589	finally
    //   1740	1752	1589	finally
    //   1773	1777	1589	finally
    //   1784	1788	1589	finally
    //   1788	1791	1589	finally
    //   1628	1635	1755	java/io/IOException
    //   1759	1769	1791	finally
    //   1638	1656	1796	java/io/IOException
    //   1659	1666	1796	java/io/IOException
    //   1674	1702	1796	java/io/IOException
    //   1708	1713	1796	java/io/IOException
    //   1716	1726	1796	java/io/IOException
    //   108	131	1808	java/io/IOException
    //   1628	1635	1820	finally
    //   1638	1656	1820	finally
    //   1659	1666	1820	finally
    //   1674	1702	1820	finally
    //   1708	1713	1820	finally
    //   1716	1726	1820	finally
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\cn\com\wali\basetool\io\HttpUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */