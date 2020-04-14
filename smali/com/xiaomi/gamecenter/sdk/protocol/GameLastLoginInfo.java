package com.xiaomi.gamecenter.sdk.protocol;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.xiaomi.gamecenter.milink.msg.LoginProto.GetLoginAppAccountRsp;

public class GameLastLoginInfo
  implements Parcelable
{
  public static final Parcelable.Creator<GameLastLoginInfo> CREATOR = new a();
  private int a;
  private long b;
  private String c;
  private String d;
  private long e;
  
  public GameLastLoginInfo() {}
  
  public GameLastLoginInfo(LoginProto.GetLoginAppAccountRsp paramGetLoginAppAccountRsp)
  {
    if (paramGetLoginAppAccountRsp == null) {
      return;
    }
    this.a = paramGetLoginAppAccountRsp.getRetCode();
    this.b = paramGetLoginAppAccountRsp.getAppAccountId();
    this.c = paramGetLoginAppAccountRsp.getNickName();
    this.d = paramGetLoginAppAccountRsp.getSession();
  }
  
  public final int a()
  {
    return this.a;
  }
  
  public final long b()
  {
    return this.b;
  }
  
  public final String c()
  {
    return this.d;
  }
  
  public final long d()
  {
    return this.e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return "GameLastLoginInfo{errcode=" + this.a + ", lastPlayedId=" + this.b + ", lastPlayedName='" + this.c + '\'' + ", session='" + this.d + '\'' + ", lastLoginTime=" + this.e + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.a);
    paramParcel.writeLong(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeString(this.d);
    paramParcel.writeLong(this.e);
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\protocol\GameLastLoginInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */