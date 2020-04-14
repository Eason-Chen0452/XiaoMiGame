package com.mi.milink.sdk.config;

public class MiLinkIpInfoManagerForSimpleChannel
  extends IIpInfoManager
{
  public MiLinkIpInfoManagerForSimpleChannel(int paramInt)
  {
    super(paramInt);
  }
  
  public void destroy() {}
  
  protected String getApnIspFileName()
  {
    return getAppId() + "_apnisps_for_channel_session";
  }
  
  protected String getBackupServerFileName()
  {
    return getAppId() + "_backupservers_for_channel_session";
  }
  
  protected String getOptimumServerFileName()
  {
    return getAppId() + "_optservers_for_channel_session";
  }
  
  protected String getRecentlyServerFileName()
  {
    return getAppId() + "_recentlyservers_for_channel_session";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\config\MiLinkIpInfoManagerForSimpleChannel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */