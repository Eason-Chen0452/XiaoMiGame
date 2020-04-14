package com.xiaomi.gamecenter.sdk.entry;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class MiBuyInfoOnline
  implements Parcelable
{
  public static final Parcelable.Creator<MiBuyInfoOnline> CREATOR = new l();
  private String cpOrderId;
  private String cpUserInfo;
  private int mili;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCpOrderId()
  {
    return this.cpOrderId;
  }
  
  public String getCpUserInfo()
  {
    return this.cpUserInfo;
  }
  
  public int getMili()
  {
    return this.mili;
  }
  
  public boolean isValid()
  {
    return (!TextUtils.isEmpty(this.cpOrderId)) && (this.mili > 0) && (this.mili <= 20000);
  }
  
  public void setCpOrderId(String paramString)
  {
    this.cpOrderId = paramString;
  }
  
  public void setCpUserInfo(String paramString)
  {
    this.cpUserInfo = paramString;
  }
  
  public void setMiBi(int paramInt)
  {
    this.mili = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getCpOrderId());
    paramParcel.writeInt(getMili());
    paramParcel.writeString(getCpUserInfo());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\MiBuyInfoOnline.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */