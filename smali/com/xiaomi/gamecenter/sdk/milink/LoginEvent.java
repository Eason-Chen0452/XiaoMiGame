package com.xiaomi.gamecenter.sdk.milink;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.gamecenter.sdk.utils.AccountType;

public class LoginEvent
{
  public static class LoginCancelEvent {}
  
  public static class OAuthResultEvent
    implements Parcelable
  {
    public static final Parcelable.Creator<OAuthResultEvent> CREATOR = new c();
    private int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private boolean g;
    private AccountType h;
    
    private OAuthResultEvent() {}
    
    public OAuthResultEvent(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean, AccountType paramAccountType)
    {
      this.a = paramInt;
      this.d = paramString1;
      this.f = paramString2;
      this.e = paramString3;
      this.b = paramString4;
      this.c = paramString5;
      this.g = paramBoolean;
      this.h = paramAccountType;
    }
    
    public final int a()
    {
      return this.a;
    }
    
    public final String b()
    {
      return this.d;
    }
    
    public final String c()
    {
      return this.b;
    }
    
    public final String d()
    {
      return this.c;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public final AccountType e()
    {
      return this.h;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.a);
      paramParcel.writeString(this.d);
      paramParcel.writeString(this.f);
      paramParcel.writeString(this.e);
      paramParcel.writeString(this.b);
      paramParcel.writeString(this.c);
      paramParcel.writeString(String.valueOf(this.g));
      paramParcel.writeString(String.valueOf(this.h));
    }
  }
  
  public static class SSOResultEvent
  {
    private int a = 4;
    private long b;
    private String c;
    private AccountType d;
    
    public SSOResultEvent(long paramLong, String paramString, AccountType paramAccountType)
    {
      this.b = paramLong;
      this.c = paramString;
      this.d = paramAccountType;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\milink\LoginEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */