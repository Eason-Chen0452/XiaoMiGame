package com.mi.milink.sdk.session.persistent;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.base.os.info.WifiDash;
import com.mi.milink.sdk.base.os.timer.AlarmClockService;
import com.mi.milink.sdk.config.MiLinkIpInfoManager;
import com.mi.milink.sdk.connection.DomainManager;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.session.common.SessionConst;

class SessionManager$NetworkChangeReceiver$1
  implements Runnable
{
  SessionManager$NetworkChangeReceiver$1(SessionManager.NetworkChangeReceiver paramNetworkChangeReceiver) {}
  
  public void run()
  {
    try
    {
      Object localObject1 = ((ConnectivityManager)Global.getSystemService("connectivity")).getActiveNetworkInfo();
      MiLinkLog.w("SessionManager", "NetworkChangeReceiver, networkInfo=" + localObject1);
      if ((NetworkDash.isAvailable()) && (NetworkDash.isWifi())) {
        MiLinkLog.e("SessionManager", "WIFI info : " + WifiDash.getWifiInfo());
      }
      boolean bool = SessionManager.NetworkChangeReceiver.access$1400(this.this$1, (NetworkInfo)localObject1);
      MiLinkLog.w("SessionManager", "isNetworkChange : " + bool);
      SessionManager.NetworkChangeReceiver.access$1500(this.this$1, (NetworkInfo)localObject1);
      if ((localObject1 == null) || (!((NetworkInfo)localObject1).isAvailable())) {
        break label400;
      }
      AlarmClockService.startIfNeed();
      if (bool)
      {
        MiLinkLog.i("SessionManager", "NetworkChangeReceiver, network change need forceOpen");
        SessionConst.setNewApn(true);
        localObject1 = MiLinkIpInfoManager.getInstance().getDefaultHost();
        if (MiAccountManager.getInstance().appHasLogined()) {
          DomainManager.getInstance().startResolve((String)localObject1);
        }
        Global.getMainHandler().postDelayed(new SessionManager.NetworkChangeReceiver.1.1(this), 2000L);
        return;
      }
      MiLinkLog.i("SessionManager", "NetworkChangeReceiver, network not change, mState=" + SessionManager.access$400(this.this$1.this$0));
      if (SessionManager.access$400(this.this$1.this$0) == 0)
      {
        localObject1 = MiLinkIpInfoManager.getInstance().getDefaultHost();
        if (MiAccountManager.getInstance().appHasLogined()) {
          DomainManager.getInstance().startResolve((String)localObject1);
        }
        Global.getMainHandler().postDelayed(new SessionManager.NetworkChangeReceiver.1.2(this), 2000L);
        return;
      }
    }
    catch (Exception localException)
    {
      SessionManager.NetworkChangeReceiver.access$1500(this.this$1, null);
      MiLinkLog.e("SessionManager", "Get networkInfo fail", localException);
      return;
    }
    Object localObject2 = SessionManager.access$1600(this.this$1.this$0);
    if ((localObject2 != null) && (((Session)localObject2).isAvailable()))
    {
      ((Session)localObject2).ping();
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder("Session :");
    if (localObject2 == null) {}
    for (localObject2 = "true";; localObject2 = "false")
    {
      MiLinkLog.d("SessionManager", (String)localObject2 + "session state : " + SessionManager.access$400(this.this$1.this$0));
      SessionManager.access$1700(this.this$1.this$0, 0);
      SessionManager.access$1800(this.this$1.this$0);
      SessionManager.access$1900(this.this$1.this$0);
      this.this$1.this$0.login("ClientForceOpen");
      return;
      label400:
      if (SessionManager.access$400(this.this$1.this$0) != 0) {
        this.this$1.this$0.close();
      }
      MiLinkLog.i("SessionManager", "network is disconnected()");
      return;
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionManager$NetworkChangeReceiver$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */