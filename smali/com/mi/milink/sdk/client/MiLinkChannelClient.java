package com.mi.milink.sdk.client;

import android.text.TextUtils;
import com.mi.milink.sdk.account.AnonymousAccount;
import com.mi.milink.sdk.account.ChannelAccount;
import com.mi.milink.sdk.account.manager.MiChannelAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.MessageTask;
import com.mi.milink.sdk.client.ipc.ClientLog;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.debug.MiLinkMonitor;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ClientActionEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ClientActionEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionManagerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent;
import com.mi.milink.sdk.mipush.MiPushManager;
import com.mi.milink.sdk.session.common.ResponseListener;
import com.mi.milink.sdk.session.persistent.MnsPacketDispatcher;
import com.mi.milink.sdk.session.persistent.UploadLogManager;
import com.mi.milink.sdk.session.simplechannel.SessionManagerForSimpleChannel;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

public class MiLinkChannelClient
{
  private final String TAG = "MiLinkChannelClient";
  private MiChannelAccountManager accountManager;
  private int appId;
  private EventBus channelEventBus;
  boolean isInit = false;
  private IEventListener mEventCallback;
  private MiLinkObserver mMiLinkObserver;
  private SessionManagerForSimpleChannel sessionManager;
  
  public MiLinkChannelClient()
  {
    this.appId = Global.getClientAppInfo().getAppId();
    this.channelEventBus = new EventBus();
    init();
  }
  
  public MiLinkChannelClient(int paramInt)
  {
    this.appId = paramInt;
    this.channelEventBus = new EventBus();
    init();
  }
  
  public static long getAnonymousAccountId()
  {
    try
    {
      long l = Long.parseLong(ChannelAccount.getInstance().getUserId());
      return l;
    }
    catch (Exception localException) {}
    return 0L;
  }
  
  private void init()
  {
    MiLinkLog.w("MiLinkChannelClient", "MiLinkChannelClient no ipc build,host version=" + Global.getClientAppInfo().getVersionCode());
  }
  
  public void forceReconnect()
  {
    MiLinkLog.i("MiLinkChannelClient", "forceReconnet");
    this.channelEventBus.post(new MiLinkEventForSimpleChannel.ClientActionEvent(MiLinkEventForSimpleChannel.ClientActionEvent.EventType.ClientForceOpen));
  }
  
  public int getMiLinkConnectState()
  {
    return this.sessionManager.getSessionState();
  }
  
  public void initUseChannelMode()
  {
    try
    {
      if (!this.channelEventBus.isRegistered(this)) {
        this.channelEventBus.register(this);
      }
      if (this.accountManager == null)
      {
        MiLinkLog.d("MiLinkChannelClient", "initUseChannelMode accountManager==null");
        this.accountManager = new MiChannelAccountManager(this.channelEventBus, this.appId);
      }
      if (this.sessionManager == null)
      {
        MiLinkLog.d("MiLinkChannelClient", "initUseChannelMode sessionManager==null");
        this.sessionManager = new SessionManagerForSimpleChannel(this.channelEventBus, this.accountManager, this.appId);
        if (!this.channelEventBus.isRegistered(this.sessionManager)) {
          this.channelEventBus.register(this.sessionManager);
        }
      }
      this.sessionManager.initApp();
      this.accountManager.initUserChannelMode();
      this.isInit = true;
      if (ClientAppInfo.isSupportMiPush()) {
        MiPushManager.getInstance().registerMiPush(null, new MiLinkChannelClient.1(this));
      }
      return;
    }
    finally {}
  }
  
  public void internalClose()
  {
    try
    {
      this.sessionManager.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean isMiLinkLogined()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 123	com/mi/milink/sdk/client/MiLinkChannelClient:sessionManager	Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;
    //   6: ifnull +42 -> 48
    //   9: ldc 26
    //   11: new 78	java/lang/StringBuilder
    //   14: dup
    //   15: ldc -72
    //   17: invokespecial 83	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_0
    //   21: getfield 123	com/mi/milink/sdk/client/MiLinkChannelClient:sessionManager	Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;
    //   24: invokevirtual 187	com/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel:isMilinkLogined	()Z
    //   27: invokevirtual 190	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   30: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokestatic 105	com/mi/milink/sdk/debug/MiLinkLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 123	com/mi/milink/sdk/client/MiLinkChannelClient:sessionManager	Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;
    //   40: invokevirtual 187	com/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel:isMilinkLogined	()Z
    //   43: istore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: iload_1
    //   47: ireturn
    //   48: ldc 26
    //   50: ldc -64
    //   52: invokestatic 105	com/mi/milink/sdk/debug/MiLinkLog:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   55: iconst_0
    //   56: istore_1
    //   57: goto -13 -> 44
    //   60: astore_2
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_2
    //   64: athrow
    //   65: astore_2
    //   66: goto -11 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	MiLinkChannelClient
    //   43	14	1	bool	boolean
    //   60	4	2	localObject	Object
    //   65	1	2	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   2	44	60	finally
    //   48	55	60	finally
    //   2	44	65	java/lang/Exception
    //   48	55	65	java/lang/Exception
  }
  
  public void logoff()
  {
    try
    {
      MiLinkLog.i("MiLinkChannelClient", "logoff");
      if (this.accountManager != null) {
        this.accountManager.userLogoff();
      }
      if (this.channelEventBus.isRegistered(this)) {
        this.channelEventBus.unregister(this);
      }
      if (this.channelEventBus.isRegistered(this.sessionManager)) {
        this.channelEventBus.unregister(this.sessionManager);
      }
      this.accountManager = null;
      this.sessionManager = null;
      return;
    }
    finally {}
  }
  
  @Subscribe
  public void onEvent(MiLinkEventForSimpleChannel.SessionManagerNotificationEvent paramSessionManagerNotificationEvent)
  {
    switch (MiLinkChannelClient.3.$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType[paramSessionManagerNotificationEvent.mEventType.ordinal()])
    {
    default: 
      return;
    case 1: 
      onEventGetServiceToken();
      return;
    }
    onEventInvilidPacket();
  }
  
  @Subscribe
  public void onEvent(MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent paramSessionManagerStateChangeEvent)
  {
    switch (MiLinkChannelClient.3.$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType[paramSessionManagerStateChangeEvent.mEventType.ordinal()])
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
  
  public void sendAsync(PacketData paramPacketData)
  {
    try
    {
      if (!this.isInit) {
        initUseChannelMode();
      }
      if (this.sessionManager != null) {
        this.sessionManager.sendData(paramPacketData, 0, null);
      }
      return;
    }
    finally {}
  }
  
  public void sendAsync(PacketData paramPacketData, int paramInt)
  {
    try
    {
      if (!this.isInit) {
        initUseChannelMode();
      }
      if (this.sessionManager != null) {
        this.sessionManager.sendData(paramPacketData, paramInt, null);
      }
      return;
    }
    finally {}
  }
  
  public void sendAsyncWithResponse(PacketData paramPacketData, int paramInt, ResponseListener paramResponseListener)
  {
    try
    {
      if (!this.isInit) {
        initUseChannelMode();
      }
      if (this.sessionManager != null) {
        this.sessionManager.sendData(paramPacketData, paramInt, paramResponseListener);
      }
      return;
    }
    finally {}
  }
  
  public PacketData sendDataBySimpleChannel(PacketData paramPacketData, int paramInt)
  {
    long l1 = System.currentTimeMillis();
    if (!this.isInit) {
      initUseChannelMode();
    }
    if (paramPacketData == null) {
      throw new IllegalArgumentException(" packet is null");
    }
    if (TextUtils.isEmpty(paramPacketData.getCommand())) {
      throw new IllegalArgumentException("Packet's command is null");
    }
    Object localObject = new MiLinkChannelClient.2(this, paramPacketData, paramInt).start();
    long l2 = paramInt + 5000;
    try
    {
      localObject = ((MessageTask)localObject).getChannelResult(l2, TimeUnit.MILLISECONDS);
      return (PacketData)localObject;
    }
    catch (InterruptedException localInterruptedException)
    {
      MiLinkLog.e("MiLinkChannelClient", "task InterruptedException", localInterruptedException);
      if ((this.sessionManager != null) && (this.sessionManager.getSessionState() == 1)) {
        this.sessionManager.setState(0);
      }
      MiLinkLog.e("MiLinkChannelClient", "task unknown state");
      paramPacketData.setBusiCode(520);
      MiLinkMonitor.getInstance().trace("", 0, paramPacketData.getCommand(), 520, l1, System.currentTimeMillis(), 0, 0, 0);
      return paramPacketData;
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;)
      {
        Throwable localThrowable = localExecutionException.getCause();
        if ((localThrowable != null) && ((localThrowable instanceof MiLinkException))) {
          MiLinkLog.e("MiLinkChannelClient", "", localThrowable);
        } else {
          MiLinkLog.e("MiLinkChannelClient", "task ExecutionException", localExecutionException);
        }
      }
    }
    catch (CancellationException localCancellationException)
    {
      for (;;)
      {
        MiLinkLog.e("MiLinkChannelClient", "task CancellationException", localCancellationException);
      }
    }
    catch (TimeoutException localTimeoutException)
    {
      do
      {
        do
        {
          MiLinkLog.e("MiLinkChannelClient", "task TimeoutException, detailName=" + localTimeoutException.getClass().getName());
          paramPacketData.setBusiCode(515);
          localPacketData1 = paramPacketData;
        } while (this.sessionManager == null);
        PacketData localPacketData1 = paramPacketData;
      } while (this.sessionManager.getSessionState() != 1);
      this.sessionManager.setState(0);
      return paramPacketData;
    }
    catch (Exception localException)
    {
      do
      {
        do
        {
          MiLinkLog.e("MiLinkChannelClient", "task Exception, detailName=" + localException.getClass().getName());
          paramPacketData.setBusiCode(519);
          MiLinkMonitor.getInstance().trace("", 0, paramPacketData.getCommand(), 519, l1, System.currentTimeMillis(), 0, 0, 0);
          localPacketData2 = paramPacketData;
        } while (this.sessionManager == null);
        PacketData localPacketData2 = paramPacketData;
      } while (this.sessionManager.getSessionState() != 1);
      this.sessionManager.setState(0);
    }
    return paramPacketData;
  }
  
  public void setDispatchPacketDelayMillis(int paramInt)
  {
    MnsPacketDispatcher.getInstance().setDispatchPacketDelayTime(paramInt);
  }
  
  public void setEventListener(IEventListener paramIEventListener)
  {
    this.mEventCallback = paramIEventListener;
  }
  
  public void setKeepAliveTime(int paramInt)
  {
    try
    {
      if (this.accountManager != null) {
        this.accountManager.setKeepAliveTime(paramInt);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void setMiLinkLogLevel(int paramInt)
  {
    MiLinkLog.setLogcatTraceLevel(paramInt);
    MiLinkLog.setFileTraceLevel(paramInt);
    ClientLog.setLogcatTraceLevel(paramInt);
    ClientLog.setFileTraceLevel(paramInt);
  }
  
  public void setMilinkStateObserver(MiLinkObserver paramMiLinkObserver)
  {
    this.mMiLinkObserver = paramMiLinkObserver;
  }
  
  public void setPacketListener(IPacketListener paramIPacketListener)
  {
    MnsPacketDispatcher.getInstance().setCallback(paramIPacketListener);
  }
  
  public boolean uploadMilinkLog(boolean paramBoolean)
  {
    try
    {
      MiChannelAccountManager localMiChannelAccountManager = new MiChannelAccountManager(null, this.appId);
      localMiChannelAccountManager.setUserId(System.currentTimeMillis());
      MiLinkLog.d("MiLinkChannelClient", "temp userid for upload log : " + localMiChannelAccountManager.getUserId());
      paramBoolean = UploadLogManager.uploadMilinkLog(null, localMiChannelAccountManager.getCurrentAccount(), paramBoolean);
      return paramBoolean;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        localException = localException;
        paramBoolean = false;
      }
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\client\MiLinkChannelClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */