package com.xiaomi.accountsdk.account.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.accountsdk.utils.AccountLog;

public class RegisterUserInfo
  implements Parcelable
{
  public static final Parcelable.Creator<RegisterUserInfo> CREATOR = new j();
  public final RegisterStatus a;
  public final String b;
  public final String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public final boolean h;
  public final long i;
  public final boolean j;
  public final boolean k;
  public final boolean l;
  
  @Deprecated
  public RegisterUserInfo(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.a = RegisterStatus.getInstance(paramInt);
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramString3;
    this.e = paramString4;
    this.f = null;
    this.g = null;
    this.h = false;
    this.i = -1L;
    this.j = false;
    this.k = false;
    this.l = true;
  }
  
  private RegisterUserInfo(Builder paramBuilder)
  {
    this.a = RegisterStatus.getInstance(Builder.a(paramBuilder));
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
    this.l = Builder.l(paramBuilder);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("register_status", this.a.value);
    localBundle.putString("user_id", this.b);
    localBundle.putString("user_name", this.c);
    localBundle.putString("avatar_address", this.d);
    localBundle.putString("ticket_token", this.e);
    localBundle.putString("phone", this.f);
    localBundle.putString("masked_user_id", this.g);
    localBundle.putBoolean("has_pwd", this.h);
    localBundle.putLong("bind_time", this.i);
    localBundle.putBoolean("need_toast", this.k);
    localBundle.putBoolean("need_get_active_time", this.j);
    localBundle.putBoolean("register_pwd", this.l);
    paramParcel.writeBundle(localBundle);
  }
  
  public static class Builder
  {
    private int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private boolean h;
    private long i;
    private boolean j;
    private boolean k;
    private boolean l;
    
    public Builder(int paramInt)
    {
      this.a = paramInt;
    }
    
    public final Builder a(long paramLong)
    {
      this.i = paramLong;
      return this;
    }
    
    public final Builder a(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public final Builder a(boolean paramBoolean)
    {
      this.h = paramBoolean;
      return this;
    }
    
    public final Builder b(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public final Builder b(boolean paramBoolean)
    {
      this.j = paramBoolean;
      return this;
    }
    
    public final Builder c(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public final Builder c(boolean paramBoolean)
    {
      this.k = paramBoolean;
      return this;
    }
    
    public final Builder d(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public final Builder d(boolean paramBoolean)
    {
      this.l = paramBoolean;
      return this;
    }
    
    public final Builder e(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public final Builder f(String paramString)
    {
      this.g = paramString;
      return this;
    }
  }
  
  public static enum RegisterStatus
  {
    public final int value;
    
    private RegisterStatus(int paramInt)
    {
      this.value = paramInt;
    }
    
    public static RegisterStatus getInstance(int paramInt)
    {
      RegisterStatus[] arrayOfRegisterStatus = values();
      int j = arrayOfRegisterStatus.length;
      int i = 0;
      while (i < j)
      {
        RegisterStatus localRegisterStatus = arrayOfRegisterStatus[i];
        if (paramInt == localRegisterStatus.value) {
          return localRegisterStatus;
        }
        i += 1;
      }
      AccountLog.g("RegisterStatus", "has not this status value: " + paramInt);
      return null;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\data\RegisterUserInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */