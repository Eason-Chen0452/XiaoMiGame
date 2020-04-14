package com.xiaomi.gamecenter.sdk.entry;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ServiceInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ServiceInfo> CREATOR = new n();
  private String imei;
  private String imeiMd5;
  private String imsi;
  private String mac;
  private String ua;
  private String unionId;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getImei()
  {
    return this.imei;
  }
  
  public String getImeiMd5()
  {
    return this.imeiMd5;
  }
  
  public String getImsi()
  {
    return this.imsi;
  }
  
  public String getMac()
  {
    return this.mac;
  }
  
  public String getUa()
  {
    return this.ua;
  }
  
  public String getUnionId()
  {
    return this.unionId;
  }
  
  public void setImei(String paramString)
  {
    this.imei = paramString;
  }
  
  public void setImeiMd5(String paramString)
  {
    this.imeiMd5 = paramString;
  }
  
  public void setImsi(String paramString)
  {
    this.imsi = paramString;
  }
  
  public void setMac(String paramString)
  {
    this.mac = paramString;
  }
  
  public void setUa(String paramString)
  {
    this.ua = paramString;
  }
  
  public void setUnionId(String paramString)
  {
    this.unionId = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.imei);
    paramParcel.writeString(this.imsi);
    paramParcel.writeString(this.mac);
    paramParcel.writeString(this.imeiMd5);
    paramParcel.writeString(this.ua);
    paramParcel.writeString(this.unionId);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\ServiceInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */