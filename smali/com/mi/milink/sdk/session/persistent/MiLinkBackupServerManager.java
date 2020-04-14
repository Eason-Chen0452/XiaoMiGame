package com.mi.milink.sdk.session.persistent;

import android.text.TextUtils;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.config.IIpInfoManager;
import com.mi.milink.sdk.config.MiLinkIpInfoManager;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.data.Const.ServerPort;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.IServerManager;
import com.mi.milink.sdk.session.common.ServerProfile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MiLinkBackupServerManager
  extends IServerManager
{
  private static final int DEFAULT_SESSION_COUNT = 1;
  private static final String TAG = "MiLinkBackupServerManager";
  private static MiLinkBackupServerManager sInstance = null;
  
  private MiLinkBackupServerManager()
  {
    super(MiLinkIpInfoManager.getInstance());
  }
  
  public static MiLinkBackupServerManager getInstance()
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new MiLinkBackupServerManager();
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
    if (paramServerProfile == null) {
      MiLinkLog.e("MiLinkBackupServerManager", "getNext, serverProfile == null!!!");
    }
    do
    {
      return null;
      if (!NetworkDash.isAvailable())
      {
        MiLinkLog.e("MiLinkBackupServerManager", "getNext, Network is not available!!!");
        return null;
      }
      MiLinkLog.i("MiLinkBackupServerManager", "getNext, failserver info:" + paramServerProfile + ",failReason = " + paramInt);
    } while (paramServerProfile.getProtocol() != 1);
    if (this.mTcpServerListIndex == this.mTcpServerList.size())
    {
      MiLinkLog.i("MiLinkBackupServerManager", "getNext no tcp server to try");
      return null;
    }
    paramServerProfile = new ServerProfile[1];
    paramServerProfile[0] = getNextTcpProfile();
    MiLinkLog.i("MiLinkBackupServerManager", "getNext get tcp server," + paramServerProfile[0]);
    return paramServerProfile;
  }
  
  public ServerProfile[] reset(boolean paramBoolean)
  {
    this.mTcpServerList = new ArrayList();
    this.mTcpServerListIndex = 0;
    Object localObject2;
    int j;
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
          ServerProfile localServerProfile = new ServerProfile((String)localObject1, localObject2[i], 1, 4);
          this.mTcpServerList.add(localServerProfile);
          i += 1;
        }
      }
    }
    else
    {
      localObject1 = this.mIpInfoManager.getBackupServerList();
      if (localObject1 != null)
      {
        Collections.shuffle((List)localObject1);
        addServerProfileInSpecifiedList((List)localObject1, this.mTcpServerList);
      }
    }
    if (this.mTcpServerList.isEmpty()) {
      return null;
    }
    Object localObject1 = new ServerProfile[1];
    int i = 0;
    while (i <= 0)
    {
      localObject2 = this.mTcpServerList;
      j = this.mTcpServerListIndex;
      this.mTcpServerListIndex = (j + 1);
      localObject1[0] = ((ServerProfile)((List)localObject2).get(j));
      i += 1;
    }
    i = 0;
    while (i <= 0)
    {
      MiLinkLog.i("MiLinkBackupServerManager", "reset , so try backuplist1, server No.0:" + localObject1[0]);
      i += 1;
    }
    return (ServerProfile[])localObject1;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\MiLinkBackupServerManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */