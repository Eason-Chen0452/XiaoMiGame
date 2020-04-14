package com.mi.milink.sdk.session.persistent;

import com.mi.milink.sdk.session.common.IServerManager;
import com.mi.milink.sdk.session.common.ServerProfile;
import com.mi.milink.sdk.util.CommonUtils;

public class ManualServerManager
  extends IServerManager
{
  private static final String TAG = "ManualServerManager";
  private static ManualServerManager sInstance = null;
  private String assignIp;
  private int assignPort;
  
  private ManualServerManager()
  {
    super(null);
  }
  
  public static ManualServerManager getInstance()
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new ManualServerManager();
      }
      return sInstance;
    }
    finally {}
  }
  
  public void destroy()
  {
    sInstance = null;
  }
  
  public ServerProfile[] getNext(ServerProfile paramServerProfile, int paramInt)
  {
    return null;
  }
  
  public ServerProfile[] reset(boolean paramBoolean)
  {
    if ((CommonUtils.isLegalIp(this.assignIp)) && (CommonUtils.isLegalPort(this.assignPort))) {
      return new ServerProfile[] { new ServerProfile(this.assignIp, this.assignPort, 1, 4) };
    }
    return new ServerProfile[0];
  }
  
  public boolean save(ServerProfile paramServerProfile)
  {
    return false;
  }
  
  public void setIp(String paramString)
  {
    if (CommonUtils.isLegalIp(paramString)) {
      this.assignIp = paramString;
    }
  }
  
  public void setPort(int paramInt)
  {
    if (CommonUtils.isLegalPort(paramInt)) {
      this.assignPort = paramInt;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\ManualServerManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */