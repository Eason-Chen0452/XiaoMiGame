package com.mi.milink.sdk.session.common;

import com.mi.milink.sdk.config.IIpInfoManager;
import com.mi.milink.sdk.connection.DomainManager;
import com.mi.milink.sdk.data.Const.ServerPort;
import com.mi.milink.sdk.debug.MiLinkLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public abstract class IServerManager
{
  protected static final int DEFAULT_SESSION_COUNT = 4;
  protected IIpInfoManager mIpInfoManager;
  protected List<ServerProfile> mTcpServerList = Collections.synchronizedList(new ArrayList());
  protected int mTcpServerListIndex = 0;
  
  protected IServerManager(IIpInfoManager paramIIpInfoManager)
  {
    this.mIpInfoManager = paramIIpInfoManager;
  }
  
  protected static void addServerProfileInSpecifiedList(List<ServerProfile> paramList1, List<ServerProfile> paramList2)
  {
    if (Const.ServerPort.PORT_ARRAY.length != 4) {
      MiLinkLog.e("IServerManager", "PORT_ARRAY.length != 4");
    }
    int[] arrayOfInt1;
    int[] arrayOfInt2;
    int i;
    do
    {
      return;
      arrayOfInt1 = new int[] { 0, 0, 1, 1 };
      arrayOfInt2 = new int[] { 0, 0, 1, 2 };
      j = paramList1.size();
      i = j;
      if (j > 4) {
        i = 4;
      }
    } while ((i > 4) || (i <= 0));
    int j = 0;
    while (j < Const.ServerPort.PORT_ARRAY.length) {
      try
      {
        paramList2.add(new ServerProfile(((ServerProfile)paramList1.get(new int[][] { { 0, 0, 0, 0 }, arrayOfInt1, arrayOfInt2, { 0, 1, 2, 3 } }[(i - 1)][j])).getServerIP(), Const.ServerPort.PORT_ARRAY[j], 1, 1));
        j += 1;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
  }
  
  public abstract void destroy();
  
  public abstract ServerProfile[] getNext(ServerProfile paramServerProfile, int paramInt);
  
  protected ServerProfile getNextTcpProfile()
  {
    if (this.mTcpServerListIndex == this.mTcpServerList.size()) {
      return null;
    }
    List localList = this.mTcpServerList;
    int i = this.mTcpServerListIndex;
    this.mTcpServerListIndex = (i + 1);
    return (ServerProfile)localList.get(i);
  }
  
  public abstract ServerProfile[] reset(boolean paramBoolean);
  
  public boolean save(ServerProfile paramServerProfile)
  {
    if (paramServerProfile == null) {}
    do
    {
      return false;
      paramServerProfile.setServerIP(DomainManager.getInstance().queryDomainIP(paramServerProfile.getServerIP()));
    } while (paramServerProfile.getProtocol() != 1);
    this.mIpInfoManager.setRecentlyServer(new ServerProfile(paramServerProfile.getServerIP(), paramServerProfile.getServerPort(), paramServerProfile.getProtocol(), 3));
    return true;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\common\IServerManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */