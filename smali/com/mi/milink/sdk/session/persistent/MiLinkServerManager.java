package com.mi.milink.sdk.session.persistent;

import android.text.TextUtils;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.config.IIpInfoManager;
import com.mi.milink.sdk.config.MiLinkIpInfoManager;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.data.Const.ServerPort;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.IServerManager;
import com.mi.milink.sdk.session.common.OptimumServerData;
import com.mi.milink.sdk.session.common.RecentlyServerData;
import com.mi.milink.sdk.session.common.ServerProfile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class MiLinkServerManager
  extends IServerManager
{
  private static final String TAG = "MiLinkServerManager";
  private static MiLinkServerManager sInstance = null;
  
  private MiLinkServerManager()
  {
    super(MiLinkIpInfoManager.getInstance());
  }
  
  public static MiLinkServerManager getInstance()
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new MiLinkServerManager();
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
    int i = 0;
    Object localObject = null;
    if (paramServerProfile == null) {
      MiLinkLog.e("MiLinkServerManager", "getNext, serverProfile == null!!!");
    }
    do
    {
      return (ServerProfile[])localObject;
      if (!NetworkDash.isAvailable())
      {
        MiLinkLog.e("MiLinkServerManager", "getNext, Network is not available!!!");
        return null;
      }
      MiLinkLog.i("MiLinkServerManager", "getNext, failserver info:" + paramServerProfile + ",failReason = " + paramInt);
    } while (paramServerProfile.getProtocol() != 1);
    if (paramServerProfile.getServerType() == 3)
    {
      paramServerProfile = new ServerProfile[4];
      paramInt = i;
      for (;;)
      {
        localObject = paramServerProfile;
        if (paramInt >= 4) {
          break;
        }
        paramServerProfile[paramInt] = getNextTcpProfile();
        MiLinkLog.i("MiLinkServerManager", "getNext, recently tcp failed, and has no rencently http server,so try 4, server No." + paramInt + ":" + paramServerProfile[paramInt]);
        paramInt += 1;
      }
    }
    if (this.mTcpServerListIndex == this.mTcpServerList.size())
    {
      MiLinkLog.i("MiLinkServerManager", "getNext no tcp server to try");
      return null;
    }
    paramServerProfile = new ServerProfile[1];
    paramServerProfile[0] = getNextTcpProfile();
    MiLinkLog.i("MiLinkServerManager", "getNext get tcp server," + paramServerProfile[0]);
    return paramServerProfile;
  }
  
  public ServerProfile[] reset(boolean paramBoolean)
  {
    int k = 0;
    this.mTcpServerList.clear();
    this.mTcpServerListIndex = 0;
    Object localObject1;
    Object localObject2;
    int j;
    int i;
    Object localObject3;
    if (ClientAppInfo.isTestChannel())
    {
      localObject1 = this.mIpInfoManager.getTestBackupIp()[0].getServerIP();
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject2 = Const.ServerPort.PORT_ARRAY;
        j = localObject2.length;
        i = 0;
        while (i < j)
        {
          localObject3 = new ServerProfile((String)localObject1, localObject2[i], 1, 4);
          this.mTcpServerList.add(localObject3);
          i += 1;
        }
      }
    }
    else
    {
      if (Global.getClientAppInfo().isHasSetAccServerDomain()) {
        break label526;
      }
      localObject1 = this.mIpInfoManager.getRecentlyServerData();
      if (localObject1 == null) {
        break label520;
      }
      localObject1 = ((RecentlyServerData)localObject1).getRecentlyServer();
      localObject2 = this.mIpInfoManager.getCurrentApnOptimumServerData();
      if (localObject2 == null) {
        break label515;
      }
      localObject3 = ((OptimumServerData)localObject2).getOptimumServers();
      if (localObject3 == null) {
        break label515;
      }
      Collections.shuffle((List)localObject3);
      localObject2 = new ArrayList();
      localObject3 = ((List)localObject3).iterator();
      i = 0;
      while (((Iterator)localObject3).hasNext())
      {
        ServerProfile localServerProfile = (ServerProfile)((Iterator)localObject3).next();
        if (localServerProfile != null) {
          if ((localObject1 != null) && (localServerProfile.getServerIP().equals(((ServerProfile)localObject1).getServerIP()))) {
            i = 1;
          } else if (((ArrayList)localObject2).size() < Const.ServerPort.PORT_ARRAY.length) {
            ((ArrayList)localObject2).add(localServerProfile);
          }
        }
      }
      addServerProfileInSpecifiedList((List)localObject2, this.mTcpServerList);
    }
    for (;;)
    {
      localObject2 = Const.ServerPort.PORT_ARRAY;
      int m = localObject2.length;
      j = 0;
      while (j < m)
      {
        int n = localObject2[j];
        localObject3 = new ServerProfile(this.mIpInfoManager.getDefaultServer().getServerIP(), n, 1, 4);
        this.mTcpServerList.add(localObject3);
        j += 1;
      }
      localObject2 = this.mIpInfoManager.getBackupServerList();
      if (localObject2 != null)
      {
        Collections.shuffle((List)localObject2);
        addServerProfileInSpecifiedList((List)localObject2, this.mTcpServerList);
      }
      if (i != 0)
      {
        MiLinkLog.i("MiLinkServerManager", "reset isBackgroud = " + paramBoolean + ",has recently tcp server" + localObject1);
        return new ServerProfile[] { localObject1 };
      }
      localObject1 = new ServerProfile[4];
      i = 0;
      for (;;)
      {
        j = k;
        if (i >= 4) {
          break;
        }
        localObject2 = this.mTcpServerList;
        j = this.mTcpServerListIndex;
        this.mTcpServerListIndex = (j + 1);
        localObject1[i] = ((ServerProfile)((List)localObject2).get(j));
        i += 1;
      }
      while (j < 4)
      {
        MiLinkLog.i("MiLinkServerManager", "reset isBackgroud = " + paramBoolean + ", has no recently server, so try 4, server No." + j + ":" + localObject1[j]);
        j += 1;
      }
      return (ServerProfile[])localObject1;
      label515:
      i = 0;
      continue;
      label520:
      localObject1 = null;
      break;
      label526:
      localObject1 = null;
      i = 0;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\MiLinkServerManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */