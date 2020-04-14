package com.xiaomi.gamecenter.sdk.entry;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class LoginResult
  implements Parcelable
{
  public static final Parcelable.Creator<LoginResult> CREATOR = new f();
  private MiAccountInfo account;
  private int errcode;
  private String headUrl;
  private boolean needWriteExtent = false;
  private String session;
  private String userName;
  
  public LoginResult() {}
  
  public LoginResult(int paramInt, MiAccountInfo paramMiAccountInfo)
  {
    this.errcode = paramInt;
    this.account = paramMiAccountInfo;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public MiAccountInfo getAccount()
  {
    return this.account;
  }
  
  public int getErrcode()
  {
    return this.errcode;
  }
  
  public String getHeadUrl()
  {
    return this.headUrl;
  }
  
  public String getSession()
  {
    return this.session;
  }
  
  public String getUserName()
  {
    return this.userName;
  }
  
  public boolean isNeedWriteExtent()
  {
    return this.needWriteExtent;
  }
  
  public void setAccount(MiAccountInfo paramMiAccountInfo)
  {
    this.account = paramMiAccountInfo;
  }
  
  public void setErrcode(int paramInt)
  {
    this.errcode = paramInt;
  }
  
  public void setHeadUrl(String paramString)
  {
    this.headUrl = paramString;
  }
  
  public void setNeedWriteExtent(boolean paramBoolean)
  {
    this.needWriteExtent = paramBoolean;
  }
  
  public void setSession(String paramString)
  {
    this.session = paramString;
  }
  
  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
  
  public String toString()
  {
    return "LoginResult{errcode=" + this.errcode + ", account=" + this.account + ", needWriteExtent=" + this.needWriteExtent + ", headUrl='" + this.headUrl + '\'' + ", userName='" + this.userName + '\'' + ", session='" + this.session + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.errcode);
    paramParcel.writeParcelable(this.account, 0);
    if (this.needWriteExtent)
    {
      paramParcel.writeString(this.headUrl);
      paramParcel.writeString(this.userName);
      paramParcel.writeString(this.session);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\LoginResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */