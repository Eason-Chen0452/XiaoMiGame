package com.xiaomi.passport.servicetoken.data;

import android.accounts.Account;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public class XmAccountVisibility
  implements Parcelable
{
  public static final Parcelable.Creator<XmAccountVisibility> CREATOR = new a();
  public final ErrorCode a;
  public final String b;
  public final boolean c;
  public final Account d;
  public final int e;
  public final Intent f;
  
  public XmAccountVisibility(Parcel paramParcel)
  {
    paramParcel = paramParcel.readBundle();
    this.a = ErrorCode.values()[paramParcel.getInt("error_code")];
    this.b = paramParcel.getString("error_msg");
    this.c = paramParcel.getBoolean("visible");
    this.d = ((Account)paramParcel.getParcelable("account"));
    this.e = paramParcel.getInt("build_sdk_version");
    this.f = ((Intent)paramParcel.getParcelable("new_choose_account_intent"));
  }
  
  public XmAccountVisibility(Builder paramBuilder)
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
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer("AccountVisibility{");
    localStringBuffer.append(", errorCode=").append(this.a);
    localStringBuffer.append(", errorMessage='").append(this.b).append('\'');
    localStringBuffer.append(", accountVisible='").append(this.c).append('\'');
    localStringBuffer.append('}');
    return localStringBuffer.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("error_code", this.a.ordinal());
    localBundle.putString("error_msg", this.b);
    localBundle.putBoolean("visible", this.c);
    localBundle.putParcelable("account", this.d);
    localBundle.putInt("build_sdk_version", this.e);
    localBundle.putParcelable("new_choose_account_intent", this.f);
    paramParcel.writeBundle(localBundle);
  }
  
  public static class Builder
  {
    private final XmAccountVisibility.ErrorCode a;
    private final String b;
    private boolean c;
    private Account d;
    private int e;
    private Intent f;
    
    public Builder(XmAccountVisibility.ErrorCode paramErrorCode, String paramString)
    {
      this.a = paramErrorCode;
      this.e = Build.VERSION.SDK_INT;
      String str = paramString;
      if (TextUtils.isEmpty(paramString)) {
        str = paramErrorCode.a;
      }
      this.b = str;
    }
  }
  
  public static enum ErrorCode
  {
    String a;
    
    static
    {
      ERROR_NO_ACCOUNT = new ErrorCode("ERROR_NO_ACCOUNT", 3, "no account");
      ERROR_NO_PERMISSION = new ErrorCode("ERROR_NO_PERMISSION", 4, "no access account service permission");
    }
    
    private ErrorCode(String paramString)
    {
      this.a = paramString;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\passport\servicetoken\data\XmAccountVisibility.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */