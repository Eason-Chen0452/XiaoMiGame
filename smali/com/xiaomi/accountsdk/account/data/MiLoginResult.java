package com.xiaomi.accountsdk.account.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MiLoginResult
  implements Parcelable
{
  public static final Parcelable.Creator<MiLoginResult> CREATOR = new d();
  public final String a;
  public final String b;
  public final AccountInfo c;
  public final String d;
  public final String e;
  public final MetaLoginData f;
  public final String g;
  public final int h;
  public final boolean i;
  public boolean j;
  
  public MiLoginResult(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = ((AccountInfo)paramParcel.readParcelable(AccountInfo.class.getClassLoader()));
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = ((MetaLoginData)paramParcel.readParcelable(MetaLoginData.class.getClassLoader()));
    this.g = paramParcel.readString();
    this.h = paramParcel.readInt();
    paramParcel = paramParcel.readBundle();
    if (paramParcel != null)
    {
      bool = paramParcel.getBoolean("has_pwd");
      this.i = bool;
      if (paramParcel == null) {
        break label127;
      }
    }
    label127:
    for (boolean bool = paramParcel.getBoolean("sts_error");; bool = false)
    {
      this.j = bool;
      return;
      bool = true;
      break;
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
    paramParcel.writeParcelable(this.c, paramInt);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeParcelable(this.f, paramInt);
    paramParcel.writeString(this.g);
    paramParcel.writeInt(this.h);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("has_pwd", this.i);
    localBundle.putBoolean("sts_error", this.j);
    paramParcel.writeBundle(localBundle);
  }
  
  public static class Builder
  {
    private final String a;
    private final String b;
    
    public Builder(String paramString1, String paramString2)
    {
      this.a = paramString1;
      this.b = paramString2;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\MiLoginResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */