package com.xiaomi.gamecenter.gamesdk.datasdk.bean;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.gamecenter.gamesdk.datasdk.b.b;

public class HBean
  extends BaseEntity
{
  private String android;
  private String carrier;
  private String cid;
  private String clientVersion;
  private String devAppId;
  private String extra;
  private String fuid;
  private String imeiMd5;
  private String imeiSha1;
  private String imeiSha2;
  private String lang;
  private Long localTime;
  private String network;
  private String oaid;
  private String os;
  private String region;
  private String sdkJarVersion;
  private String sdkServiceVersion;
  private Integer sdkType;
  private String serverTime;
  private String timeZone;
  private String ua;
  private String udid;
  private String unionId;
  
  public String getAndroid()
  {
    return this.android;
  }
  
  public String getCarrier()
  {
    return this.carrier;
  }
  
  public String getCid()
  {
    return this.cid;
  }
  
  public String getClientVersion()
  {
    return this.clientVersion;
  }
  
  public String getDevAppId()
  {
    return this.devAppId;
  }
  
  public String getExtra()
  {
    return this.extra;
  }
  
  public String getFuid()
  {
    return this.fuid;
  }
  
  public String getImeiMd5()
  {
    return this.imeiMd5;
  }
  
  public String getImeiSha1()
  {
    return this.imeiSha1;
  }
  
  public String getImeiSha2()
  {
    return this.imeiSha2;
  }
  
  public String getLang()
  {
    return this.lang;
  }
  
  public Long getLocalTime()
  {
    return this.localTime;
  }
  
  public String getNetwork()
  {
    return this.network;
  }
  
  public String getOaid()
  {
    return this.oaid;
  }
  
  public String getOs()
  {
    return this.os;
  }
  
  public String getRegion()
  {
    return this.region;
  }
  
  public String getSdkJarVersion()
  {
    return this.sdkJarVersion;
  }
  
  public String getSdkServiceVersion()
  {
    return this.sdkServiceVersion;
  }
  
  public Integer getSdkType()
  {
    return this.sdkType;
  }
  
  public String getServerTime()
  {
    return this.serverTime;
  }
  
  public String getTimeZone()
  {
    return this.timeZone;
  }
  
  public String getUa()
  {
    return this.ua;
  }
  
  public String getUdid()
  {
    return this.udid;
  }
  
  public String getUnionId()
  {
    return this.unionId;
  }
  
  public void init(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      b.a(paramContext);
      this.imeiMd5 = paramString1;
      if (TextUtils.isEmpty(this.imeiMd5)) {
        this.imeiMd5 = b.l;
      }
      this.imeiSha1 = paramString2;
      if (TextUtils.isEmpty(this.imeiSha1)) {
        this.imeiSha1 = b.j;
      }
      this.ua = paramString3;
      if (TextUtils.isEmpty(paramString3)) {
        this.ua = b.m;
      }
      this.udid = b.q;
      this.oaid = b.r;
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public void setAndroid(String paramString)
  {
    this.android = paramString;
  }
  
  public void setCarrier(String paramString)
  {
    this.carrier = paramString;
  }
  
  public void setCid(String paramString)
  {
    this.cid = paramString;
  }
  
  public void setClientVersion(String paramString)
  {
    this.clientVersion = paramString;
  }
  
  public void setDevAppId(String paramString)
  {
    this.devAppId = paramString;
  }
  
  public void setExtra(String paramString)
  {
    this.extra = paramString;
  }
  
  public void setFuid(String paramString)
  {
    this.fuid = paramString;
  }
  
  public void setImeiMd5(String paramString)
  {
    this.imeiMd5 = paramString;
  }
  
  public void setImeiSha1(String paramString)
  {
    this.imeiSha1 = paramString;
  }
  
  public void setImeiSha2(String paramString)
  {
    this.imeiSha2 = paramString;
  }
  
  public void setLang(String paramString)
  {
    this.lang = paramString;
  }
  
  public void setLocalTime(Long paramLong)
  {
    this.localTime = paramLong;
  }
  
  public void setNetwork(String paramString)
  {
    this.network = paramString;
  }
  
  public void setOaid(String paramString)
  {
    this.oaid = paramString;
  }
  
  public void setOs(String paramString)
  {
    this.os = paramString;
  }
  
  public void setRegion(String paramString)
  {
    this.region = paramString;
  }
  
  public void setSdkJarVersion(String paramString)
  {
    this.sdkJarVersion = paramString;
  }
  
  public void setSdkServiceVersion(String paramString)
  {
    this.sdkServiceVersion = paramString;
  }
  
  public void setSdkType(Integer paramInteger)
  {
    this.sdkType = paramInteger;
  }
  
  public void setServerTime(String paramString)
  {
    this.serverTime = paramString;
  }
  
  public void setTimeZone(String paramString)
  {
    this.timeZone = paramString;
  }
  
  public void setUa(String paramString)
  {
    this.ua = paramString;
  }
  
  public void setUdid(String paramString)
  {
    this.udid = paramString;
  }
  
  public void setUnionId(String paramString)
  {
    this.unionId = paramString;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\gamesdk\datasdk\bean\HBean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */