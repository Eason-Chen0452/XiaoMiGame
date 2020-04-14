package com.mi.milink.sdk.speedtest;

import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Base64;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.data.Convert;
import com.mi.milink.sdk.base.os.SimpleRequest;
import com.mi.milink.sdk.base.os.SimpleRequest.LengthPair;
import com.mi.milink.sdk.base.os.SimpleRequest.StringContent;
import com.mi.milink.sdk.base.os.info.DeviceDash;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.debug.TrafficMonitor;
import com.mi.milink.sdk.session.common.StreamUtil;
import com.mi.milink.sdk.util.CommonUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class SpeedTestManager
{
  private static final short BIG_UDP_CONTENT_LENGTH = 1024;
  private static final short SMALL_UDP_CONTENT_LENGTH = 256;
  private static final int SOCKET_RETRY_TIMES = 3;
  private static final int STATE_DONE = 2;
  private static final int STATE_IN_PROGRESS = 1;
  private static final int STATE_NOT_DONE = 0;
  private static final int STATUS_FAILURE = 1;
  private static final int STATUS_SUCCESS = 0;
  public static final String TAG = "SpeedTestManager";
  private static final int TCP_PING_LENGTH = 36;
  private static final int UDP_PACKAGE_HEAD_LENGTH = 8;
  private static SpeedTestManager sInstance = new SpeedTestManager();
  private volatile int mState = 0;
  
  private byte[] buildTcpPingPackage(int paramInt)
  {
    PacketData localPacketData = new PacketData();
    localPacketData.setCommand("milink.ping");
    localPacketData.setSeqNo(paramInt);
    return StreamUtil.toUpBytes(String.format("[%s]", new Object[] { "SpeedTestManager" }), localPacketData, true, (byte)0, MiAccountManager.getInstance().getCurrentAccount());
  }
  
  private byte[] buildUdpPingPackage(short paramShort1, short paramShort2)
  {
    Object localObject = new ByteArrayOutputStream();
    for (;;)
    {
      byte[] arrayOfByte;
      short s;
      try
      {
        ((ByteArrayOutputStream)localObject).write("png\000".getBytes());
        ((ByteArrayOutputStream)localObject).write(Convert.shortToBytes(paramShort1));
        ((ByteArrayOutputStream)localObject).write(Convert.shortToBytes(paramShort2));
        arrayOfByte = new byte[paramShort1];
        s = 0;
      }
      catch (IOException localIOException)
      {
        return null;
      }
      ((ByteArrayOutputStream)localObject).write(arrayOfByte);
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      return (byte[])localObject;
      while (s < paramShort1)
      {
        arrayOfByte[s] = ((byte)(s % 128));
        s += 1;
      }
    }
  }
  
  private void doPostData(ArrayList<SpeedTestReportTcpTestInfo> paramArrayList, ArrayList<SpeedTestReportUdpTestInfo> paramArrayList1)
  {
    if (!TextUtils.isEmpty(MiAccountManager.getInstance().getUserId()))
    {
      paramArrayList = toJson(paramArrayList, paramArrayList1);
      paramArrayList1 = new String(Base64.encode(paramArrayList.getBytes(), 0));
      MiLinkLog.v("SpeedTestManager", "ThreadId=" + Thread.currentThread().getId() + ", SpeedTest doPostData: data=" + paramArrayList);
      if (!TextUtils.isEmpty(paramArrayList1))
      {
        paramArrayList = new HashMap();
        paramArrayList.put("data", paramArrayList1);
        if (ClientAppInfo.isTestChannel()) {}
      }
    }
    try
    {
      paramArrayList1 = new SimpleRequest.LengthPair();
      SimpleRequest.StringContent localStringContent = SimpleRequest.postAsString("http://d.g.mi.com/tr.do​", paramArrayList, null, true, paramArrayList1);
      TrafficMonitor.getInstance().traffic("tr.do", paramArrayList1.compressLength);
      if (localStringContent != null)
      {
        MiLinkLog.v("SpeedTestManager", "SpeedTest doPostData use host report succeed: " + localStringContent.getBody());
        this.mState = 2;
        return;
      }
    }
    catch (Exception paramArrayList1)
    {
      for (;;)
      {
        MiLinkLog.v("SpeedTestManager", "SpeedTest doPostData use host report failed");
        this.mState = 0;
        try
        {
          paramArrayList1 = new SimpleRequest.LengthPair();
          paramArrayList = SimpleRequest.postAsString("http://120.92.24.141/tr.do​", paramArrayList, null, true, "d.g.mi.com", paramArrayList1);
          TrafficMonitor.getInstance().traffic("tr.do", paramArrayList1.compressLength);
          if (paramArrayList != null)
          {
            MiLinkLog.v("SpeedTestManager", "SpeedTest doPostData use ip report succeed: " + paramArrayList.getBody());
            this.mState = 2;
            return;
          }
        }
        catch (Exception paramArrayList)
        {
          MiLinkLog.v("SpeedTestManager", "SpeedTest doPostData use ip report failed");
          this.mState = 0;
        }
      }
    }
  }
  
  public static SpeedTestManager getInstance()
  {
    return sInstance;
  }
  
  private int getSpeedTestAppId()
  {
    return 80000 + Global.getClientAppInfo().getAppId();
  }
  
  private ArrayList<SpeedTestReportTcpTestInfo> testServerForTcp(String paramString)
  {
    int i = 0;
    MiLinkLog.i("SpeedTestManager", "start speed test tcp, ips=" + paramString);
    ArrayList localArrayList = null;
    Object localObject = localArrayList;
    if (!TextUtils.isEmpty(paramString))
    {
      localObject = localArrayList;
      if (NetworkDash.isAvailable())
      {
        localArrayList = new ArrayList();
        paramString = paramString.split("#");
        int j = paramString.length;
        for (;;)
        {
          localObject = localArrayList;
          if (i >= j) {
            break;
          }
          localObject = paramString[i];
          if (!TextUtils.isEmpty((CharSequence)localObject))
          {
            localObject = ((String)localObject).split(":");
            if ((localObject == null) || (localObject.length != 2)) {}
          }
          try
          {
            int k = Integer.parseInt(localObject[1]);
            localObject = testServerForTcpByIpPort(localObject[0], k);
            if (localObject != null) {
              localArrayList.add(localObject);
            }
          }
          catch (NumberFormatException localNumberFormatException)
          {
            for (;;) {}
          }
          i += 1;
        }
      }
    }
    return (ArrayList<SpeedTestReportTcpTestInfo>)localObject;
  }
  
  private SpeedTestReportTcpTestInfo testServerForTcpByIpPort(String paramString, int paramInt)
  {
    Socket localSocket = null;
    Object localObject1 = localSocket;
    Object localObject2;
    if (!TextUtils.isEmpty(paramString))
    {
      localObject1 = localSocket;
      if (paramInt > 0)
      {
        if (!NetworkDash.isAvailable()) {
          break label477;
        }
        localObject2 = buildTcpPingPackage(Global.getSequence());
        if (localObject2 == null) {
          break label443;
        }
        MiLinkLog.i("SpeedTestManager", "speed test tcp, IP = " + paramString + " port = " + paramInt);
        localObject1 = new SpeedTestReportTcpTestInfo();
        localSocket = new Socket();
      }
    }
    label443:
    label477:
    label511:
    for (;;)
    {
      try
      {
        InetSocketAddress localInetSocketAddress = new InetSocketAddress(InetAddress.getByName(paramString), paramInt);
        int i = ConfigManager.getInstance().getConnetionTimeout();
        int j = ConfigManager.getInstance().getRequestTimeout();
        ((SpeedTestReportTcpTestInfo)localObject1).connectTimeout = i;
        ((SpeedTestReportTcpTestInfo)localObject1).readTimeout = j;
        ((SpeedTestReportTcpTestInfo)localObject1).serverIp = paramString;
        ((SpeedTestReportTcpTestInfo)localObject1).port = paramInt;
        long l = System.currentTimeMillis();
        localSocket.connect(localInetSocketAddress, i);
        ((SpeedTestReportTcpTestInfo)localObject1).connectTime = (System.currentTimeMillis() - l);
        MiLinkLog.i("SpeedTestManager", "tcp connectTime=" + ((SpeedTestReportTcpTestInfo)localObject1).connectTime);
        localSocket.setSoTimeout(j);
        paramString = localSocket.getOutputStream();
        l = System.currentTimeMillis();
        paramString.write((byte[])localObject2);
        paramString.flush();
        paramString = new byte['Ā'];
        localObject2 = localSocket.getInputStream();
        i = 0;
        paramInt = 0;
        j = ((InputStream)localObject2).read(paramString, paramInt, 36 - paramInt);
        if (j >= 0)
        {
          i += 1;
          paramInt = j + paramInt;
          if ((paramInt < 36) && (i < 3)) {
            break label511;
          }
        }
        ((SpeedTestReportTcpTestInfo)localObject1).status = 0;
        ((SpeedTestReportTcpTestInfo)localObject1).rtt = (System.currentTimeMillis() - l);
        try
        {
          localSocket.close();
          return (SpeedTestReportTcpTestInfo)localObject1;
        }
        catch (IOException paramString)
        {
          MiLinkLog.w("SpeedTestManager", "testServerForTcpByIpPort , close socket fail");
          return (SpeedTestReportTcpTestInfo)localObject1;
        }
        try
        {
          localSocket.close();
          throw paramString;
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            MiLinkLog.w("SpeedTestManager", "testServerForTcpByIpPort , close socket fail");
          }
        }
      }
      catch (UnknownHostException paramString)
      {
        paramString = paramString;
        ((SpeedTestReportTcpTestInfo)localObject1).status = 1;
        MiLinkLog.w("SpeedTestManager", "testServerForTcpByIpPort UnknownHostException");
        try
        {
          localSocket.close();
          return (SpeedTestReportTcpTestInfo)localObject1;
        }
        catch (IOException paramString)
        {
          MiLinkLog.w("SpeedTestManager", "testServerForTcpByIpPort , close socket fail");
          return (SpeedTestReportTcpTestInfo)localObject1;
        }
      }
      catch (SocketTimeoutException paramString)
      {
        paramString = paramString;
        ((SpeedTestReportTcpTestInfo)localObject1).status = 1;
        MiLinkLog.w("SpeedTestManager", "testServerForTcpByIpPort SocketTimeoutException");
        try
        {
          localSocket.close();
          return (SpeedTestReportTcpTestInfo)localObject1;
        }
        catch (IOException paramString)
        {
          MiLinkLog.w("SpeedTestManager", "testServerForTcpByIpPort , close socket fail");
          return (SpeedTestReportTcpTestInfo)localObject1;
        }
      }
      catch (Exception paramString)
      {
        paramString = paramString;
        ((SpeedTestReportTcpTestInfo)localObject1).status = 1;
        MiLinkLog.e("SpeedTestManager", "testServerForTcpByIpPort", paramString);
        try
        {
          localSocket.close();
          return (SpeedTestReportTcpTestInfo)localObject1;
        }
        catch (IOException paramString)
        {
          MiLinkLog.w("SpeedTestManager", "testServerForTcpByIpPort , close socket fail");
          return (SpeedTestReportTcpTestInfo)localObject1;
        }
      }
      finally {}
      MiLinkLog.i("SpeedTestManager", "speed test tcp, ping = null, IP = " + paramString + " port = " + paramInt);
      return null;
      MiLinkLog.i("SpeedTestManager", "speed test tcp, network.is unavailable, IP = " + paramString + " port = " + paramInt);
      return null;
    }
  }
  
  private ArrayList<SpeedTestReportUdpTestInfo> testServerForUdp(String paramString)
  {
    int i = 0;
    MiLinkLog.i("SpeedTestManager", "start speed test udp, ips=" + paramString);
    ArrayList localArrayList = null;
    Object localObject = localArrayList;
    if (!TextUtils.isEmpty(paramString))
    {
      localObject = localArrayList;
      if (NetworkDash.isAvailable())
      {
        localArrayList = new ArrayList();
        paramString = paramString.split("#");
        int j = paramString.length;
        for (;;)
        {
          localObject = localArrayList;
          if (i >= j) {
            break;
          }
          localObject = paramString[i];
          if (!TextUtils.isEmpty((CharSequence)localObject))
          {
            localObject = ((String)localObject).split(":");
            if ((localObject == null) || (localObject.length != 2)) {}
          }
          try
          {
            int k = Integer.parseInt(localObject[1]);
            localObject = testServerForUdpByIpPort(localObject[0], k);
            if (localObject != null) {
              localArrayList.add(localObject);
            }
          }
          catch (NumberFormatException localNumberFormatException)
          {
            for (;;) {}
          }
          i += 1;
        }
      }
    }
    return (ArrayList<SpeedTestReportUdpTestInfo>)localObject;
  }
  
  /* Error */
  private SpeedTestReportUdpTestInfo testServerForUdpByIpPort(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 8
    //   6: aload 8
    //   8: astore 6
    //   10: aload_1
    //   11: invokestatic 135	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   14: ifne +373 -> 387
    //   17: aload 8
    //   19: astore 6
    //   21: iload_2
    //   22: ifle +365 -> 387
    //   25: invokestatic 270	com/mi/milink/sdk/base/os/info/NetworkDash:isAvailable	()Z
    //   28: ifeq +602 -> 630
    //   31: aload_0
    //   32: sipush 256
    //   35: iconst_1
    //   36: invokespecial 428	com/mi/milink/sdk/speedtest/SpeedTestManager:buildUdpPingPackage	(SS)[B
    //   39: astore 12
    //   41: aload_0
    //   42: sipush 1024
    //   45: iconst_2
    //   46: invokespecial 428	com/mi/milink/sdk/speedtest/SpeedTestManager:buildUdpPingPackage	(SS)[B
    //   49: astore 9
    //   51: aload 12
    //   53: ifnonnull +8 -> 61
    //   56: aload 9
    //   58: ifnull +538 -> 596
    //   61: ldc 24
    //   63: new 149	java/lang/StringBuilder
    //   66: dup
    //   67: ldc_w 430
    //   70: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   73: aload_1
    //   74: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: ldc_w 309
    //   80: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   83: iload_2
    //   84: invokevirtual 312	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   87: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: invokestatic 265	com/mi/milink/sdk/debug/MiLinkLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   93: new 432	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo
    //   96: dup
    //   97: invokespecial 433	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:<init>	()V
    //   100: astore 8
    //   102: new 435	java/net/DatagramSocket
    //   105: dup
    //   106: invokespecial 436	java/net/DatagramSocket:<init>	()V
    //   109: astore 6
    //   111: aload 6
    //   113: astore 7
    //   115: aload_1
    //   116: invokestatic 326	java/net/InetAddress:getByName	(Ljava/lang/String;)Ljava/net/InetAddress;
    //   119: astore 10
    //   121: aload 6
    //   123: astore 7
    //   125: aload 8
    //   127: aload_1
    //   128: putfield 437	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:serverIp	Ljava/lang/String;
    //   131: aload 6
    //   133: astore 7
    //   135: aload 8
    //   137: iload_2
    //   138: putfield 438	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:port	I
    //   141: aload 6
    //   143: astore 7
    //   145: invokestatic 334	com/mi/milink/sdk/config/ConfigManager:getInstance	()Lcom/mi/milink/sdk/config/ConfigManager;
    //   148: invokevirtual 340	com/mi/milink/sdk/config/ConfigManager:getRequestTimeout	()I
    //   151: istore_3
    //   152: aload 6
    //   154: astore 7
    //   156: aload 8
    //   158: iload_3
    //   159: putfield 439	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:readTimeout	I
    //   162: aload 6
    //   164: astore 7
    //   166: aload 6
    //   168: iload_3
    //   169: invokevirtual 440	java/net/DatagramSocket:setSoTimeout	(I)V
    //   172: aload 6
    //   174: astore 7
    //   176: sipush 1032
    //   179: newarray <illegal type>
    //   181: astore_1
    //   182: aload 6
    //   184: astore 7
    //   186: new 442	java/net/DatagramPacket
    //   189: dup
    //   190: aload_1
    //   191: iconst_0
    //   192: sipush 264
    //   195: invokespecial 445	java/net/DatagramPacket:<init>	([BII)V
    //   198: astore 11
    //   200: aload 12
    //   202: ifnull +80 -> 282
    //   205: aload 6
    //   207: astore 7
    //   209: new 442	java/net/DatagramPacket
    //   212: dup
    //   213: aload 12
    //   215: aload 12
    //   217: arraylength
    //   218: aload 10
    //   220: iload_2
    //   221: invokespecial 448	java/net/DatagramPacket:<init>	([BILjava/net/InetAddress;I)V
    //   224: astore 12
    //   226: aload 6
    //   228: astore 7
    //   230: invokestatic 357	java/lang/System:currentTimeMillis	()J
    //   233: lstore 4
    //   235: aload 6
    //   237: astore 7
    //   239: aload 6
    //   241: aload 12
    //   243: invokevirtual 452	java/net/DatagramSocket:send	(Ljava/net/DatagramPacket;)V
    //   246: aload 6
    //   248: astore 7
    //   250: aload 8
    //   252: iconst_0
    //   253: putfield 455	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:smallStatus	I
    //   256: aload 6
    //   258: astore 7
    //   260: aload 6
    //   262: aload 11
    //   264: invokevirtual 458	java/net/DatagramSocket:receive	(Ljava/net/DatagramPacket;)V
    //   267: aload 6
    //   269: astore 7
    //   271: aload 8
    //   273: invokestatic 357	java/lang/System:currentTimeMillis	()J
    //   276: lload 4
    //   278: lsub
    //   279: putfield 461	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:smallRtt	J
    //   282: aload 9
    //   284: ifnull +94 -> 378
    //   287: aload 6
    //   289: astore 7
    //   291: new 442	java/net/DatagramPacket
    //   294: dup
    //   295: aload 9
    //   297: aload 9
    //   299: arraylength
    //   300: aload 10
    //   302: iload_2
    //   303: invokespecial 448	java/net/DatagramPacket:<init>	([BILjava/net/InetAddress;I)V
    //   306: astore 9
    //   308: aload 6
    //   310: astore 7
    //   312: aload 11
    //   314: aload_1
    //   315: iconst_0
    //   316: sipush 1032
    //   319: invokevirtual 464	java/net/DatagramPacket:setData	([BII)V
    //   322: aload 6
    //   324: astore 7
    //   326: invokestatic 357	java/lang/System:currentTimeMillis	()J
    //   329: lstore 4
    //   331: aload 6
    //   333: astore 7
    //   335: aload 6
    //   337: aload 9
    //   339: invokevirtual 452	java/net/DatagramSocket:send	(Ljava/net/DatagramPacket;)V
    //   342: aload 6
    //   344: astore 7
    //   346: aload 8
    //   348: iconst_0
    //   349: putfield 467	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:bigStatus	I
    //   352: aload 6
    //   354: astore 7
    //   356: aload 6
    //   358: aload 11
    //   360: invokevirtual 458	java/net/DatagramSocket:receive	(Ljava/net/DatagramPacket;)V
    //   363: aload 6
    //   365: astore 7
    //   367: aload 8
    //   369: invokestatic 357	java/lang/System:currentTimeMillis	()J
    //   372: lload 4
    //   374: lsub
    //   375: putfield 470	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:bigRtt	J
    //   378: aload 6
    //   380: invokevirtual 471	java/net/DatagramSocket:close	()V
    //   383: aload 8
    //   385: astore 6
    //   387: aload 6
    //   389: areturn
    //   390: astore 7
    //   392: aload 6
    //   394: astore 7
    //   396: aload 8
    //   398: iconst_1
    //   399: putfield 455	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:smallStatus	I
    //   402: aload 6
    //   404: astore 7
    //   406: ldc 24
    //   408: ldc_w 473
    //   411: invokestatic 404	com/mi/milink/sdk/debug/MiLinkLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   414: goto -132 -> 282
    //   417: astore_1
    //   418: aload 6
    //   420: astore_1
    //   421: aload 8
    //   423: iconst_1
    //   424: putfield 455	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:smallStatus	I
    //   427: aload 8
    //   429: iconst_1
    //   430: putfield 467	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:bigStatus	I
    //   433: ldc 24
    //   435: ldc_w 475
    //   438: invokestatic 404	com/mi/milink/sdk/debug/MiLinkLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   441: aload_1
    //   442: ifnull +151 -> 593
    //   445: aload_1
    //   446: invokevirtual 471	java/net/DatagramSocket:close	()V
    //   449: aload 8
    //   451: areturn
    //   452: astore 12
    //   454: aload 6
    //   456: astore 7
    //   458: aload 8
    //   460: iconst_1
    //   461: putfield 455	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:smallStatus	I
    //   464: aload 6
    //   466: astore 7
    //   468: ldc 24
    //   470: ldc_w 477
    //   473: aload 12
    //   475: invokestatic 413	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   478: goto -196 -> 282
    //   481: astore_1
    //   482: aload 6
    //   484: astore 7
    //   486: aload 8
    //   488: iconst_1
    //   489: putfield 455	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:smallStatus	I
    //   492: aload 6
    //   494: astore 7
    //   496: aload 8
    //   498: iconst_1
    //   499: putfield 467	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:bigStatus	I
    //   502: aload 6
    //   504: astore 7
    //   506: ldc 24
    //   508: ldc_w 479
    //   511: invokestatic 404	com/mi/milink/sdk/debug/MiLinkLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   514: aload 6
    //   516: ifnull +77 -> 593
    //   519: aload 6
    //   521: invokevirtual 471	java/net/DatagramSocket:close	()V
    //   524: aload 8
    //   526: areturn
    //   527: astore_1
    //   528: aload 6
    //   530: astore 7
    //   532: aload 8
    //   534: iconst_1
    //   535: putfield 467	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:bigStatus	I
    //   538: aload 6
    //   540: astore 7
    //   542: ldc 24
    //   544: ldc_w 481
    //   547: invokestatic 404	com/mi/milink/sdk/debug/MiLinkLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   550: goto -172 -> 378
    //   553: astore_1
    //   554: aload 7
    //   556: ifnull +8 -> 564
    //   559: aload 7
    //   561: invokevirtual 471	java/net/DatagramSocket:close	()V
    //   564: aload_1
    //   565: athrow
    //   566: astore_1
    //   567: aload 6
    //   569: astore 7
    //   571: aload 8
    //   573: iconst_1
    //   574: putfield 467	com/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo:bigStatus	I
    //   577: aload 6
    //   579: astore 7
    //   581: ldc 24
    //   583: ldc_w 483
    //   586: aload_1
    //   587: invokestatic 413	com/mi/milink/sdk/debug/MiLinkLog:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   590: goto -212 -> 378
    //   593: aload 8
    //   595: areturn
    //   596: ldc 24
    //   598: new 149	java/lang/StringBuilder
    //   601: dup
    //   602: ldc_w 485
    //   605: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   608: aload_1
    //   609: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   612: ldc_w 309
    //   615: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   618: iload_2
    //   619: invokevirtual 312	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   622: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   625: invokestatic 265	com/mi/milink/sdk/debug/MiLinkLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   628: aconst_null
    //   629: areturn
    //   630: ldc 24
    //   632: new 149	java/lang/StringBuilder
    //   635: dup
    //   636: ldc_w 487
    //   639: invokespecial 153	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   642: aload_1
    //   643: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   646: ldc_w 309
    //   649: invokevirtual 172	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   652: iload_2
    //   653: invokevirtual 312	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   656: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   659: invokestatic 265	com/mi/milink/sdk/debug/MiLinkLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   662: aconst_null
    //   663: areturn
    //   664: astore_1
    //   665: aconst_null
    //   666: astore 7
    //   668: goto -114 -> 554
    //   671: astore 6
    //   673: aload_1
    //   674: astore 7
    //   676: aload 6
    //   678: astore_1
    //   679: goto -125 -> 554
    //   682: astore_1
    //   683: aconst_null
    //   684: astore 6
    //   686: goto -204 -> 482
    //   689: astore_1
    //   690: aload 7
    //   692: astore_1
    //   693: goto -272 -> 421
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	696	0	this	SpeedTestManager
    //   0	696	1	paramString	String
    //   0	696	2	paramInt	int
    //   151	18	3	i	int
    //   233	140	4	l	long
    //   8	570	6	localObject1	Object
    //   671	6	6	localObject2	Object
    //   684	1	6	localObject3	Object
    //   1	365	7	localObject4	Object
    //   390	1	7	localSocketTimeoutException	SocketTimeoutException
    //   394	297	7	localObject5	Object
    //   4	590	8	localSpeedTestReportUdpTestInfo	SpeedTestReportUdpTestInfo
    //   49	289	9	localObject6	Object
    //   119	182	10	localInetAddress	InetAddress
    //   198	161	11	localDatagramPacket	java.net.DatagramPacket
    //   39	203	12	localObject7	Object
    //   452	22	12	localIOException	IOException
    // Exception table:
    //   from	to	target	type
    //   230	235	390	java/net/SocketTimeoutException
    //   239	246	390	java/net/SocketTimeoutException
    //   250	256	390	java/net/SocketTimeoutException
    //   260	267	390	java/net/SocketTimeoutException
    //   271	282	390	java/net/SocketTimeoutException
    //   115	121	417	java/net/UnknownHostException
    //   125	131	417	java/net/UnknownHostException
    //   135	141	417	java/net/UnknownHostException
    //   145	152	417	java/net/UnknownHostException
    //   156	162	417	java/net/UnknownHostException
    //   166	172	417	java/net/UnknownHostException
    //   176	182	417	java/net/UnknownHostException
    //   186	200	417	java/net/UnknownHostException
    //   209	226	417	java/net/UnknownHostException
    //   230	235	417	java/net/UnknownHostException
    //   239	246	417	java/net/UnknownHostException
    //   250	256	417	java/net/UnknownHostException
    //   260	267	417	java/net/UnknownHostException
    //   271	282	417	java/net/UnknownHostException
    //   291	308	417	java/net/UnknownHostException
    //   312	322	417	java/net/UnknownHostException
    //   326	331	417	java/net/UnknownHostException
    //   335	342	417	java/net/UnknownHostException
    //   346	352	417	java/net/UnknownHostException
    //   356	363	417	java/net/UnknownHostException
    //   367	378	417	java/net/UnknownHostException
    //   396	402	417	java/net/UnknownHostException
    //   406	414	417	java/net/UnknownHostException
    //   458	464	417	java/net/UnknownHostException
    //   468	478	417	java/net/UnknownHostException
    //   532	538	417	java/net/UnknownHostException
    //   542	550	417	java/net/UnknownHostException
    //   571	577	417	java/net/UnknownHostException
    //   581	590	417	java/net/UnknownHostException
    //   230	235	452	java/io/IOException
    //   239	246	452	java/io/IOException
    //   250	256	452	java/io/IOException
    //   260	267	452	java/io/IOException
    //   271	282	452	java/io/IOException
    //   115	121	481	java/net/SocketException
    //   125	131	481	java/net/SocketException
    //   135	141	481	java/net/SocketException
    //   145	152	481	java/net/SocketException
    //   156	162	481	java/net/SocketException
    //   166	172	481	java/net/SocketException
    //   176	182	481	java/net/SocketException
    //   186	200	481	java/net/SocketException
    //   209	226	481	java/net/SocketException
    //   230	235	481	java/net/SocketException
    //   239	246	481	java/net/SocketException
    //   250	256	481	java/net/SocketException
    //   260	267	481	java/net/SocketException
    //   271	282	481	java/net/SocketException
    //   291	308	481	java/net/SocketException
    //   312	322	481	java/net/SocketException
    //   326	331	481	java/net/SocketException
    //   335	342	481	java/net/SocketException
    //   346	352	481	java/net/SocketException
    //   356	363	481	java/net/SocketException
    //   367	378	481	java/net/SocketException
    //   396	402	481	java/net/SocketException
    //   406	414	481	java/net/SocketException
    //   458	464	481	java/net/SocketException
    //   468	478	481	java/net/SocketException
    //   532	538	481	java/net/SocketException
    //   542	550	481	java/net/SocketException
    //   571	577	481	java/net/SocketException
    //   581	590	481	java/net/SocketException
    //   326	331	527	java/net/SocketTimeoutException
    //   335	342	527	java/net/SocketTimeoutException
    //   346	352	527	java/net/SocketTimeoutException
    //   356	363	527	java/net/SocketTimeoutException
    //   367	378	527	java/net/SocketTimeoutException
    //   115	121	553	finally
    //   125	131	553	finally
    //   135	141	553	finally
    //   145	152	553	finally
    //   156	162	553	finally
    //   166	172	553	finally
    //   176	182	553	finally
    //   186	200	553	finally
    //   209	226	553	finally
    //   230	235	553	finally
    //   239	246	553	finally
    //   250	256	553	finally
    //   260	267	553	finally
    //   271	282	553	finally
    //   291	308	553	finally
    //   312	322	553	finally
    //   326	331	553	finally
    //   335	342	553	finally
    //   346	352	553	finally
    //   356	363	553	finally
    //   367	378	553	finally
    //   396	402	553	finally
    //   406	414	553	finally
    //   458	464	553	finally
    //   468	478	553	finally
    //   486	492	553	finally
    //   496	502	553	finally
    //   506	514	553	finally
    //   532	538	553	finally
    //   542	550	553	finally
    //   571	577	553	finally
    //   581	590	553	finally
    //   326	331	566	java/io/IOException
    //   335	342	566	java/io/IOException
    //   346	352	566	java/io/IOException
    //   356	363	566	java/io/IOException
    //   367	378	566	java/io/IOException
    //   102	111	664	finally
    //   421	441	671	finally
    //   102	111	682	java/net/SocketException
    //   102	111	689	java/net/UnknownHostException
  }
  
  private String toJson(ArrayList<SpeedTestReportTcpTestInfo> paramArrayList, ArrayList<SpeedTestReportUdpTestInfo> paramArrayList1)
  {
    int j = 0;
    JSONObject localJSONObject = new JSONObject();
    for (;;)
    {
      int i;
      try
      {
        localJSONObject.put("appid", String.valueOf(getSpeedTestAppId()));
        localJSONObject.put("vid", MiAccountManager.getInstance().getUserId());
        localJSONObject.put("cversion", String.valueOf(Global.getClientAppInfo().getVersionCode()));
        localJSONObject.put("mversion", String.valueOf(Global.getMiLinkVersion()));
        localJSONObject.put("sversion", "Android" + String.valueOf(Build.VERSION.RELEASE));
        localJSONObject.put("did", CommonUtils.miuiSHA1(DeviceDash.getInstance().getDeviceId()));
        localJSONObject.put("dinfo", Build.MODEL);
        localJSONObject.put("channel", Global.getClientAppInfo().getReleaseChannel());
        JSONArray localJSONArray = new JSONArray();
        if (paramArrayList == null) {
          break label271;
        }
        i = 0;
        if (i >= paramArrayList.size()) {
          break label271;
        }
        localJSONArray.put(((SpeedTestReportTcpTestInfo)paramArrayList.get(i)).toJSONObject());
        i += 1;
        continue;
        if (i < paramArrayList1.size())
        {
          localJSONArray.put(((SpeedTestReportUdpTestInfo)paramArrayList1.get(i)).toJSONObject());
          i += 1;
          continue;
        }
        if (localJSONArray.length() > 0)
        {
          localJSONObject.put("data", localJSONArray);
          paramArrayList = localJSONObject.toString();
          return paramArrayList;
        }
      }
      catch (JSONException paramArrayList)
      {
        MiLinkLog.e("SpeedTestManager", "toJson", paramArrayList);
      }
      return "";
      label271:
      if (paramArrayList1 != null) {
        i = j;
      }
    }
  }
  
  public void start()
  {
    for (;;)
    {
      try
      {
        if (!MiAccountManager.getInstance().appHasLogined())
        {
          MiLinkLog.w("SpeedTestManager", "speed test start, app not login");
          return;
        }
        MiLinkLog.w("SpeedTestManager", "speed test start");
        if (this.mState == 1)
        {
          MiLinkLog.i("SpeedTestManager", "speed test is in progress");
          continue;
        }
        this.mState = 1;
      }
      finally {}
      new Thread(new SpeedTestManager.1(this), "MilinkSpeedTest").start();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\speedtest\SpeedTestManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */