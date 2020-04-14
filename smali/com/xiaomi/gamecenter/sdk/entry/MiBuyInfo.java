package com.xiaomi.gamecenter.sdk.entry;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class MiBuyInfo
  implements Parcelable
{
  public static final Parcelable.Creator<MiBuyInfo> CREATOR = new j();
  private int amount = 0;
  private int count;
  private String cpOrderId;
  private String cpUserInfo;
  private Bundle extraInfo;
  private int miBuyInfoVersion = 1;
  private String productCode;
  private String purchaseName;
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getAmount()
  {
    return this.amount;
  }
  
  public int getCount()
  {
    return this.count;
  }
  
  public String getCpOrderId()
  {
    return this.cpOrderId;
  }
  
  public String getCpUserInfo()
  {
    return this.cpUserInfo;
  }
  
  public Bundle getExtraInfo()
  {
    return this.extraInfo;
  }
  
  public int getMiBuyInfoVersion()
  {
    return this.miBuyInfoVersion;
  }
  
  public String getProductCode()
  {
    return this.productCode;
  }
  
  public String getPurchaseName()
  {
    return this.purchaseName;
  }
  
  public boolean isValid()
  {
    return (!TextUtils.isEmpty(this.cpOrderId)) && (this.count <= 9999) && (this.amount <= 20000);
  }
  
  public void setAmount(int paramInt)
  {
    this.amount = paramInt;
  }
  
  public void setCount(int paramInt)
  {
    this.count = paramInt;
  }
  
  public void setCpOrderId(String paramString)
  {
    this.cpOrderId = paramString;
  }
  
  public void setCpUserInfo(String paramString)
  {
    this.cpUserInfo = paramString;
  }
  
  public void setExtraInfo(Bundle paramBundle)
  {
    this.extraInfo = paramBundle;
  }
  
  public void setMiBuyInfoVersion(int paramInt)
  {
    this.miBuyInfoVersion = paramInt;
  }
  
  public void setProductCode(String paramString)
  {
    this.productCode = paramString;
  }
  
  public void setPurchaseName(String paramString)
  {
    this.purchaseName = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.miBuyInfoVersion);
    paramParcel.writeString(this.cpOrderId);
    paramParcel.writeString(this.productCode);
    paramParcel.writeInt(this.count);
    paramParcel.writeString(this.cpUserInfo);
    paramParcel.writeInt(this.amount);
    paramParcel.writeBundle(this.extraInfo);
    if (this.miBuyInfoVersion > 0) {
      paramParcel.writeString(this.purchaseName);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\MiBuyInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */