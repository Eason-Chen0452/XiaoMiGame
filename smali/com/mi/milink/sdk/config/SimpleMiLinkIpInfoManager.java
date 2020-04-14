package com.mi.milink.sdk.config;

public class SimpleMiLinkIpInfoManager
  extends IIpInfoManager
{
  public SimpleMiLinkIpInfoManager(int paramInt)
  {
    super(paramInt);
  }
  
  public void destroy() {}
  
  protected String getApnIspFileName()
  {
    return "apnisps_for_simplel_session";
  }
  
  protected String getBackupServerFileName()
  {
    return "backupservers_for_simplel_session";
  }
  
  protected String getOptimumServerFileName()
  {
    return "optservers_for_simplel_session";
  }
  
  protected String getRecentlyServerFileName()
  {
    return "recentlyservers_for_simplel_session";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\config\SimpleMiLinkIpInfoManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */