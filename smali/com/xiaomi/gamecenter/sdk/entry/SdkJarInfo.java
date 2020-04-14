package com.xiaomi.gamecenter.sdk.entry;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class SdkJarInfo
  implements Parcelable
{
  public static final Parcelable.Creator<SdkJarInfo> CREATOR = new m();
  private MiAppInfo appInfo;
  private int appVersionCode;
  private String appVersionName;
  private String packageName;
  private String sdkVersion;
  
  public int describeContents()
  {
    return 0;
  }
  
  public MiAppInfo getAppInfo()
  {
    return this.appInfo;
  }
  
  public int getAppVersionCode()
  {
    return this.appVersionCode;
  }
  
  public String getAppVersionName()
  {
    return this.appVersionName;
  }
  
  public String getPackageName()
  {
    return this.packageName;
  }
  
  public String getSdkVersion()
  {
    return this.sdkVersion;
  }
  
  public void setAppInfo(MiAppInfo paramMiAppInfo)
  {
    this.appInfo = paramMiAppInfo;
  }
  
  public void setAppVersionCode(int paramInt)
  {
    this.appVersionCode = paramInt;
  }
  
  public void setAppVersionName(String paramString)
  {
    this.appVersionName = paramString;
  }
  
  public void setPackageName(String paramString)
  {
    this.packageName = paramString;
  }
  
  public void setSdkVersion(String paramString)
  {
    this.sdkVersion = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.sdkVersion);
    paramParcel.writeString(this.packageName);
    paramParcel.writeInt(this.appVersionCode);
    paramParcel.writeString(this.appVersionName);
    paramParcel.writeParcelable(this.appInfo, paramInt);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\SdkJarInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */