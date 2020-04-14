package com.xiaomi.accountsdk.account.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class AccountInfo
  implements Parcelable
{
  public static final Parcelable.Creator<AccountInfo> CREATOR = new a();
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public final String h;
  public final String i;
  public final String j;
  public final String k;
  public final String l;
  public final boolean m;
  
  private AccountInfo(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    this.i = paramParcel.readString();
    this.j = paramParcel.readString();
    this.k = paramParcel.readString();
    paramParcel = paramParcel.readBundle();
    boolean bool;
    if (paramParcel != null)
    {
      bool = paramParcel.getBoolean("has_pwd");
      this.m = bool;
      if (paramParcel == null) {
        break label135;
      }
    }
    label135:
    for (paramParcel = paramParcel.getString("user_synced_url");; paramParcel = null)
    {
      this.l = paramParcel;
      return;
      bool = true;
      break;
    }
  }
  
  private AccountInfo(Builder paramBuilder)
  {
    this.a = Builder.a(paramBuilder);
    this.b = Builder.b(paramBuilder);
    this.c = Builder.c(paramBuilder);
    this.d = Builder.d(paramBuilder);
    this.e = Builder.e(paramBuilder);
    this.f = Builder.f(paramBuilder);
    this.g = Builder.g(paramBuilder);
    this.h = Builder.h(paramBuilder);
    this.i = Builder.i(paramBuilder);
    this.j = Builder.j(paramBuilder);
    this.k = Builder.k(paramBuilder);
    this.m = Builder.l(paramBuilder);
    this.l = Builder.m(paramBuilder);
  }
  
  @Deprecated
  public AccountInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this(new Builder().a(paramString1).b(paramString2).c(paramString3).g(paramString4).h(paramString5));
  }
  
  @Deprecated
  public AccountInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this(new Builder().a(paramString1).b(paramString2).c(paramString3).d(paramString4).e(paramString5).f(paramString6).g(paramString7));
  }
  
  @Deprecated
  public AccountInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    this(new Builder().a(paramString1).b(paramString2).c(paramString3).d(paramString4).e(paramString5).f(paramString6).g(paramString7).h(paramString8));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "AccountInfo{userId='" + this.a + '\'' + ", security='" + this.f + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.j);
    paramParcel.writeString(this.k);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("has_pwd", this.m);
    localBundle.putString("user_synced_url", this.l);
    paramParcel.writeBundle(localBundle);
  }
  
  public static final class Builder
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private boolean l;
    private String m;
    
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
      this.d = paramString;
      return this;
    }
    
    public final Builder e(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public final Builder f(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public final Builder g(String paramString)
    {
      this.g = paramString;
      return this;
    }
    
    public final Builder h(String paramString)
    {
      this.h = paramString;
      return this;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\AccountInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */