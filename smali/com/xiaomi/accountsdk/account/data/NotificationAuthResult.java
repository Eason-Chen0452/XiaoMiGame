package com.xiaomi.accountsdk.account.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class NotificationAuthResult
  implements Parcelable
{
  public static final Parcelable.Creator<NotificationAuthResult> CREATOR = new e();
  public String a;
  public String b;
  public String c;
  public String d;
  
  public NotificationAuthResult(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
  }
  
  public static class Builder {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\NotificationAuthResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */