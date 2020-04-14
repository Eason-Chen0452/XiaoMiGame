package com.mi.milink.sdk.session.common;

import java.io.Serializable;

public class RecentlyServerData
  extends ServerData
  implements Serializable
{
  private static final long serialVersionUID = -8451531193007968621L;
  private ServerProfile mRecentlyServer = null;
  
  public ServerProfile getRecentlyServer()
  {
    return this.mRecentlyServer;
  }
  
  public void setRecentlyServer(ServerProfile paramServerProfile)
  {
    this.mRecentlyServer = paramServerProfile;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("[recentlyTcpServerProfile = ");
    if (this.mRecentlyServer != null) {}
    for (String str = this.mRecentlyServer.toString();; str = null) {
      return str + ",timeStamp = " + getTimeStamp() + "]";
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\RecentlyServerData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */