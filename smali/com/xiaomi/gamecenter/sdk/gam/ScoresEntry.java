package com.xiaomi.gamecenter.sdk.gam;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ScoresEntry
  implements Parcelable
{
  public static final Parcelable.Creator<ScoresEntry> CREATOR = new e();
  private String scoreKey;
  private int scoreValue;
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getScoreKey()
  {
    return this.scoreKey;
  }
  
  public int getScoreValue()
  {
    return this.scoreValue;
  }
  
  public void setScoreKey(String paramString)
  {
    this.scoreKey = paramString;
  }
  
  public void setScoreValue(int paramInt)
  {
    this.scoreValue = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.scoreKey);
    paramParcel.writeInt(this.scoreValue);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\gam\ScoresEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */