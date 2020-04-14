package com.xiaomi.accountsdk.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class XiaomiAccount
  implements Parcelable
{
  public static final Parcelable.Creator<XiaomiAccount> CREATOR = new c();
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  
  public XiaomiAccount(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
  }
  
  public XiaomiAccount(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramString4;
    this.e = paramString5;
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
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\accountsdk\account\XiaomiAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */