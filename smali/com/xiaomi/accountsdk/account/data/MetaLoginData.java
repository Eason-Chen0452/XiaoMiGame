package com.xiaomi.accountsdk.account.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MetaLoginData
  implements Parcelable
{
  public static final Parcelable.Creator<MetaLoginData> CREATOR = new c();
  public final String a;
  public final String b;
  public final String c;
  
  public MetaLoginData(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
  }
  
  public MetaLoginData(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
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
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\MetaLoginData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */