package com.mi.milink.sdk.session.common;

import com.mi.milink.sdk.util.CommonUtils;
import java.io.Serializable;
import java.util.List;

public class OptimumServerData
  extends ServerData
  implements Serializable
{
  private static final long serialVersionUID = -8399070197793626196L;
  private List<ServerProfile> mOptimumServers = null;
  
  public List<ServerProfile> getOptimumServers()
  {
    return this.mOptimumServers;
  }
  
  public void setOptimumServers(List<ServerProfile> paramList)
  {
    this.mOptimumServers = paramList;
  }
  
  public String toString()
  {
    return "[optimum servers = " + CommonUtils.join(this.mOptimumServers, ";") + ",timeStamp = " + getTimeStamp() + "]";
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\OptimumServerData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */