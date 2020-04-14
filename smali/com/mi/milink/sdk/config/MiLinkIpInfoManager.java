package com.mi.milink.sdk.config;

public class MiLinkIpInfoManager
  extends IIpInfoManager
{
  private static final String TAG = "MiLinkIpInfoManager";
  private static MiLinkIpInfoManager sInstance = null;
  
  public static MiLinkIpInfoManager getInstance()
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new MiLinkIpInfoManager();
      }
      return sInstance;
    }
    finally {}
  }
  
  public void destroy()
  {
    sInstance = null;
  }
  
  protected String getApnIspFileName()
  {
    return "apnisps";
  }
  
  protected String getBackupServerFileName()
  {
    return "backupservers";
  }
  
  protected String getOptimumServerFileName()
  {
    return "optservers";
  }
  
  protected String getRecentlyServerFileName()
  {
    return "recentlyservers";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\config\MiLinkIpInfoManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */