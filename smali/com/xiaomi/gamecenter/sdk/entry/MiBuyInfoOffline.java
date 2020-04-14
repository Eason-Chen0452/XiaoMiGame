package com.xiaomi.gamecenter.sdk.entry;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class MiBuyInfoOffline
  implements Parcelable
{
  public static final Parcelable.Creator<MiBuyInfoOffline> CREATOR = new k();
  private int count;
  private String cpOrderId;
  private String productCode;
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getCount()
  {
    return this.count;
  }
  
  public String getCpOrderId()
  {
    return this.cpOrderId;
  }
  
  public String getProductCode()
  {
    return this.productCode;
  }
  
  public boolean isValid()
  {
    return (!TextUtils.isEmpty(this.productCode)) && (!TextUtils.isEmpty(this.cpOrderId)) && (this.count > 0) && (this.count <= 9999);
  }
  
  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }
  
  public void setCpOrderId(String paramString)
  {
    this.cpOrderId = paramString;
  }
  
  public void setProductCode(String paramString)
  {
    this.productCode = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getCpOrderId());
    paramParcel.writeString(getProductCode());
    paramParcel.writeInt(getCount());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\MiBuyInfoOffline.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */