package com.xiaomi.gamecenter.sdk.milink;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import cn.com.wali.basetool.io.QHttpRequest;
import cn.com.wali.basetool.utils.Pair;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessage;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.client.MiLinkObserver;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.xiaomi.gamecenter.milink.msg.HttpTransfer.NameValuePair;
import org.xiaomi.gamecenter.milink.msg.HttpTransfer.NameValuePair.Builder;
import org.xiaomi.gamecenter.milink.msg.HttpTransfer.RequestInfo;
import org.xiaomi.gamecenter.milink.msg.HttpTransfer.RequestInfo.Builder;
import org.xiaomi.gamecenter.milink.msg.HttpTransfer.ResponseInfo;

public class MiLinkManager
{
  private static final int GET = 0;
  private static final int HTTP = 0;
  private static final int HTTPS = 1;
  public static final int MILINK_APPID = 20002;
  private static final int MSG_EVENT_GETSERVICETOKEN = 10000;
  private static final int MSG_EVENT_INVALIDPACKET = 10003;
  private static final int MSG_EVENT_KICKEDBYSERVER = 10004;
  private static final int MSG_EVENT_SERVICETOKENEXPIRED = 10001;
  private static final int MSG_EVENT_SHOULDCHECKUPDATE = 10002;
  private static final int MSG_OBSERVER_INTERNALERROR = 10006;
  private static final int MSG_OBSERVER_SERVERSTATEUPDATE = 10008;
  private static final int MSG_OBSERVER_SERVICECONNECTED = 10007;
  private static final int MSG_OBSERVER_SUICIDETIME = 10005;
  private static final int POST = 1;
  private static final int TIME_OUT = 15000;
  private static volatile MiLinkManager mInstance;
  public static boolean needOnlyUseHttp = false;
  private boolean firstLogined = false;
  private boolean isMilinkLogined;
  private ReportHandler mHandler = new ReportHandler();
  private byte[] mLock = new byte[0];
  public CustomMiLinkChannelClient miLinkChannelClient = new CustomMiLinkChannelClient();
  MiLinkObserver mob = new e(this);
  private long reportTime = 0L;
  
  public MiLinkManager()
  {
    this.miLinkChannelClient.setMilinkStateObserver(this.mob);
    this.miLinkChannelClient.setEventListener(new d(this));
    this.reportTime = System.currentTimeMillis();
    this.miLinkChannelClient.initUseChannelMode();
    ensureMilinkLogined();
  }
  
  private boolean ensureMilinkLogined()
  {
    if (this.isMilinkLogined) {
      return true;
    }
    synchronized (this.mLock)
    {
      try
      {
        this.mLock.wait(5000L);
        return this.isMilinkLogined;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
  
  public static MiLinkManager getInstance()
  {
    if (mInstance == null) {}
    try
    {
      if (mInstance == null) {
        mInstance = new MiLinkManager();
      }
      return mInstance;
    }
    finally {}
  }
  
  private void sendReportMsg(long paramLong, int paramInt1, int paramInt2) {}
  
  public boolean isMilinkLogined()
  {
    return this.isMilinkLogined;
  }
  
  public PacketData sendDataByChannel(PacketData paramPacketData)
  {
    return this.miLinkChannelClient.sendDataBySimpleChannel(paramPacketData, 15000);
  }
  
  public PacketData sendMilinkRequest(String paramString, GeneratedMessage paramGeneratedMessage)
    throws IOException
  {
    if ((paramGeneratedMessage == null) || (TextUtils.isEmpty(paramString))) {
      paramString = null;
    }
    do
    {
      return paramString;
      PacketData localPacketData = new PacketData();
      localPacketData.setCommand(paramString);
      localPacketData.setData(paramGeneratedMessage.toByteArray());
      paramGeneratedMessage = this.miLinkChannelClient.sendDataBySimpleChannel(localPacketData, 15000);
      localPacketData.setNeedCached(true);
      paramString = paramGeneratedMessage;
    } while (paramGeneratedMessage != null);
    return null;
  }
  
  public PacketData sendSyncGet(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2)
    throws IOException
  {
    HttpTransfer.RequestInfo.Builder localBuilder = HttpTransfer.RequestInfo.newBuilder();
    localBuilder.setMethod(0);
    if (paramString.startsWith("https")) {
      localBuilder.setProtocol(1);
    }
    StringBuilder localStringBuilder;
    for (;;)
    {
      Object localObject = paramString;
      if (paramMap2 == null) {
        break label259;
      }
      localObject = paramString;
      if (paramMap2.size() <= 0) {
        break label259;
      }
      localStringBuilder = new StringBuilder();
      paramMap2 = paramMap2.entrySet().iterator();
      while (paramMap2.hasNext())
      {
        localObject = (Map.Entry)paramMap2.next();
        if (localStringBuilder.length() > 0) {
          localStringBuilder.append("&");
        }
        localStringBuilder.append((String)((Map.Entry)localObject).getKey());
        localStringBuilder.append("=");
        try
        {
          localStringBuilder.append(URLEncoder.encode((String)((Map.Entry)localObject).getValue(), "UTF-8"));
        }
        catch (Exception localException) {}
      }
      localBuilder.setProtocol(0);
    }
    String str = paramString;
    if (!localStringBuilder.toString().equals(""))
    {
      str = paramString;
      if (!localStringBuilder.toString().equals("?"))
      {
        paramMap2 = new StringBuilder().append(paramString);
        if (!paramString.contains("?")) {
          break label350;
        }
      }
    }
    label259:
    label350:
    for (paramString = "&";; paramString = "?")
    {
      paramString = paramString;
      str = paramString + localStringBuilder.toString();
      localBuilder.setUrl(str);
      if ((paramMap1 == null) || (paramMap1.size() <= 0)) {
        break;
      }
      paramString = paramMap1.entrySet().iterator();
      while (paramString.hasNext())
      {
        paramMap1 = (Map.Entry)paramString.next();
        localBuilder.addHeaders(HttpTransfer.NameValuePair.newBuilder().setName((String)paramMap1.getKey()).setValue((String)paramMap1.getValue()).build());
      }
    }
    paramMap1 = localBuilder.build();
    paramString = new PacketData();
    paramString.setCommand(MiLinkCommand.a(str));
    paramString.setData(paramMap1.toByteArray());
    paramMap1 = this.miLinkChannelClient.sendDataBySimpleChannel(paramString, 15000);
    paramString.setNeedCached(true);
    return paramMap1;
  }
  
  public PacketData sendSyncHttpTransfer(String paramString, QHttpRequest paramQHttpRequest, boolean paramBoolean)
    throws IOException
  {
    HashMap localHashMap = new HashMap();
    Object localObject = paramQHttpRequest.b();
    if ((localObject != null) && (((ArrayList)localObject).size() > 0))
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        Pair localPair = (Pair)((Iterator)localObject).next();
        if ((!TextUtils.isEmpty((CharSequence)localPair.getKey())) && (!TextUtils.isEmpty((CharSequence)localPair.getValue()))) {
          localHashMap.put(localPair.getKey(), localPair.getValue());
        }
      }
    }
    if (paramBoolean) {
      localHashMap.put("Content-Encoding", "gzip");
    }
    if (!TextUtils.isEmpty(paramQHttpRequest.c())) {
      localHashMap.put("Content-Type", paramQHttpRequest.c());
    }
    if ((paramQHttpRequest.a() != null) && (paramQHttpRequest.a().length > 0)) {
      return getInstance().sendSyncPostBytes(paramString, localHashMap, paramQHttpRequest.a());
    }
    return getInstance().sendSyncGet(paramString, localHashMap, null);
  }
  
  public HttpTransfer.ResponseInfo sendSyncPost(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2)
    throws IOException
  {
    HttpTransfer.RequestInfo.Builder localBuilder = HttpTransfer.RequestInfo.newBuilder();
    localBuilder.setUrl(paramString);
    localBuilder.setMethod(1);
    if (paramString.startsWith("https")) {
      localBuilder.setProtocol(1);
    }
    while ((paramMap2 != null) && (paramMap2.size() > 0))
    {
      paramMap2 = paramMap2.entrySet().iterator();
      while (paramMap2.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap2.next();
        localBuilder.addParams(HttpTransfer.NameValuePair.newBuilder().setName((String)localEntry.getKey()).setValue((String)localEntry.getValue()).build());
      }
      localBuilder.setProtocol(0);
    }
    if ((paramMap1 != null) && (paramMap1.size() > 0))
    {
      paramMap1 = paramMap1.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        paramMap2 = (Map.Entry)paramMap1.next();
        localBuilder.addHeaders(HttpTransfer.NameValuePair.newBuilder().setName((String)paramMap2.getKey()).setValue((String)paramMap2.getValue()).build());
      }
    }
    paramMap1 = localBuilder.build();
    paramMap2 = new PacketData();
    paramMap2.setCommand(MiLinkCommand.a(paramString));
    paramMap2.setData(paramMap1.toByteArray());
    paramMap1 = this.miLinkChannelClient.sendDataBySimpleChannel(paramMap2, 15000);
    paramString = null;
    if (paramMap1 != null) {
      paramString = HttpTransfer.ResponseInfo.parseFrom(paramMap1.getData());
    }
    return paramString;
  }
  
  public PacketData sendSyncPostBytes(String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte)
    throws IOException
  {
    HttpTransfer.RequestInfo.Builder localBuilder = HttpTransfer.RequestInfo.newBuilder();
    localBuilder.setUrl(paramString);
    localBuilder.setMethod(1);
    if (paramString.startsWith("https")) {
      localBuilder.setProtocol(1);
    }
    for (;;)
    {
      if ((paramArrayOfByte != null) && (paramArrayOfByte.length > 0)) {
        localBuilder.setByteArrayEntity(ByteString.copyFrom(paramArrayOfByte));
      }
      if ((paramMap == null) || (paramMap.size() <= 0)) {
        break;
      }
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        paramArrayOfByte = (Map.Entry)paramMap.next();
        localBuilder.addHeaders(HttpTransfer.NameValuePair.newBuilder().setName((String)paramArrayOfByte.getKey()).setValue((String)paramArrayOfByte.getValue()).build());
      }
      localBuilder.setProtocol(0);
    }
    paramMap = localBuilder.build();
    paramArrayOfByte = new PacketData();
    paramArrayOfByte.setCommand(MiLinkCommand.a(paramString));
    paramArrayOfByte.setData(paramMap.toByteArray());
    return this.miLinkChannelClient.sendDataBySimpleChannel(paramArrayOfByte, 15000);
  }
  
  /* Error */
  public boolean uploadMilinkLog()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 81	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:miLinkChannelClient	Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;
    //   6: ifnull +16 -> 22
    //   9: aload_0
    //   10: getfield 81	com/xiaomi/gamecenter/sdk/milink/MiLinkManager:miLinkChannelClient	Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;
    //   13: iconst_1
    //   14: invokevirtual 385	com/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient:uploadMilinkLog	(Z)Z
    //   17: istore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: iload_1
    //   21: ireturn
    //   22: iconst_0
    //   23: istore_1
    //   24: goto -6 -> 18
    //   27: astore_2
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_2
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	MiLinkManager
    //   17	7	1	bool	boolean
    //   27	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	18	27	finally
  }
  
  class ReportHandler
    extends Handler
  {
    public ReportHandler()
    {
      super();
    }
    
    public void dispatchMessage(Message paramMessage)
    {
      super.dispatchMessage(paramMessage);
      long l = ((Long)paramMessage.obj).longValue();
      int i = paramMessage.arg1;
      ReporterUtils.getInstance().reportMilink(l, i, null);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MiLinkManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */