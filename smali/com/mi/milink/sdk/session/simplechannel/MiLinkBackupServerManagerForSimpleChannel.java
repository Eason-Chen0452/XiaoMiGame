package com.mi.milink.sdk.session.simplechannel;

import android.text.TextUtils;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.config.IIpInfoManager;
import com.mi.milink.sdk.config.MiLinkIpInfoManagerForSimpleChannel;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.data.Const.ServerPort;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.IServerManager;
import com.mi.milink.sdk.session.common.ServerProfile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MiLinkBackupServerManagerForSimpleChannel
  extends IServerManager
{
  private String TAG = "MiLinkBackupServerManagerForSimpleChannel_";
  
  public MiLinkBackupServerManagerForSimpleChannel(MiLinkIpInfoManagerForSimpleChannel paramMiLinkIpInfoManagerForSimpleChannel)
  {
    super(paramMiLinkIpInfoManagerForSimpleChannel);
    this.TAG += paramMiLinkIpInfoManagerForSimpleChannel.getAppId();
  }
  
  public void destroy() {}
  
  public ServerProfile[] getNext(ServerProfile paramServerProfile, int paramInt)
  {
    if (paramServerProfile == null) {
      MiLinkLog.e(this.TAG, "getNext, serverProfile == null!!!");
    }
    do
    {
      return null;
      if (!NetworkDash.isAvailable())
      {
        MiLinkLog.e(this.TAG, "getNext, Network is not available!!!");
        return null;
      }
      MiLinkLog.i(this.TAG, "getNext, failserver info:" + paramServerProfile + ",failReason = " + paramInt);
    } while (paramServerProfile.getProtocol() != 1);
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
    Object localObject1 = new ServerProfile[4];
    int i = 0;
    while (i < 4)
    {
      localObject2 = this.mTcpServerList;
      j = this.mTcpServerListIndex;
      this.mTcpServerListIndex = (j + 1);
      localObject1[i] = ((ServerProfile)((List)localObject2).get(j));
      i += 1;
    }
    i = 0;
    while (i < 4)
    {
      MiLinkLog.i(this.TAG, "reset , so try backuplist4, server No." + i + ":" + localObject1[i]);
      i += 1;
    }
    return (ServerProfile[])localObject1;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\MiLinkBackupServerManagerForSimpleChannel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */