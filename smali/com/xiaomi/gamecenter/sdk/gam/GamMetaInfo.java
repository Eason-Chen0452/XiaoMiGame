package com.xiaomi.gamecenter.sdk.gam;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class GamMetaInfo
  implements Parcelable
{
  public static final Parcelable.Creator<GamMetaInfo> CREATOR = new a();
  private String executeurl;
  private String os;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getExecuteurl()
  {
    return this.executeurl;
  }
  
  public String getOs()
  {
    return this.os;
  }
  
  public void setExecuteurl(String paramString)
  {
    this.executeurl = paramString;
  }
  
  public void setOs(String paramString)
  {
    this.os = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.os);
    paramParcel.writeString(this.executeurl);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\gam\GamMetaInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */