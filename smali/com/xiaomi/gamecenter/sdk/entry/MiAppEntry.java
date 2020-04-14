package com.xiaomi.gamecenter.sdk.entry;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.gamecenter.sdk.IServiceCallback;
import com.xiaomi.gamecenter.sdk.PluginVersionCode;

public class MiAppEntry
  implements Parcelable
{
  public static final Parcelable.Creator<MiAppEntry> CREATOR = new h();
  private int SDK_INDEX = PluginVersionCode.b();
  private MiAccountInfo account;
  private int appId;
  private String appKey;
  private MiAppType appType;
  private IServiceCallback callback;
  private String cpMark = "XXX";
  private Context ctx;
  private DebugMode debugMode = DebugMode.ONLINE;
  private boolean isSocialGame = false;
  private MiGravity miGravity = MiGravity.MI_TOP_RIGHT;
  private String newAppId;
  private ScreenOrientation orientation;
  private PayMode payMode = PayMode.custom;
  private int pid;
  private String pkgLabel;
  private String pkgName;
  private int uid;
  private boolean weakAccount;
  
  private MiAppEntry()
  {
    this.orientation = ScreenOrientation.vertical;
    this.weakAccount = false;
  }
  
  public MiAppEntry(MiAppInfo paramMiAppInfo)
  {
    this.appKey = paramMiAppInfo.getAppKey();
    this.appType = paramMiAppInfo.getAppType();
    this.cpMark = paramMiAppInfo.getCpMark();
    this.orientation = paramMiAppInfo.getOrientation();
    this.account = paramMiAppInfo.getAccount();
    this.newAppId = paramMiAppInfo.getAppId();
    this.debugMode = paramMiAppInfo.getDebugMode();
    this.isSocialGame = paramMiAppInfo.isSocialGame();
    if (paramMiAppInfo.getCtx() != null) {
      this.pkgName = paramMiAppInfo.getCtx().getPackageName();
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAppId()
  {
    if ((this.appId == 0) && (this.SDK_INDEX > 1)) {
      return this.newAppId;
    }
    String str = String.valueOf(this.appId);
    this.newAppId = str;
    return str;
  }
  
  public String getAppKey()
  {
    return this.appKey;
  }
  
  public MiAppType getAppType()
  {
    return this.appType;
  }
  
  public String getNewAppId()
  {
    return this.newAppId;
  }
  
  public String getPkgLabel()
  {
    return this.pkgLabel;
  }
  
  public String getPkgName()
  {
    return this.pkgName;
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
    paramParcel.writeString(this.pkgName);
    paramParcel.writeString(this.pkgLabel);
    paramParcel.writeInt(this.pid);
    paramParcel.writeInt(this.uid);
    paramParcel.writeStrongInterface(this.callback);
    paramParcel.writeInt(this.SDK_INDEX);
    paramParcel.writeString(this.newAppId);
    paramParcel.writeString(this.debugMode.toString());
    paramParcel.writeString(Boolean.toString(this.isSocialGame));
    paramParcel.writeString(this.miGravity.toString());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\xiaomi\gamecenter\sdk\entry\MiAppEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */