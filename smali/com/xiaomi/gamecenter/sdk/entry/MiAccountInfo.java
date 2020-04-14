package com.xiaomi.gamecenter.sdk.entry;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MiAccountInfo
  implements Parcelable
{
  public static final Parcelable.Creator<MiAccountInfo> CREATOR = new g();
  private String nikename;
  private String sessionId;
  private long uid;
  
  public MiAccountInfo() {}
  
  public MiAccountInfo(long paramLong, String paramString1, String paramString2)
  {
    this.uid = paramLong;
    this.sessionId = paramString1;
    this.nikename = paramString2;
  }
  
  public static Parcelable.Creator<MiAccountInfo> getCreator()
  {
    return CREATOR;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getNikename()
  {
    return this.nikename;
  }
  
  public String getSessionId()
  {
    return this.sessionId;
  }
  
  public String getUid()
  {
    return String.valueOf(this.uid);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.uid);
    paramParcel.writeString(this.sessionId);
    paramParcel.writeString(this.nikename);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\MiAccountInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */