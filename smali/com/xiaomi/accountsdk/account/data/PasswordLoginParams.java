package com.xiaomi.accountsdk.account.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PasswordLoginParams
  implements Parcelable
{
  public static final Parcelable.Creator<PasswordLoginParams> CREATOR = new g();
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public String f;
  public String g;
  public MetaLoginData h;
  public boolean i;
  public boolean j;
  public String[] k;
  public ActivatorPhoneInfo l;
  
  public PasswordLoginParams(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    paramParcel = paramParcel.readBundle();
    if (paramParcel != null)
    {
      this.f = paramParcel.getString("deviceId");
      this.g = paramParcel.getString("ticketToken");
      this.h = ((MetaLoginData)paramParcel.getParcelable("metaLoginData"));
      this.i = paramParcel.getBoolean("returnStsUrl", false);
      this.j = paramParcel.getBoolean("needProcessNotification", true);
      this.k = paramParcel.getStringArray("hashedEnvFactors");
      this.l = ((ActivatorPhoneInfo)paramParcel.getParcelable("activatorPhoneInfo"));
    }
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
    paramParcel.writeString(this.e);
    Bundle localBundle = new Bundle();
    localBundle.putString("deviceId", this.f);
    localBundle.putString("ticketToken", this.g);
    localBundle.putParcelable("metaLoginData", this.h);
    localBundle.putBoolean("returnStsUrl", this.i);
    localBundle.putBoolean("needProcessNotification", this.j);
    localBundle.putStringArray("hashedEnvFactors", this.k);
    localBundle.putParcelable("activatorPhoneInfo", this.l);
    paramParcel.writeBundle(localBundle);
  }
  
  public static class Builder
  {
    private boolean a = false;
    private boolean b = true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\PasswordLoginParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */