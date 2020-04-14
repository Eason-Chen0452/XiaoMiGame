package com.xiaomi.accountsdk.account.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class NotificationLoginEndParams
  implements Parcelable
{
  public static final Parcelable.Creator<NotificationLoginEndParams> CREATOR = new f();
  public final String a;
  public final String b;
  public final String c;
  
  public NotificationLoginEndParams(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
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
  }
  
  public static class Builder {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\NotificationLoginEndParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */