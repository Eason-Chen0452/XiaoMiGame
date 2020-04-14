package com.mi.milink.sdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.data.Convert;
import com.mi.milink.sdk.config.IIpInfoManager.AppIpConfig;

public class ClientAppInfo
  implements Parcelable
{
  public static final int CARTOON_APP_ID = 10009;
  public static final Parcelable.Creator<ClientAppInfo> CREATOR = new ClientAppInfo.1();
  private static final String DEFAULT_LANGUAGE_CODE = "zh_CN";
  public static final int FORUM_APP_ID = 10005;
  public static final int GAME_CENTER_APP_ID = 20001;
  public static final int GAME_LOGIN_PAY_SDK = 20002;
  public static final int KNIGHTS_APP_ID = 10010;
  public static final int LIVE_APP_ID = 10007;
  public static final int LIVE_PUSH_SDK_BOTTOM = 100001;
  public static final int LIVE_PUSH_SDK_UP = 200000;
  public static final int LIVE_SDK_APP_ID = 10008;
  public static final int MILIAO_2 = 10014;
  public static final int MILIAO_APP_ID = 10004;
  public static final int MILIAO_APP_ID_TEMP = 10002;
  public static final int MI_GAME_CHIJI_APP_ID = 20006;
  public static final int MI_NEW_GAME_CENTER_APP_ID = 20005;
  public static final int MI_SHOP_APP_ID = 20003;
  public static final int MODE_LONG_CONNECTION = 0;
  public static final int MODE_MEDIUM_CONNECTION = 1;
  public static final int ON_APP_ID = 10011;
  public static final int SUPPORT_APP_ID = 10006;
  public static final int VTALK_APP_ID = 10001;
  public static final int XIAOMI_PUSH_APP_ID = 30001;
  public static final int YI_MI_BUY = 10012;
  private int appId = 0;
  private String appName = "N/A";
  private String backServer = "";
  private String customTag = "";
  private String domain = "";
  private String gv = "";
  private boolean isHeartBeatEnable = true;
  private boolean isIpModle;
  private String languageCode = "zh_CN";
  private String logPath = "";
  public IIpInfoManager.AppIpConfig mIpConfig = null;
  private int mMode = 0;
  private String mipushAppId = "";
  private String mipushAppKey = "";
  private String packageName = "N/A";
  private String platformName = "and";
  public String releaseChannel = "N/A";
  private String serviceProcessName = "";
  private int versionCode = 0;
  private String versionName = "N/A";
  
  private ClientAppInfo(Builder paramBuilder)
  {
    this.appId = paramBuilder.appId;
    this.platformName = paramBuilder.platformName;
    this.versionCode = paramBuilder.versionCode;
    this.versionName = paramBuilder.versionName;
    this.appName = paramBuilder.appName;
    this.releaseChannel = paramBuilder.releaseChannel;
    this.packageName = paramBuilder.packageName;
    this.serviceProcessName = paramBuilder.serviceProcessName;
    this.languageCode = paramBuilder.languageCode;
    this.logPath = paramBuilder.logPath;
    this.mipushAppId = paramBuilder.mipushAppId;
    this.mipushAppKey = paramBuilder.mipushAppKey;
    this.gv = paramBuilder.gv;
    this.mMode = paramBuilder.mMode;
    this.domain = paramBuilder.domain;
    this.backServer = paramBuilder.backServer;
    this.isIpModle = paramBuilder.isIpModle();
    this.mIpConfig = paramBuilder.mConfig;
    if (this.appId == 0) {
      throw new IllegalArgumentException("appid can not be 0, error!");
    }
    if (this.versionCode == 0) {
      throw new IllegalArgumentException("versionCode can not be 0, error!");
    }
    if ("N/A".equals(this.versionName)) {
      throw new IllegalArgumentException("versionName is not correct, error!");
    }
    if ("N/A".equals(this.appName)) {
      throw new IllegalArgumentException("appName is not correct, error!");
    }
    if ("N/A".equals(this.releaseChannel)) {
      throw new IllegalArgumentException("releaseChannel is not correct, error!");
    }
    if ("N/A".equals(this.packageName)) {
      throw new IllegalArgumentException("packageName is not correct, error!");
    }
  }
  
  public ClientAppInfo(String paramString)
  {
    fromString(paramString);
  }
  
  private void fromString(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = paramString.split(";");
      setAppId(Convert.strToInt(paramString[0], 0));
      setVersionCode(Convert.strToInt(paramString[1], 1));
      setVersionName(paramString[2]);
      setReleaseChannel(paramString[3]);
      if (paramString.length > 4) {
        setAppName(paramString[4]);
      }
      if (paramString.length > 5) {
        setPackageName(paramString[5]);
      }
      if (paramString.length > 6) {
        setLanguageCode(paramString[6]);
      }
      if (paramString.length > 7) {
        setLogPath(paramString[7]);
      }
      if (paramString.length > 8) {
        setServiceProcessName(paramString[8]);
      }
      if (paramString.length > 9) {
        setMiPushAppId(paramString[9]);
      }
      if (paramString.length > 10) {
        setMiPushAppKey(paramString[10]);
      }
      if (paramString.length > 11) {
        setGv(paramString[11]);
      }
      if (paramString.length > 12) {
        setLinkMode(Convert.strToInt(paramString[12], 12));
      }
      if (paramString.length > 13) {
        setPlatformName(paramString[13]);
      }
    }
  }
  
  public static boolean isForumApp()
  {
    return Global.getClientAppInfo().getAppId() == 10005;
  }
  
  public static boolean isGameCenterApp()
  {
    return Global.getClientAppInfo().getAppId() == 20001;
  }
  
  public static int isHigherVersion(ClientAppInfo paramClientAppInfo1, ClientAppInfo paramClientAppInfo2)
  {
    if ((paramClientAppInfo1 == null) || (paramClientAppInfo2 == null)) {
      return 0;
    }
    return paramClientAppInfo1.getVersionCode() - paramClientAppInfo2.getVersionCode();
  }
  
  public static boolean isLiveApp()
  {
    return Global.getClientAppInfo().getAppId() == 10007;
  }
  
  public static boolean isMiliaoApp()
  {
    return (Global.getClientAppInfo().getAppId() == 10002) || (Global.getClientAppInfo().getAppId() == 10004);
  }
  
  public static boolean isOnApp()
  {
    return Global.getClientAppInfo().getAppId() == 10011;
  }
  
  public static boolean isSupportApp()
  {
    return Global.getClientAppInfo().getAppId() == 10006;
  }
  
  public static boolean isSupportMiPush()
  {
    String str1 = Global.getClientAppInfo().getMiPushAppId();
    String str2 = Global.getClientAppInfo().getMiPushAppKey();
    return (!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2));
  }
  
  public static boolean isTestChannel()
  {
    return (Global.getClientAppInfo().getReleaseChannel().contains("test")) || (Global.getClientAppInfo().getReleaseChannel().contains("TEST"));
  }
  
  public static boolean isTestChannel(int paramInt)
  {
    return (Global.getClientAppInfo(paramInt).getReleaseChannel().contains("test")) || (Global.getClientAppInfo(paramInt).getReleaseChannel().contains("TEST"));
  }
  
  public static boolean isVtalkApp()
  {
    return Global.getClientAppInfo().getAppId() == 10001;
  }
  
  public static boolean isXiaoMiPushApp()
  {
    return Global.getClientAppInfo().getAppId() == 30001;
  }
  
  private void setAppId(int paramInt)
  {
    this.appId = paramInt;
  }
  
  private void setAppName(String paramString)
  {
    this.appName = paramString;
  }
  
  private void setGv(String paramString)
  {
    this.gv = paramString;
  }
  
  private void setLinkMode(int paramInt)
  {
    this.mMode = paramInt;
  }
  
  private void setMiPushAppId(String paramString)
  {
    this.mipushAppId = paramString;
  }
  
  private void setMiPushAppKey(String paramString)
  {
    this.mipushAppKey = paramString;
  }
  
  private void setPackageName(String paramString)
  {
    this.packageName = paramString;
  }
  
  private void setPlatformName(String paramString)
  {
    this.platformName = paramString;
  }
  
  private void setServiceProcessName(String paramString)
  {
    this.serviceProcessName = paramString;
  }
  
  private void setVersionCode(int paramInt)
  {
    this.versionCode = paramInt;
  }
  
  private void setVersionName(String paramString)
  {
    this.versionName = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getAppId()
  {
    return this.appId;
  }
  
  public String getAppName()
  {
    return this.appName;
  }
  
  public String getBackServer()
  {
    return this.backServer;
  }
  
  public String getCustomTag()
  {
    return this.customTag;
  }
  
  public String getDomain()
  {
    return this.domain;
  }
  
  public String getGv()
  {
    return this.gv;
  }
  
  public String getLanguageCode()
  {
    return this.languageCode;
  }
  
  public int getLinkMode()
  {
    return this.mMode;
  }
  
  public String getLogPath()
  {
    return this.logPath;
  }
  
  public String getMiPushAppId()
  {
    return this.mipushAppId;
  }
  
  public String getMiPushAppKey()
  {
    return this.mipushAppKey;
  }
  
  public String getPackageName()
  {
    return this.packageName;
  }
  
  public String getPlatformName()
  {
    return this.platformName;
  }
  
  public String getReleaseChannel()
  {
    return this.releaseChannel;
  }
  
  public String getServiceProcessName()
  {
    return this.serviceProcessName;
  }
  
  public int getVersionCode()
  {
    return this.versionCode;
  }
  
  public String getVersionName()
  {
    return this.versionName;
  }
  
  public IIpInfoManager.AppIpConfig getmIpConfig()
  {
    return this.mIpConfig;
  }
  
  public boolean isHasSetAccServerDomain()
  {
    return (!Global.getClientAppInfo().getDomain().isEmpty()) && (!Global.getClientAppInfo().getBackServer().isEmpty());
  }
  
  public boolean isHeartBeatEnable()
  {
    return this.isHeartBeatEnable;
  }
  
  public boolean isIpModle()
  {
    return this.isIpModle;
  }
  
  public boolean isMediumConnection()
  {
    return this.mMode == 1;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    setAppId(paramParcel.readInt());
    setVersionCode(paramParcel.readInt());
    setVersionName(paramParcel.readString());
    setReleaseChannel(paramParcel.readString());
    setAppName(paramParcel.readString());
    setPackageName(paramParcel.readString());
    setLanguageCode(paramParcel.readString());
    setLogPath(paramParcel.readString());
    setServiceProcessName(paramParcel.readString());
    setMiPushAppId(paramParcel.readString());
    setMiPushAppKey(paramParcel.readString());
    setGv(paramParcel.readString());
    setLinkMode(paramParcel.readInt());
    setPlatformName(paramParcel.readString());
  }
  
  public void setBackServer(String paramString)
  {
    this.backServer = paramString;
  }
  
  public void setCustomTag(String paramString)
  {
    this.customTag = paramString;
  }
  
  public void setDomain(String paramString)
  {
    this.domain = paramString;
  }
  
  public void setHeartBeatEnable(boolean paramBoolean)
  {
    this.isHeartBeatEnable = paramBoolean;
  }
  
  public void setIpModle(boolean paramBoolean)
  {
    this.isIpModle = paramBoolean;
  }
  
  public void setLanguageCode(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      this.languageCode = paramString;
      return;
    }
    this.languageCode = "zh_CN";
  }
  
  public void setLogPath(String paramString)
  {
    this.logPath = paramString;
  }
  
  public void setReleaseChannel(String paramString)
  {
    this.releaseChannel = paramString;
  }
  
  public void setmIpConfig(IIpInfoManager.AppIpConfig paramAppIpConfig)
  {
    this.mIpConfig = paramAppIpConfig;
  }
  
  public String toString()
  {
    return this.appId + ";" + this.versionCode + ";" + this.versionName + ";" + this.releaseChannel + ";" + this.appName + ";" + this.packageName + ";" + this.languageCode + ";" + this.logPath + ";" + this.platformName + ";";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(getAppId());
    paramParcel.writeInt(getVersionCode());
    paramParcel.writeString(getVersionName());
    paramParcel.writeString(getReleaseChannel());
    paramParcel.writeString(getAppName());
    paramParcel.writeString(getPackageName());
    paramParcel.writeString(getLanguageCode());
    paramParcel.writeString(getLogPath());
    paramParcel.writeString(getServiceProcessName());
    paramParcel.writeString(getMiPushAppId());
    paramParcel.writeString(getMiPushAppKey());
    paramParcel.writeString(getGv());
    paramParcel.writeInt(getLinkMode());
    paramParcel.writeString(getPlatformName());
  }
  
  public static class Builder
  {
    private int appId = 0;
    private String appName = "N/A";
    private String backServer = "";
    private String customTag = "";
    private String domain = "";
    private String gv = "";
    private boolean heartBeat = true;
    private boolean isIpModle;
    private String languageCode = "zh_CN";
    private String logPath = "";
    private IIpInfoManager.AppIpConfig mConfig = null;
    private int mMode = 0;
    private String mipushAppId = "";
    private String mipushAppKey = "";
    private String packageName = "N/A";
    private String platformName = "and";
    private String releaseChannel = "N/A";
    private String serviceProcessName = "";
    private int versionCode = 0;
    private String versionName = "N/A";
    
    public Builder(int paramInt)
    {
      this.appId = paramInt;
    }
    
    public ClientAppInfo build()
    {
      return new ClientAppInfo(this, null);
    }
    
    public String getCustomTag()
    {
      return this.customTag;
    }
    
    public boolean isIpModle()
    {
      return this.isIpModle;
    }
    
    public Builder setAppName(String paramString)
    {
      this.appName = paramString;
      return this;
    }
    
    public Builder setBackServer(String paramString)
    {
      this.backServer = paramString;
      return this;
    }
    
    public void setCustomTag(String paramString)
    {
      this.customTag = paramString;
    }
    
    public Builder setDomain(String paramString)
    {
      this.domain = paramString;
      return this;
    }
    
    public Builder setGv(String paramString)
    {
      this.gv = paramString;
      return this;
    }
    
    public Builder setHeartBeat(boolean paramBoolean)
    {
      this.heartBeat = paramBoolean;
      return this;
    }
    
    public Builder setIPConfig(IIpInfoManager.AppIpConfig paramAppIpConfig)
    {
      this.mConfig = paramAppIpConfig;
      return this;
    }
    
    public void setIpModle(boolean paramBoolean)
    {
      this.isIpModle = paramBoolean;
    }
    
    public Builder setLanguageCode(String paramString)
    {
      this.languageCode = paramString;
      return this;
    }
    
    public Builder setLinkMode(int paramInt)
    {
      this.mMode = paramInt;
      return this;
    }
    
    public Builder setLogPath(String paramString)
    {
      this.logPath = paramString;
      return this;
    }
    
    public Builder setMipushAppId(String paramString)
    {
      this.mipushAppId = paramString;
      return this;
    }
    
    public Builder setMipushAppKey(String paramString)
    {
      this.mipushAppKey = paramString;
      return this;
    }
    
    public Builder setPackageName(String paramString)
    {
      this.packageName = paramString;
      return this;
    }
    
    public Builder setPlatformName(String paramString)
    {
      this.platformName = paramString;
      return this;
    }
    
    public Builder setReleaseChannel(String paramString)
    {
      this.releaseChannel = paramString;
      return this;
    }
    
    public Builder setServiceProcessName(String paramString)
    {
      this.serviceProcessName = paramString;
      return this;
    }
    
    public Builder setVersionCode(int paramInt)
    {
      this.versionCode = paramInt;
      return this;
    }
    
    public Builder setVersionName(String paramString)
    {
      this.versionName = paramString;
      return this;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\data\ClientAppInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */