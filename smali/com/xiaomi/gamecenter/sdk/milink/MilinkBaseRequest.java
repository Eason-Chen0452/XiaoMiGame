package com.xiaomi.gamecenter.sdk.milink;

import android.content.Context;
import cn.com.wali.basetool.log.Logger;
import cn.com.wali.basetool.utils.SystemConfig;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milink.sdk.aidl.PacketData;
import com.xiaomi.gamecenter.sdk.entry.MiAppEntry;
import com.xiaomi.gamecenter.sdk.utils.ReporterUtils;

public abstract class MilinkBaseRequest
{
  protected GeneratedMessage a;
  protected GeneratedMessage b;
  protected Context c;
  protected MiAppEntry d;
  protected int e = -1;
  private String f;
  
  public MilinkBaseRequest(Context paramContext, String paramString, MiAppEntry paramMiAppEntry)
  {
    this.c = paramContext;
    this.f = paramString;
    this.d = paramMiAppEntry;
  }
  
  private GeneratedMessage b()
  {
    for (;;)
    {
      try
      {
        if (this.a == null)
        {
          if (!Logger.a) {
            break label527;
          }
          Logger.d("request is null");
          return null;
        }
        l1 = System.currentTimeMillis();
        localObject = MiLinkManager.getInstance();
        PacketData localPacketData = new PacketData();
        localPacketData.setCommand(this.f);
        localPacketData.setData(this.a.toByteArray());
        if (Logger.a) {
          Logger.d("milink request :(" + this.f + ")\n" + this.a.toString());
        }
        localObject = ((MiLinkManager)localObject).sendDataByChannel(localPacketData);
        long l2 = System.currentTimeMillis();
        if (SystemConfig.e(this.c))
        {
          i = 1;
          l1 = l2 - l1;
          ReporterUtils.getInstance().xmsdkReport(7518, l1 + "|" + i);
          if (localObject == null) {
            continue;
          }
          int j = ((PacketData)localObject).getBusiCode();
          switch (j)
          {
          }
        }
      }
      catch (Exception localException)
      {
        long l1;
        Object localObject;
        int i;
        localException.printStackTrace();
        continue;
        ReporterUtils.getInstance().xmsdkReport(7521, l1 + "|" + i);
        continue;
        ReporterUtils.getInstance().xmsdkReport(7519, l1 + "|" + i);
        continue;
        if (!Logger.a) {
          continue;
        }
        Logger.d("requestCommand:" + this.f + "-----response is null");
        ReporterUtils.getInstance().xmsdkReport(7522, l1 + "|" + i);
        continue;
      }
      try
      {
        this.b = a(((PacketData)localObject).getData());
        if (Logger.a) {
          Logger.d("milink response :(" + this.f + ")\n" + this.b.toString());
        }
        if (this.b != null)
        {
          if (Logger.a) {
            Logger.d("response code========>：" + this.e);
          }
          if ((this.e == 200) || (this.e == 0))
          {
            ReporterUtils.getInstance().xmsdkReport(7520, l1 + "|" + i);
            return this.b;
            i = 2;
          }
        }
      }
      catch (InvalidProtocolBufferException localInvalidProtocolBufferException)
      {
        Logger.a(null, "", localInvalidProtocolBufferException);
      }
    }
    label527:
    return null;
  }
  
  public final GeneratedMessage a()
  {
    b();
    if (this.b != null) {
      Logger.b("responseCode:" + this.e + ",command:" + this.f);
    }
    return this.b;
  }
  
  public abstract GeneratedMessage a(byte[] paramArrayOfByte)
    throws InvalidProtocolBufferException;
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\MilinkBaseRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */