package com.xiaomi.gamecenter.sdk.gam;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MiGamMessageResponse
  implements Parcelable
{
  public static final Parcelable.Creator<MiGamMessageResponse> CREATOR = new b();
  private String heartToken = "";
  private int index = 0;
  private MiliaoInfo miliaoInfo;
  private String msgResult;
  private int sdkStatus;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getHeartToken()
  {
    return this.heartToken;
  }
  
  public MiliaoInfo getMiliaoInfo()
  {
    return this.miliaoInfo;
  }
  
  public String getMsgResult()
  {
    return this.msgResult;
  }
  
  public int getSdkStatus()
  {
    return this.sdkStatus;
  }
  
  public void setMsgResult(String paramString)
  {
    this.msgResult = paramString;
  }
  
  public void setSdkStatus(int paramInt)
  {
    this.sdkStatus = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.index);
    paramParcel.writeInt(this.sdkStatus);
    paramParcel.writeString(this.msgResult);
    paramParcel.writeString(this.heartToken);
    paramParcel.writeParcelable(this.miliaoInfo, 0);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\gam\MiGamMessageResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */