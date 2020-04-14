package com.xiaomi.accountsdk.account.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ActivatorPhoneInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ActivatorPhoneInfo> CREATOR = new b();
  public final String a;
  public final String b;
  public final String c;
  public final int d;
  public final String e;
  public final String f;
  
  public ActivatorPhoneInfo(Builder paramBuilder)
  {
    this.a = Builder.a(paramBuilder);
    this.b = Builder.b(paramBuilder);
    this.c = Builder.c(paramBuilder);
    this.d = Builder.d(paramBuilder);
    this.e = Builder.e(paramBuilder);
    this.f = Builder.f(paramBuilder);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("phone", this.a);
    localBundle.putString("phone_hash", this.b);
    localBundle.putString("activator_token", this.c);
    localBundle.putInt("slot_id", this.d);
    localBundle.putString("copy_writer", this.e);
    localBundle.putString("operator_link", this.f);
    paramParcel.writeBundle(localBundle);
  }
  
  public static final class Builder
  {
    private String a;
    private String b;
    private String c;
    private int d;
    private String e;
    private String f;
    
    public final Builder a(int paramInt)
    {
      this.d = paramInt;
      return this;
    }
    
    public final Builder a(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public final Builder b(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public final Builder c(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public final Builder d(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public final Builder e(String paramString)
    {
      this.f = paramString;
      return this;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\ActivatorPhoneInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */