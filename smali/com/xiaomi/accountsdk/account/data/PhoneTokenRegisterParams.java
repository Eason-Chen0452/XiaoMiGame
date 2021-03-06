package com.xiaomi.accountsdk.account.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class PhoneTokenRegisterParams
  implements Parcelable
{
  public static final Parcelable.Creator<PhoneTokenRegisterParams> CREATOR = new i();
  public final String a;
  public final String b;
  public final ActivatorPhoneInfo c;
  public final String d;
  public final String e;
  public final String f;
  public final boolean g;
  public final String h;
  public final String i;
  
  private PhoneTokenRegisterParams(Builder paramBuilder)
  {
    this.a = Builder.a(paramBuilder);
    this.b = Builder.b(paramBuilder);
    this.c = Builder.c(paramBuilder);
    if (this.c != null) {}
    for (Object localObject1 = this.c.b;; localObject1 = null)
    {
      this.d = ((String)localObject1);
      localObject1 = localObject2;
      if (this.c != null) {
        localObject1 = this.c.c;
      }
      this.e = ((String)localObject1);
      this.f = Builder.d(paramBuilder);
      this.g = Builder.e(paramBuilder);
      this.h = Builder.f(paramBuilder);
      this.i = Builder.g(paramBuilder);
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("phone", this.a);
    localBundle.putString("ticket_token", this.b);
    localBundle.putParcelable("activator_phone_info", this.c);
    localBundle.putString("password", this.f);
    localBundle.putString("region", this.h);
    localBundle.putBoolean("is_no_password", this.g);
    localBundle.putString("password", this.f);
    localBundle.putString("region", this.h);
    localBundle.putString("service_id", this.i);
    paramParcel.writeBundle(localBundle);
  }
  
  public static class Builder
  {
    private String a;
    private String b;
    private ActivatorPhoneInfo c;
    private String d;
    private boolean e;
    private String f;
    private String g;
    
    public final Builder a(ActivatorPhoneInfo paramActivatorPhoneInfo)
    {
      this.c = paramActivatorPhoneInfo;
      return this;
    }
    
    public final Builder a(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public final Builder a(String paramString1, String paramString2)
    {
      this.a = paramString1;
      this.b = paramString2;
      return this;
    }
    
    public final PhoneTokenRegisterParams a()
    {
      this.e = TextUtils.isEmpty(this.d);
      return new PhoneTokenRegisterParams(this, (byte)0);
    }
    
    public final Builder b(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public final Builder c(String paramString)
    {
      this.g = paramString;
      return this;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\PhoneTokenRegisterParams.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */