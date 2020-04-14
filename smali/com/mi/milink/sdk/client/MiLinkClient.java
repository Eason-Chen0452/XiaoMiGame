package com.mi.milink.sdk.client;

import android.text.TextUtils;
import com.mi.milink.sdk.account.AnonymousAccount;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.MessageTask;
import com.mi.milink.sdk.base.os.timer.AlarmClockService;
import com.mi.milink.sdk.client.ipc.ClientLog;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.ClientActionEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ClientActionEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEvent.SessionManagerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionManagerStateChangeEvent;
import com.mi.milink.sdk.mipush.MiPushManager;
import com.mi.milink.sdk.mipush.MiPushMessageListener;
import com.mi.milink.sdk.proto.PushPacketProto.KickMessage;
import com.mi.milink.sdk.service.MiLinkExceptionHandler;
import com.mi.milink.sdk.session.persistent.MnsPacketDispatcher;
import com.mi.milink.sdk.session.persistent.SessionManager;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

public class MiLinkClient
{
  private static MiLinkClient INSTANCE;
  private static final String TAG = "MiLinkClient";
  private IEventListener mEventCallback;
  private MiLinkObserver mMiLinkObserver;
  private boolean mMiPushSwitch = false;
  
  private MiLinkClient()
  {
    EventBus.getDefault().register(this);
    Thread.setDefaultUncaughtExceptionHandler(new MiLinkExceptionHandler());
    MiLinkLog.w("MiLinkClient", "MiLinkClient no ipc build");
    AlarmClockService.start();
  }
  
  public static void clearNotification(int paramInt)
  {
    MiPushManager.getInstance().clearNotification(paramInt);
  }
  
  public static void close()
  {
    try
    {
      SessionManager.getInstance().close();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static boolean enableConnectModeManual(boolean paramBoolean)
  {
    return SessionManager.getInstance().enableConnectionManualMode(paramBoolean);
  }
  
  public static void forceReconnect()
  {
    MiLinkLog.i("MiLinkClient", "forceReconnet");
    EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientForceOpen));
  }
  
  public static long getAnonymousAccountId()
  {
    try
    {
      long l = Long.parseLong(AnonymousAccount.getInstance().getUserId());
      return l;
    }
    catch (Exception localException) {}
    return 0L;
  }
  
  private static MiLinkClient getInstance()
  {
    if (INSTANCE == null) {}
    try
    {
      if (INSTANCE == null) {
        INSTANCE = new MiLinkClient();
      }
      return INSTANCE;
    }
    finally {}
  }
  
  public static int getMiLinkConnectState()
  {
    return SessionManager.getInstance().getSessionState();
  }
  
  public static void init(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, boolean paramBoolean)
  {
    MiLinkLog.w("MiLinkClient", "init, milinkversion=" + Global.getMiLinkVersion() + "_" + Global.getMiLinkSubVersion());
    MiLinkLog.v("MiLinkClient", "init service,passportInit=" + paramBoolean + " ,app is serviceToken=" + paramString2 + ", serviceToken.length= " + paramString2.length() + "security=" + paramString3 + ", security.length= " + paramString3.length());
    if (ClientAppInfo.isSupportMiPush()) {
      MiPushManager.getInstance().registerMiPush(paramString1, new MiLinkClient.1());
    }
    MiAccountManager.getInstance().setUserId(paramString1);
    SessionManager.getInstance().initApp();
    MiAccountManager.getInstance().login(paramString1, paramString2, paramString3, paramArrayOfByte, paramBoolean);
  }
  
  public static void init(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2)
  {
    MiLinkLog.w("MiLinkClient", "init, milinkversion=" + Global.getMiLinkVersion() + "_" + Global.getMiLinkSubVersion());
    MiLinkLog.v("MiLinkClient", "init service,passportInit=" + paramBoolean1 + " ,app  is serviceToken=" + paramString2 + ", serviceToken.length= " + paramString2.length() + "security=" + paramString3 + ", security.length= " + paramString3.length());
    MiAccountManager.getInstance().setUserId(paramString1);
    SessionManager.getInstance().initApp();
    MiAccountManager.getInstance().login(paramString1, paramString2, paramString3, paramArrayOfByte, paramBoolean1);
  }
  
  public static void initUseAnonymousMode()
  {
    SessionManager.getInstance().initApp();
    MiAccountManager.getInstance().initUseAnonymousMode();
  }
  
  public static boolean isMiLinkLogined()
  {
    MiLinkLog.i("MiLinkClient", "isMiLinkLogined");
    return SessionManager.getInstance().isMiLinkLogined();
  }
  
  public static void logoff()
  {
    MiLinkLog.i("MiLinkClient", "logoff");
    if (ClientAppInfo.isSupportMiPush()) {
      MiPushManager.getInstance().logoff();
    }
    MiAccountManager.getInstance().userLogoff();
  }
  
  public static void sendAsync(PacketData paramPacketData)
  {
    SessionManager.getInstance().sendData(paramPacketData, 0, null);
  }
  
  public static void sendAsync(PacketData paramPacketData, int paramInt)
  {
    SessionManager.getInstance().sendData(paramPacketData, paramInt, null);
  }
  
  public static void sendAsync(PacketData paramPacketData, int paramInt, SendPacketListener paramSendPacketListener)
  {
    SessionManager.getInstance().sendData(paramPacketData, paramInt, new MiLinkClient.2(paramSendPacketListener));
  }
  
  public static PacketData sendSync(PacketData paramPacketData, int paramInt)
  {
    if (paramPacketData == null) {
      throw new IllegalArgumentException(" packet is null");
    }
    if (TextUtils.isEmpty(paramPacketData.getCommand())) {
      throw new IllegalArgumentException("Packet's command is null");
    }
    paramPacketData = new MiLinkClient.3(paramPacketData, paramInt).start();
    long l = paramInt + 5000;
    try
    {
      paramPacketData = paramPacketData.getResult(l, TimeUnit.MILLISECONDS);
      return paramPacketData;
    }
    catch (InterruptedException paramPacketData)
    {
      MiLinkLog.e("MiLinkClient", "task InterruptedException", paramPacketData);
      return null;
    }
    catch (ExecutionException paramPacketData)
    {
      for (;;)
      {
        Throwable localThrowable = paramPacketData.getCause();
        if ((localThrowable != null) && ((localThrowable instanceof MiLinkException))) {
          MiLinkLog.e("MiLinkClient", "", localThrowable);
        } else {
          MiLinkLog.e("MiLinkClient", "task ExecutionException", paramPacketData);
        }
      }
    }
    catch (CancellationException paramPacketData)
    {
      for (;;)
      {
        MiLinkLog.e("MiLinkClient", "task CancellationException", paramPacketData);
      }
    }
    catch (TimeoutException paramPacketData)
    {
      for (;;)
      {
        MiLinkLog.e("MiLinkClient", "task TimeoutException, detailName=" + paramPacketData.getClass().getName());
      }
    }
  }
  
  public static void setAllowAnonymousLoginSwitch(boolean paramBoolean)
  {
    MiAccountManager.getInstance().setAnonymousModeSwitch(paramBoolean);
  }
  
  public static void setDispatchPacketDelayMillis(int paramInt)
  {
    MnsPacketDispatcher.getInstance().setDispatchPacketDelayTime(paramInt);
  }
  
  public static void setEventListener(IEventListener paramIEventListener)
  {
    getInstance().mEventCallback = paramIEventListener;
  }
  
  public static void setIpAndPortInManualMode(String paramString, int paramInt)
  {
    SessionManager.getInstance().setIpAndPortInManualMode(paramString, paramInt);
  }
  
  public static void setLanguage(String paramString)
  {
    Global.getClientAppInfo().setLanguageCode(paramString);
  }
  
  public static void setMiPushMessageListener(MiPushMessageListener paramMiPushMessageListener)
  {
    MiPushManager.getInstance().setMessageListener(paramMiPushMessageListener);
  }
  
  public static void setMilinkLogLevel(int paramInt)
  {
    MiLinkLog.setLogcatTraceLevel(paramInt);
    MiLinkLog.setFileTraceLevel(paramInt);
    ClientLog.setLogcatTraceLevel(paramInt);
    ClientLog.setFileTraceLevel(paramInt);
  }
  
  public static void setMilinkStateObserver(MiLinkObserver paramMiLinkObserver)
  {
    getInstance().mMiLinkObserver = paramMiLinkObserver;
  }
  
  public static void setPacketListener(IPacketListener paramIPacketListener)
  {
    MnsPacketDispatcher.getInstance().setCallback(paramIPacketListener);
  }
  
  public static boolean setTimeoutMultiply(float paramFloat)
  {
    if ((paramFloat < 1.0F) || (paramFloat > 10.0F))
    {
      ClientLog.e("MiLinkClient", "illegal timeoutMultiply，timeoutMultiply between 1-10");
      return false;
    }
    ConfigManager.getInstance().setTimeoutMultiply(paramFloat);
    return true;
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.SessionManagerNotificationEvent paramSessionManagerNotificationEvent)
  {
    switch (MiLinkClient.4.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionManagerNotificationEvent$EventType[paramSessionManagerNotificationEvent.mEventType.ordinal()])
    {
    default: 
      return;
    case 1: 
      onEventGetServiceToken();
      return;
    case 2: 
      int i = 0;
      long l = 0L;
      String str = "";
      if (paramSessionManagerNotificationEvent.mObject != null)
      {
        paramSessionManagerNotificationEvent = (PushPacketProto.KickMessage)paramSessionManagerNotificationEvent.mObject;
        i = paramSessionManagerNotificationEvent.getType();
        l = paramSessionManagerNotificationEvent.getTime();
        str = paramSessionManagerNotificationEvent.getDevice();
      }
      onEventKickByServer(i, l * 1000L, str);
      return;
    case 3: 
      onEventServiceTokenExpired();
      return;
    case 4: 
      onEventShouldUpdate();
      return;
    }
    onEventInvilidPacket();
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.SessionManagerStateChangeEvent paramSessionManagerStateChangeEvent)
  {
    switch (MiLinkClient.4.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionManagerStateChangeEvent$EventType[paramSessionManagerStateChangeEvent.mEventType.ordinal()])
    {
    default: 
      return;
    case 1: 
      onLoginStateChanged(paramSessionManagerStateChangeEvent.mNewState);
      return;
    }
    onSessionStateChanged(paramSessionManagerStateChangeEvent.mOldState, paramSessionManagerStateChangeEvent.mNewState);
  }
  
  protected void onEventGetServiceToken()
  {
    if (this.mEventCallback != null) {
      this.mEventCallback.onEventGetServiceToken();
    }
  }
  
  protected void onEventInvilidPacket()
  {
    if (this.mEventCallback != null) {
      this.mEventCallback.onEventInvalidPacket();
    }
  }
  
  protected void onEventKickByServer(int paramInt, long paramLong, String paramString)
  {
    if (this.mEventCallback != null) {
      this.mEventCallback.onEventKickedByServer(paramInt, paramLong, paramString);
    }
  }
  
  protected void onEventServiceTokenExpired()
  {
    if (this.mEventCallback != null) {
      this.mEventCallback.onEventServiceTokenExpired();
    }
  }
  
  protected void onEventShouldUpdate()
  {
    if (this.mEventCallback != null) {
      this.mEventCallback.onEventShouldCheckUpdate();
    }
  }
  
  protected void onLoginStateChanged(int paramInt)
  {
    if (this.mMiLinkObserver != null) {
      this.mMiLinkObserver.onLoginStateUpdate(paramInt);
    }
  }
  
  protected void onSessionStateChanged(int paramInt1, int paramInt2)
  {
    if (this.mMiLinkObserver != null) {
      this.mMiLinkObserver.onServerStateUpdate(paramInt1, paramInt2);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\MiLinkClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */