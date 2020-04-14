package com.mi.milink.sdk.session.simplechannel;

import android.text.TextUtils;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.config.IIpInfoManager;
import com.mi.milink.sdk.config.MiLinkIpInfoManagerForSimpleChannel;
import com.mi.milink.sdk.connection.DomainManager;
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

public class MiLinkServerManagerForSimpleChannel
  extends IServerManager
{
  private String TAG = "MiLinkServerManagerForSimpleChannel_";
  
  public MiLinkServerManagerForSimpleChannel(MiLinkIpInfoManagerForSimpleChannel paramMiLinkIpInfoManagerForSimpleChannel)
  {
    super(paramMiLinkIpInfoManagerForSimpleChannel);
    this.TAG += paramMiLinkIpInfoManagerForSimpleChannel.getAppId();
  }
  
  public void destroy() {}
  
  public ServerProfile[] getNext(ServerProfile paramServerProfile, int paramInt)
  {
    int i = 0;
    Object localObject = null;
    if (paramServerProfile == null) {
      MiLinkLog.e(this.TAG, "getNext, serverProfile == null!!!");
    }
    do
    {
      return (ServerProfile[])localObject;
      if (!NetworkDash.isAvailable())
      {
        MiLinkLog.e(this.TAG, "getNext, Network is not available!!!");
        return null;
      }
      MiLinkLog.i(this.TAG, "getNext, failserver info:" + paramServerProfile + ",failReason = " + paramInt);
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
        MiLinkLog.i(this.TAG, "getNext, recently tcp failed, and has no rencently http server,so try 4, server No." + paramInt + ":" + paramServerProfile[paramInt]);
        paramInt += 1;
      }
    }
    if (this.mTcpServerListIndex == this.mTcpServerList.size())
    {
      MiLinkLog.i(this.TAG, "getNext no tcp server to try");
      return null;
    }
    paramServerProfile = new ServerProfile[1];
    paramServerProfile[0] = getNextTcpProfile();
    MiLinkLog.i(this.TAG, "getNext get tcp server," + paramServerProfile[0]);
    return paramServerProfile;
  }
  
  public ServerProfile[] reset(boolean paramBoolean)
  {
    int k = 0;
    this.mTcpServerList.clear();
    this.mTcpServerListIndex = 0;
    int j;
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
      MiLinkLog.i(this.TAG, "reset appid = " + this.mIpInfoManager.getAppId() + ", set domain server=[" + Global.getClientAppInfo(this.mIpInfoManager.getAppId()).getDomain() + "] set backip =[" + Global.getClientAppInfo(this.mIpInfoManager.getAppId()).getBackServer() + "]");
      if (Global.getClientAppInfo(this.mIpInfoManager.getAppId()).isHasSetAccServerDomain()) {
        break label652;
      }
      localObject1 = this.mIpInfoManager.getRecentlyServerData();
      if (localObject1 == null) {
        break label646;
      }
      localObject1 = ((RecentlyServerData)localObject1).getRecentlyServer();
      localObject2 = this.mIpInfoManager.getCurrentApnOptimumServerData();
      if (localObject2 == null) {
        break label641;
      }
      localObject3 = ((OptimumServerData)localObject2).getOptimumServers();
      if (localObject3 == null) {
        break label641;
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
      label346:
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
        MiLinkLog.i(this.TAG, "reset isBackgroud = " + paramBoolean + ",has recently tcp server" + localObject1);
        return new ServerProfile[] { localObject1 };
      }
    }
    Object localObject2 = new ServerProfile[4];
    Object localObject1 = this.mTcpServerList;
    int i = 0;
    for (;;)
    {
      if (i < 4) {}
      try
      {
        if ((this.mTcpServerList.size() <= this.mTcpServerListIndex) || (this.mTcpServerListIndex < 0)) {
          break label660;
        }
        localObject3 = this.mTcpServerList;
        j = this.mTcpServerListIndex;
        this.mTcpServerListIndex = (j + 1);
        localObject2[i] = ((ServerProfile)((List)localObject3).get(j));
      }
      finally {}
      i = k;
      while (i < 4)
      {
        MiLinkLog.i(this.TAG, "reset isBackgroud = " + paramBoolean + ", has no recently server, so try 4, server No." + i + ":" + localObject2[i]);
        i += 1;
      }
      return arrayOfServerProfile;
      label641:
      i = 0;
      break label346;
      label646:
      localObject1 = null;
      break;
      label652:
      localObject1 = null;
      i = 0;
      break label346;
      label660:
      i += 1;
    }
  }
  
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


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\MiLinkServerManagerForSimpleChannel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */