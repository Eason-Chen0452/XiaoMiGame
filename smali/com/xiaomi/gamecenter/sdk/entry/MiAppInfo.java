package com.xiaomi.gamecenter.sdk.entry;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.gamecenter.sdk.PluginVersionCode;

public class MiAppInfo
  implements Parcelable
{
  public static final Parcelable.Creator<MiAppInfo> CREATOR = new i();
  private int SDK_INDEX = PluginVersionCode.b();
  private MiAccountInfo account;
  private int appId = 0;
  private String appKey;
  private MiAppType appType = MiAppType.offline;
  private String cpMark = "XXX";
  private Context ctx;
  private DebugMode debugMode = DebugMode.ONLINE;
  private boolean isSocialGame = false;
  private MiGravity miGravity = MiGravity.MI_TOP_RIGHT;
  private String newAppId;
  private ScreenOrientation orientation = ScreenOrientation.vertical;
  private PayMode payMode = PayMode.custom;
  private boolean weakAccount = false;
  
  public int describeContents()
  {
    return 0;
  }
  
  public MiAccountInfo getAccount()
  {
    return this.account;
  }
  
  public String getAppId()
  {
    return this.newAppId;
  }
  
  public String getAppKey()
  {
    return this.appKey;
  }
  
  public MiAppType getAppType()
  {
    return this.appType;
  }
  
  public String getCpMark()
  {
    return this.cpMark;
  }
  
  public Context getCtx()
  {
    return this.ctx;
  }
  
  public DebugMode getDebugMode()
  {
    return this.debugMode;
  }
  
  public ScreenOrientation getOrientation()
  {
    return this.orientation;
  }
  
  public boolean isSocialGame()
  {
    return this.isSocialGame;
  }
  
  public void setAccount(MiAccountInfo paramMiAccountInfo)
  {
    this.account = paramMiAccountInfo;
  }
  
  public void setAppId(String paramString)
  {
    this.newAppId = paramString;
  }
  
  public void setAppKey(String paramString)
  {
    this.appKey = paramString;
  }
  
  public void setAppType(MiAppType paramMiAppType)
  {
    this.appType = paramMiAppType;
  }
  
  public void setCtx(Context paramContext)
  {
    this.ctx = paramContext;
  }
  
  public void setOrientation(ScreenOrientation paramScreenOrientation)
  {
    this.orientation = paramScreenOrientation;
  }
  
  public void setSocialGame(boolean paramBoolean)
  {
    this.isSocialGame = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.appId);
    paramParcel.writeString(this.appKey);
    paramParcel.writeString(this.appType.toString());
    paramParcel.writeString(this.cpMark);
    paramParcel.writeString(this.orientation.toString());
    paramParcel.writeString(Boolean.toString(this.weakAccount));
    paramParcel.writeString(this.payMode.toString());
    paramParcel.writeParcelable(this.account, 0);
    paramParcel.writeInt(this.SDK_INDEX);
    paramParcel.writeString(this.newAppId);
    paramParcel.writeString(this.debugMode.toString());
    paramParcel.writeString(Boolean.toString(this.isSocialGame));
    paramParcel.writeString(this.miGravity.toString());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\MiAppInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */