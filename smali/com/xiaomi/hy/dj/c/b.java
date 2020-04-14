package com.xiaomi.hy.dj.c;

import android.text.TextUtils;
import com.google.protobuf.ByteString;
import com.google.protobuf.GeneratedMessage;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.client.MiLinkChannelClient;
import com.mi.milink.sdk.client.MiLinkObserver;
import com.xiaomi.hy.dj.pb.HttpTransfer.NameValuePair;
import com.xiaomi.hy.dj.pb.HttpTransfer.NameValuePair.Builder;
import com.xiaomi.hy.dj.pb.HttpTransfer.RequestInfo;
import com.xiaomi.hy.dj.pb.HttpTransfer.RequestInfo.Builder;
import com.xiaomi.hy.dj.pb.HttpTransfer.ResponseInfo;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class b
{
  private static final int c = 1;
  private static final int d = 0;
  private static final int e = 1;
  private static final int f = 0;
  private static final int g = 15000;
  private static volatile b i;
  public MiLinkChannelClient a = new MiLinkChannelClient();
  MiLinkObserver b = new d(this);
  private boolean h;
  private long j = 0L;
  private byte[] k = new byte[0];
  
  public b()
  {
    this.a.setMilinkStateObserver(this.b);
    this.a.setEventListener(new c(this));
    this.j = System.currentTimeMillis();
    this.a.initUseChannelMode();
    c();
  }
  
  public static b a()
  {
    if (i == null) {}
    try
    {
      if (i == null) {
        i = new b();
      }
      return i;
    }
    finally {}
  }
  
  private boolean c()
  {
    if (this.h) {
      return true;
    }
    synchronized (this.k)
    {
      try
      {
        this.k.wait(5000L);
        return this.h;
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
  
  public PacketData a(String paramString, GeneratedMessage paramGeneratedMessage)
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
      paramGeneratedMessage = this.a.sendDataBySimpleChannel(localPacketData, 15000);
      localPacketData.setNeedCached(true);
      paramString = paramGeneratedMessage;
    } while (paramGeneratedMessage != null);
    return null;
  }
  
  public HttpTransfer.ResponseInfo a(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2)
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
        break label256;
      }
      localObject = paramString;
      if (paramMap2.size() <= 0) {
        break label256;
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
          break label347;
        }
      }
    }
    label256:
    label347:
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
    paramString.setCommand(a.a(str));
    paramString.setData(paramMap1.toByteArray());
    paramMap1 = this.a.sendDataBySimpleChannel(paramString, 15000);
    paramString.setNeedCached(true);
    paramString = null;
    if (paramMap1 != null) {
      paramString = HttpTransfer.ResponseInfo.parseFrom(paramMap1.getData());
    }
    return paramString;
  }
  
  public HttpTransfer.ResponseInfo a(String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte)
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
    paramArrayOfByte.setCommand(a.a(paramString));
    paramArrayOfByte.setData(paramMap.toByteArray());
    paramMap = this.a.sendDataBySimpleChannel(paramArrayOfByte, 15000);
    paramString = null;
    if (paramMap != null) {
      paramString = HttpTransfer.ResponseInfo.parseFrom(paramMap.getData());
    }
    return paramString;
  }
  
  public HttpTransfer.ResponseInfo b(String paramString, Map<String, String> paramMap1, Map<String, String> paramMap2)
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
    paramMap2.setCommand(a.a(paramString));
    paramMap2.setData(paramMap1.toByteArray());
    paramMap1 = this.a.sendDataBySimpleChannel(paramMap2, 15000);
    paramString = null;
    if (paramMap1 != null) {
      paramString = HttpTransfer.ResponseInfo.parseFrom(paramMap1.getData());
    }
    return paramString;
  }
  
  public boolean b()
  {
    return this.h;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\hy\dj\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */