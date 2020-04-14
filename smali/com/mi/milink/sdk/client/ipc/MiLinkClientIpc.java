package com.mi.milink.sdk.client.ipc;

import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.aidl.IService;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.MessageTask;
import com.mi.milink.sdk.client.IEventListener;
import com.mi.milink.sdk.client.IPacketListener;
import com.mi.milink.sdk.client.MiLinkException;
import com.mi.milink.sdk.client.MiLinkObserver;
import com.mi.milink.sdk.client.SendPacketListener;
import com.mi.milink.sdk.client.ipc.internal.MiLinkServiceHost;
import com.mi.milink.sdk.client.ipc.internal.MnsSendPacketListener;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkMonitor;
import com.mi.milink.sdk.mipush.MiPushManager;
import com.mi.milink.sdk.mipush.MiPushMessageListener;
import java.util.Vector;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public class MiLinkClientIpc
  extends MiLinkServiceHost
{
  private static MiLinkClientIpc INSTANCE;
  static boolean mPassportInit = false;
  Vector<Pair<PacketData, SendPacketListener>> mServiceNotReadyCache = new Vector();
  boolean sendingMilinkServiceReadyCache = false;
  
  private MiLinkClientIpc()
  {
    super(Global.getApplicationContext());
  }
  
  public static void clearNotification(int paramInt)
  {
    MiPushManager.getInstance().clearNotification(paramInt);
  }
  
  public static boolean enableConnectModeManual(boolean paramBoolean)
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null) {
        return localIService.enableConnectionManualMode(paramBoolean);
      }
      ClientLog.v("MiLinkClient", "enableConnectModeManual but remote service = null");
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ClientLog.e("MiLinkClient", "error when setConnectModeAuto", localRemoteException);
      }
    }
    return false;
  }
  
  public static void fastLogin(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte)
  {
    ClientLog.v("MiLinkClient", "fastLogin");
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.fastLogin(paramString1, paramString2, paramString3, paramArrayOfByte);
        return;
      }
      ClientLog.v("MiLinkClient", "registerBind but remote service = null");
      return;
    }
    catch (RemoteException paramString1)
    {
      ClientLog.e("MiLinkClient", "error when registerBind", paramString1);
    }
  }
  
  public static void forceReconnet()
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.forceReconnet();
        return;
      }
      ClientLog.v("MiLinkClient", "forceReconnet but remote service = null");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ClientLog.e("MiLinkClient", "error when forceReconnet", localRemoteException);
    }
  }
  
  public static long getAnonymousAccountId()
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null) {
        return localIService.getAnonymousAccountId();
      }
      ClientLog.v("MiLinkClient", "getSuid but remote service = null");
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ClientLog.e("MiLinkClient", "error when getSuid", localRemoteException);
      }
    }
    return 0L;
  }
  
  public static MiLinkClientIpc getInstance()
  {
    if (INSTANCE == null) {}
    try
    {
      if (INSTANCE == null) {
        INSTANCE = new MiLinkClientIpc();
      }
      return INSTANCE;
    }
    finally {}
  }
  
  public static int getMiLinkConnectState()
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null) {
        return localIService.getServerState();
      }
      ClientLog.v("MiLinkClient", "getMiLinkConnectState but remote service = null");
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ClientLog.e("MiLinkClient", "error when getMiLinkConnectState", localRemoteException);
      }
    }
    return 0;
  }
  
  public static IService getRemoteService()
  {
    return getInstance().getRemoteServiceProxy();
  }
  
  public static String getSuid()
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null) {
        return localIService.getSuid();
      }
      ClientLog.v("MiLinkClient", "getSuid but remote service = null");
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ClientLog.e("MiLinkClient", "error when getSuid", localRemoteException);
      }
    }
    return "";
  }
  
  public static boolean init(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    ClientLog.w("MiLinkClient", "init, milinkversion=" + Global.getMiLinkVersion() + "_" + Global.getMiLinkSubVersion());
    ClientLog.w("MiLinkClient", "init service,passportInit=" + paramBoolean + " ,app  is serviceToken=" + paramString2 + ", serviceToken.length= " + paramString2.length() + "security=" + paramString3 + ", security.length= " + paramString3.length());
    if (!mPassportInit) {
      mPassportInit = paramBoolean;
    }
    MiAccountManager.getInstance().setUserId(paramString1);
    if (ClientAppInfo.isSupportMiPush()) {
      MiPushManager.getInstance().registerMiPush(paramString1, new MiLinkClientIpc.1());
    }
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.init(paramString1, paramString2, paramString3, paramArrayOfByte, mPassportInit);
        mPassportInit = false;
        return true;
      }
      ClientLog.v("MiLinkClient", "init but remote service = null");
    }
    catch (RemoteException paramString1)
    {
      for (;;)
      {
        ClientLog.e("MiLinkClient", "error when init", paramString1);
      }
    }
    return false;
  }
  
  public static void initUseAnonymousMode()
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.initUseAnonymousMode();
        return;
      }
      ClientLog.v("MiLinkClient", "initUseAnonymousMode but remote service = null");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ClientLog.e("MiLinkClient", "error when initUseAnonymousMode", localRemoteException);
    }
  }
  
  public static boolean isMiLinkLogined()
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null) {
        return localIService.isMiLinkLogined();
      }
      ClientLog.v("MiLinkClient", "isMiLinkLogined but remote service = null");
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ClientLog.e("MiLinkClient", "error when isMiLinkLogined", localRemoteException);
      }
    }
    return false;
  }
  
  public static void logoff()
  {
    if (ClientAppInfo.isSupportMiPush()) {
      MiPushManager.getInstance().logoff();
    }
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.logoff();
        getInstance().stopService();
        return;
      }
      ClientLog.v("MiLinkClient", "logoff but remote service = null");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ClientLog.e("MiLinkClient", "error when logoff", localRemoteException);
    }
  }
  
  public static void sendAsync(PacketData paramPacketData)
  {
    sendAsync(paramPacketData, 0);
  }
  
  public static void sendAsync(PacketData paramPacketData, int paramInt)
  {
    sendAsync(paramPacketData, paramInt, null);
  }
  
  public static void sendAsync(PacketData paramPacketData, int paramInt, SendPacketListener paramSendPacketListener)
  {
    sendAsync(paramPacketData, paramInt, paramSendPacketListener, false);
  }
  
  public static void sendAsync(PacketData paramPacketData, int paramInt, SendPacketListener paramSendPacketListener, boolean paramBoolean)
  {
    if (paramPacketData == null) {
      throw new IllegalArgumentException("Ary you kidding me ? packet is null");
    }
    if (TextUtils.isEmpty(paramPacketData.getCommand())) {
      throw new IllegalArgumentException("Packet's command is null");
    }
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        if (paramSendPacketListener == null)
        {
          localIService.sendAsyncWithResponse(paramPacketData, paramInt, null);
          return;
        }
        localIService.sendAsyncWithResponse(paramPacketData, paramInt, new MnsSendPacketListener(paramSendPacketListener));
        return;
      }
    }
    catch (RemoteException paramPacketData)
    {
      ClientLog.e("MiLinkClient", "error when sendAsync", paramPacketData);
      return;
    }
    if (!paramBoolean)
    {
      getInstance().addToServiceNotReadyCache(new Pair(paramPacketData, paramSendPacketListener));
      ClientLog.v("MiLinkClient", "sendAsync but remote service = null,try add to cache");
      return;
    }
    if (paramSendPacketListener != null) {
      paramSendPacketListener.onFailed(-3, "milink-service not ready!");
    }
  }
  
  public static PacketData sendSync(PacketData paramPacketData, int paramInt)
  {
    Object localObject = new MiLinkClientIpc.3(paramPacketData, paramInt).start();
    long l1 = System.currentTimeMillis();
    long l2 = paramInt + 5000;
    try
    {
      localObject = ((MessageTask)localObject).getResult(l2, TimeUnit.MILLISECONDS);
      MiLinkMonitor.getInstance().trace("", 0, ((PacketData)localObject).getCommand(), ((PacketData)localObject).getBusiCode(), l1, System.currentTimeMillis(), 0, ((PacketData)localObject).getResponseSize(), ((PacketData)localObject).getSeqNo());
      return (PacketData)localObject;
    }
    catch (InterruptedException paramPacketData)
    {
      ClientLog.e("MiLinkClient", "task InterruptedException", paramPacketData);
      return null;
    }
    catch (ExecutionException paramPacketData)
    {
      for (;;)
      {
        localObject = paramPacketData.getCause();
        if ((localObject != null) && ((localObject instanceof MiLinkException))) {
          ClientLog.e("MiLinkClient", "", (Throwable)localObject);
        } else {
          ClientLog.e("MiLinkClient", "task ExecutionException", paramPacketData);
        }
      }
    }
    catch (CancellationException paramPacketData)
    {
      for (;;)
      {
        ClientLog.e("MiLinkClient", "task CancellationException", paramPacketData);
      }
    }
    catch (TimeoutException localTimeoutException)
    {
      for (;;)
      {
        MiLinkMonitor.getInstance().trace("", 0, paramPacketData.getCommand(), 515, l1, System.currentTimeMillis(), 0, 0, 0);
        ClientLog.e("MiLinkClient", "task TimeoutException, detailName=" + localTimeoutException.getClass().getName());
      }
    }
  }
  
  public static void setAllowAnonymousLoginSwitch(boolean paramBoolean)
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.setAllowAnonymousLoginSwitch(paramBoolean);
        return;
      }
      ClientLog.v("MiLinkClient", "setAllowAnonymousLoginSwitch but remote service = null");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ClientLog.e("MiLinkClient", "error when setAllowAnonymousLoginSwitch", localRemoteException);
    }
  }
  
  public static void setEventListener(IEventListener paramIEventListener)
  {
    getInstance().mEventListener = paramIEventListener;
  }
  
  public static void setGlobalPushFlag(boolean paramBoolean)
  {
    getInstance().mGlobalPushFlag = paramBoolean;
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.setGlobalPushFlag(paramBoolean);
        return;
      }
      ClientLog.v("MiLinkClient", "setMilinkLogLevel but remote service = null");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ClientLog.e("MiLinkClient", "error when setMilinkLogLevel", localRemoteException);
    }
  }
  
  public static void setIpAndPortInManualMode(String paramString, int paramInt)
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.setIpAndPortInManualMode(paramString, paramInt);
        return;
      }
      ClientLog.v("MiLinkClient", "setIpAndPortInManualMode but remote service = null");
      return;
    }
    catch (RemoteException paramString)
    {
      ClientLog.e("MiLinkClient", "error when setIpAndPortInManualMode", paramString);
    }
  }
  
  public static void setLanguage(String paramString)
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.setLanguage(paramString);
        return;
      }
      ClientLog.v("MiLinkClient", "setMilinkLogLevel but remote service = null");
      return;
    }
    catch (RemoteException paramString)
    {
      ClientLog.e("MiLinkClient", "error when setMilinkLogLevel", paramString);
    }
  }
  
  public static void setMiPushMessageListener(MiPushMessageListener paramMiPushMessageListener)
  {
    MiPushManager.getInstance().setMessageListener(paramMiPushMessageListener);
  }
  
  public static boolean setMiPushRegId(String paramString)
  {
    ClientLog.v("MiLinkClient", "mMiPushRegId=" + paramString);
    getInstance().mMiPushRegId = paramString;
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null) {
        localIService.setMipushRegId(paramString);
      } else {
        ClientLog.v("MiLinkClient", "setMiPushRegId but remote service = null");
      }
    }
    catch (RemoteException paramString)
    {
      ClientLog.e("MiLinkClient", "error when setMiPushRegId", paramString);
    }
    return false;
  }
  
  public static void setMilinkLogLevel(int paramInt)
  {
    getInstance().mLogLevel = paramInt;
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.setMilinkLogLevel(paramInt);
        return;
      }
      ClientLog.v("MiLinkClient", "setMilinkLogLevel but remote service = null");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ClientLog.e("MiLinkClient", "error when setMilinkLogLevel", localRemoteException);
    }
  }
  
  public static void setMilinkStateObserver(MiLinkObserver paramMiLinkObserver)
  {
    ClientLog.v("MiLinkClient", "setMilinkStateObserver");
    getInstance().deleteObservers();
    getInstance().addObserver(paramMiLinkObserver);
  }
  
  public static void setPacketListener(IPacketListener paramIPacketListener)
  {
    getInstance().mPacketListener = paramIPacketListener;
  }
  
  public static boolean setTimeoutMultiply(float paramFloat)
  {
    if ((paramFloat < 1.0F) || (paramFloat > 10.0F))
    {
      ClientLog.e("MiLinkClient", "illegal timeoutMultiply，timeoutMultiply between 1-10");
      return false;
    }
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.setTimeoutMultiply(paramFloat);
        return true;
      }
      ClientLog.v("MiLinkClient", "setTimeoutMultiply but remote service = null");
      return false;
    }
    catch (RemoteException localRemoteException)
    {
      ClientLog.e("MiLinkClient", "error when setBackground", localRemoteException);
    }
    return false;
  }
  
  public static void suspectBadConnection()
  {
    try
    {
      IService localIService = getRemoteService();
      if (localIService != null)
      {
        localIService.suspectBadConnection();
        return;
      }
      ClientLog.v("MiLinkClient", "suspectBadConnection but remote service = null");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ClientLog.e("MiLinkClient", "error when suspectBadConnection", localRemoteException);
    }
  }
  
  public void addToServiceNotReadyCache(Pair<PacketData, SendPacketListener> paramPair)
  {
    try
    {
      if (this.mServiceNotReadyCache.size() > 100)
      {
        Pair localPair = (Pair)this.mServiceNotReadyCache.remove(0);
        if (localPair != null) {
          ((SendPacketListener)localPair.second).onFailed(-4, "milink-service not ready and cache queue is full!!abandon");
        }
      }
      this.mServiceNotReadyCache.add(paramPair);
      return;
    }
    catch (Exception paramPair) {}
  }
  
  public void internalStop()
  {
    killService();
  }
  
  protected void onMilinkServiceReady()
  {
    if ((!this.sendingMilinkServiceReadyCache) && (!this.mServiceNotReadyCache.isEmpty()))
    {
      this.sendingMilinkServiceReadyCache = true;
      new Thread(new MiLinkClientIpc.2(this)).start();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\ipc\MiLinkClientIpc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */