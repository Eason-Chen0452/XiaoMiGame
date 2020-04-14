package com.xiaomi.accountsdk.account.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Step2LoginParams
  implements Parcelable
{
  public static final Parcelable.Creator<Step2LoginParams> CREATOR = new l();
  public final MetaLoginData a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final boolean f;
  public String g;
  public boolean h;
  
  public Step2LoginParams(Parcel paramParcel)
  {
    this.b = paramParcel.readString();
    this.d = paramParcel.readString();
    this.c = paramParcel.readString();
    this.e = paramParcel.readString();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.f = bool;
      this.a = ((MetaLoginData)paramParcel.readParcelable(MetaLoginData.class.getClassLoader()));
      paramParcel = paramParcel.readBundle();
      if (paramParcel != null)
      {
        this.h = paramParcel.getBoolean("returnStsUrl", false);
        this.g = paramParcel.getString("deviceId");
      }
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.e);
    if (this.f) {}
    for (int i = 1;; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeParcelable(this.a, paramInt);
      Bundle localBundle = new Bundle();
      localBundle.putBoolean("returnStsUrl", this.h);
      localBundle.putString("deviceId", this.g);
      paramParcel.writeBundle(localBundle);
      return;
    }
  }
  
  public static class Builder {}
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\Step2LoginParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */