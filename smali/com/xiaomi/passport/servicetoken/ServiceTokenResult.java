package com.xiaomi.passport.servicetoken;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class ServiceTokenResult
  implements Parcelable
{
  public static final Parcelable.Creator<ServiceTokenResult> CREATOR = new a();
  public final String a;
  public final String b;
  public final String c;
  public final ErrorCode d;
  public final String e;
  public final String f;
  public final Intent g;
  public final String h;
  public final String i;
  public final String j;
  public final boolean k;
  public final String l;
  private final boolean m;
  
  protected ServiceTokenResult(Parcel paramParcel)
  {
    Object localObject = paramParcel.readString();
    if (!TextUtils.equals("V2#", (CharSequence)localObject))
    {
      this.a = ((String)localObject);
      this.b = paramParcel.readString();
      this.c = paramParcel.readString();
      n = paramParcel.readInt();
      if (n == -1) {}
      for (localErrorCode = null;; localErrorCode = ErrorCode.values()[n])
      {
        this.d = localErrorCode;
        this.e = paramParcel.readString();
        this.f = paramParcel.readString();
        this.g = ((Intent)paramParcel.readParcelable(Intent.class.getClassLoader()));
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = false;
        this.m = false;
        this.l = null;
        return;
      }
    }
    localObject = paramParcel.readBundle(Intent.class.getClassLoader());
    this.a = ((Bundle)localObject).getString("sid");
    this.b = ((Bundle)localObject).getString("serviceToken");
    this.c = ((Bundle)localObject).getString("security");
    int n = ((Bundle)localObject).getInt("errorCode");
    if (n == -1) {}
    for (paramParcel = localErrorCode;; paramParcel = ErrorCode.values()[n])
    {
      this.d = paramParcel;
      this.e = ((Bundle)localObject).getString("errorMessage");
      this.f = ((Bundle)localObject).getString("stackTrace");
      this.g = ((Intent)((Bundle)localObject).getParcelable("intent"));
      this.h = ((Bundle)localObject).getString("slh");
      this.i = ((Bundle)localObject).getString("ph");
      this.j = ((Bundle)localObject).getString("cUserId");
      this.k = ((Bundle)localObject).getBoolean("peeked");
      this.m = true;
      this.l = ((Bundle)localObject).getString("userId");
      return;
    }
  }
  
  private ServiceTokenResult(Builder paramBuilder)
  {
    this.a = Builder.a(paramBuilder);
    this.b = Builder.b(paramBuilder);
    this.c = Builder.c(paramBuilder);
    this.e = Builder.d(paramBuilder);
    this.d = Builder.e(paramBuilder);
    this.g = Builder.f(paramBuilder);
    this.f = Builder.g(paramBuilder);
    this.h = Builder.h(paramBuilder);
    this.i = Builder.i(paramBuilder);
    this.j = Builder.j(paramBuilder);
    this.k = Builder.k(paramBuilder);
    this.m = Builder.l(paramBuilder);
    this.l = Builder.m(paramBuilder);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ServiceTokenResult)) {
        return false;
      }
      paramObject = (ServiceTokenResult)paramObject;
      if (this.l != ((ServiceTokenResult)paramObject).l) {
        return false;
      }
      if (this.k != ((ServiceTokenResult)paramObject).k) {
        return false;
      }
      if (this.m != ((ServiceTokenResult)paramObject).m) {
        return false;
      }
      if (this.a != null)
      {
        if (this.a.equals(((ServiceTokenResult)paramObject).a)) {}
      }
      else {
        while (((ServiceTokenResult)paramObject).a != null) {
          return false;
        }
      }
      if (this.b != null)
      {
        if (this.b.equals(((ServiceTokenResult)paramObject).b)) {}
      }
      else {
        while (((ServiceTokenResult)paramObject).b != null) {
          return false;
        }
      }
      if (this.c != null)
      {
        if (this.c.equals(((ServiceTokenResult)paramObject).c)) {}
      }
      else {
        while (((ServiceTokenResult)paramObject).c != null) {
          return false;
        }
      }
      if (this.d != ((ServiceTokenResult)paramObject).d) {
        return false;
      }
      if (this.e != null)
      {
        if (this.e.equals(((ServiceTokenResult)paramObject).e)) {}
      }
      else {
        while (((ServiceTokenResult)paramObject).e != null) {
          return false;
        }
      }
      if (this.f != null)
      {
        if (this.f.equals(((ServiceTokenResult)paramObject).f)) {}
      }
      else {
        while (((ServiceTokenResult)paramObject).f != null) {
          return false;
        }
      }
      if (this.g != null)
      {
        if (this.g.equals(((ServiceTokenResult)paramObject).g)) {}
      }
      else {
        while (((ServiceTokenResult)paramObject).g != null) {
          return false;
        }
      }
      if (this.h != null)
      {
        if (this.h.equals(((ServiceTokenResult)paramObject).h)) {}
      }
      else {
        while (((ServiceTokenResult)paramObject).h != null) {
          return false;
        }
      }
      if (this.i != null)
      {
        if (this.i.equals(((ServiceTokenResult)paramObject).i)) {}
      }
      else {
        while (((ServiceTokenResult)paramObject).i != null) {
          return false;
        }
      }
      if (this.j != null) {
        return this.j.equals(((ServiceTokenResult)paramObject).j);
      }
    } while (((ServiceTokenResult)paramObject).j == null);
    return false;
  }
  
  public int hashCode()
  {
    int i11 = 1;
    int i12 = 0;
    int n;
    int i1;
    label36:
    int i2;
    label51:
    int i3;
    label67:
    int i4;
    label83:
    int i5;
    label99:
    int i6;
    label115:
    int i7;
    label131:
    int i8;
    label147:
    int i9;
    label163:
    int i10;
    if (this.a != null)
    {
      n = this.a.hashCode();
      if (this.b == null) {
        break label273;
      }
      i1 = this.b.hashCode();
      if (this.c == null) {
        break label278;
      }
      i2 = this.c.hashCode();
      if (this.d == null) {
        break label283;
      }
      i3 = this.d.hashCode();
      if (this.e == null) {
        break label289;
      }
      i4 = this.e.hashCode();
      if (this.f == null) {
        break label295;
      }
      i5 = this.f.hashCode();
      if (this.g == null) {
        break label301;
      }
      i6 = this.g.hashCode();
      if (this.h == null) {
        break label307;
      }
      i7 = this.h.hashCode();
      if (this.i == null) {
        break label313;
      }
      i8 = this.i.hashCode();
      if (this.j == null) {
        break label319;
      }
      i9 = this.j.hashCode();
      if (!this.k) {
        break label325;
      }
      i10 = 1;
      label173:
      if (!this.m) {
        break label331;
      }
    }
    for (;;)
    {
      if (this.l != null) {
        i12 = this.l.hashCode();
      }
      return ((i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + n * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i11) * 31 + i12;
      n = 0;
      break;
      label273:
      i1 = 0;
      break label36;
      label278:
      i2 = 0;
      break label51;
      label283:
      i3 = 0;
      break label67;
      label289:
      i4 = 0;
      break label83;
      label295:
      i5 = 0;
      break label99;
      label301:
      i6 = 0;
      break label115;
      label307:
      i7 = 0;
      break label131;
      label313:
      i8 = 0;
      break label147;
      label319:
      i9 = 0;
      break label163;
      label325:
      i10 = 0;
      break label173;
      label331:
      i11 = 0;
    }
  }
  
  public String toString()
  {
    if ((TextUtils.isEmpty(this.l)) || (this.l.length() <= 3)) {}
    for (String str = this.j;; str = TextUtils.substring(this.l, 0, 2) + "****")
    {
      StringBuffer localStringBuffer = new StringBuffer("ServiceTokenResult{");
      localStringBuffer.append("userId=").append(str).append('\'');
      localStringBuffer.append(", sid='").append(this.a).append('\'');
      localStringBuffer.append(", serviceToken='").append("serviceTokenMasked").append('\'');
      localStringBuffer.append(", security='").append("securityMasked").append('\'');
      localStringBuffer.append(", errorCode=").append(this.d);
      localStringBuffer.append(", errorMessage='").append(this.e).append('\'');
      localStringBuffer.append(", errorStackTrace='").append(this.f).append('\'');
      localStringBuffer.append(", intent=").append(this.g);
      localStringBuffer.append(", slh='").append(this.h).append('\'');
      localStringBuffer.append(", ph='").append(this.i).append('\'');
      localStringBuffer.append(", cUserId='").append(this.j).append('\'');
      localStringBuffer.append(", peeked=").append(this.k).append('\'');
      localStringBuffer.append(", useV1Parcel=").append(this.m);
      localStringBuffer.append('}');
      return localStringBuffer.toString();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int n = -1;
    if (this.m)
    {
      paramParcel.writeString(this.a);
      paramParcel.writeString(this.b);
      paramParcel.writeString(this.c);
      if (this.d == null) {}
      for (;;)
      {
        paramParcel.writeInt(n);
        paramParcel.writeString(this.e);
        paramParcel.writeString(this.f);
        paramParcel.writeParcelable(this.g, paramInt);
        return;
        n = this.d.ordinal();
      }
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("sid", this.a);
    localBundle.putString("serviceToken", this.b);
    localBundle.putString("security", this.c);
    if (this.d == null) {}
    for (;;)
    {
      localBundle.putInt("errorCode", n);
      localBundle.putString("errorMessage", this.e);
      localBundle.putString("stackTrace", this.f);
      localBundle.putParcelable("intent", this.g);
      localBundle.putString("slh", this.h);
      localBundle.putString("ph", this.i);
      localBundle.putString("cUserId", this.j);
      localBundle.putBoolean("peeked", this.k);
      localBundle.putString("userId", this.l);
      paramParcel.writeString("V2#");
      paramParcel.writeBundle(localBundle);
      return;
      n = this.d.ordinal();
    }
  }
  
  public static final class Builder
  {
    private final String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private ServiceTokenResult.ErrorCode f = ServiceTokenResult.ErrorCode.ERROR_NONE;
    private Intent g;
    private String h;
    private String i;
    private String j;
    private boolean k;
    private boolean l;
    private String m;
    
    public Builder(String paramString)
    {
      this.a = paramString;
    }
    
    public final Builder a()
    {
      this.k = false;
      return this;
    }
    
    public final Builder a(Intent paramIntent)
    {
      this.g = paramIntent;
      return this;
    }
    
    public final Builder a(ServiceTokenResult.ErrorCode paramErrorCode)
    {
      this.f = paramErrorCode;
      return this;
    }
    
    public final Builder a(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public final Builder b(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public final ServiceTokenResult b()
    {
      return new ServiceTokenResult(this, (byte)0);
    }
    
    public final Builder c(String paramString)
    {
      this.d = paramString;
      return this;
    }
  }
  
  public static enum ErrorCode
  {
    static
    {
      ERROR_NONE = new ErrorCode("ERROR_NONE", 1);
      ERROR_NO_ACCOUNT = new ErrorCode("ERROR_NO_ACCOUNT", 2);
      ERROR_APP_PERMISSION_FORBIDDEN = new ErrorCode("ERROR_APP_PERMISSION_FORBIDDEN", 3);
      ERROR_IOERROR = new ErrorCode("ERROR_IOERROR", 4);
      ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE = new ErrorCode("ERROR_OLD_MIUI_ACCOUNT_MANAGER_PERMISSION_ISSUE", 5);
      ERROR_CANCELLED = new ErrorCode("ERROR_CANCELLED", 6);
      ERROR_AUTHENTICATOR_ERROR = new ErrorCode("ERROR_AUTHENTICATOR_ERROR", 7);
      ERROR_TIME_OUT = new ErrorCode("ERROR_TIME_OUT", 8);
    }
    
    private ErrorCode() {}
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\servicetoken\ServiceTokenResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */