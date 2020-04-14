package com.mi.milink.sdk.service;

import android.content.Intent;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.mi.milink.sdk.account.AnonymousAccount;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.aidl.IEventCallback;
import com.mi.milink.sdk.aidl.IPacketCallback;
import com.mi.milink.sdk.aidl.ISendCallback;
import com.mi.milink.sdk.aidl.IService.Stub;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.client.IPacketListener;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.event.MiLinkEvent.ClientActionEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ClientActionEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEvent.SessionManagerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionManagerStateChangeEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SystemNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SystemNotificationEvent.EventType;
import com.mi.milink.sdk.proto.PushPacketProto.KickMessage;
import com.mi.milink.sdk.session.persistent.MnsPacketDispatcher;
import com.mi.milink.sdk.session.persistent.SessionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

public class MnsServiceBinder
  extends IService.Stub
  implements IPacketListener
{
  private static final String TAG = "MnsServiceBinder";
  private static final MnsServiceBinder sInstance = new MnsServiceBinder();
  private final RemoteCallbackList<IEventCallback> mEventCallBackList = new RemoteCallbackList();
  private final RemoteCallbackList<IPacketCallback> mPacketCallBackList = new RemoteCallbackList();
  
  private MnsServiceBinder()
  {
    EventBus.getDefault().register(this);
    MnsPacketDispatcher.getInstance().setCallback(this);
    SessionManager.getInstance();
    EventBus.getDefault().post(new MiLinkEvent.SystemNotificationEvent(MiLinkEvent.SystemNotificationEvent.EventType.ServiceCreated));
    System.currentTimeMillis();
  }
  
  public static MnsServiceBinder getInstance()
  {
    return sInstance;
  }
  
  private void onEventGetServiceToken()
  {
    MiLinkLog.v("MnsServiceBinder", "no service token, call app onEventGetServiceToken");
    Object localObject = new ArrayList();
    int k = this.mEventCallBackList.beginBroadcast();
    int j = 0;
    int i = 0;
    IEventCallback localIEventCallback;
    for (;;)
    {
      if (j >= k) {
        break label93;
      }
      localIEventCallback = (IEventCallback)this.mEventCallBackList.getBroadcastItem(j);
      try
      {
        localIEventCallback.onEventGetServiceToken();
        i = 1;
        MiLinkLog.v("MnsServiceBinder", " notify app get service token success");
        i = 1;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          MiLinkLog.v("MnsServiceBinder", "dead callback.");
          ((List)localObject).add(localIEventCallback);
        }
      }
      j += 1;
    }
    label93:
    this.mEventCallBackList.finishBroadcast();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      localIEventCallback = (IEventCallback)((Iterator)localObject).next();
      MiLinkLog.v("MnsServiceBinder", "unregister event callback.");
      this.mEventCallBackList.unregister(localIEventCallback);
    }
    if (i == 0)
    {
      long l = System.currentTimeMillis();
      MiLinkLog.v("MnsServiceBinder", "app does not run, broadcast get service token, time=" + l);
      localObject = new Intent("com.mi.milink.ACTION_GET_ST");
      ((Intent)localObject).putExtra("extra_act_time", l);
      ((Intent)localObject).setPackage(Global.getClientAppInfo().getPackageName());
      Global.sendBroadcast((Intent)localObject);
    }
  }
  
  private void onEventKickByServer(int paramInt, long paramLong, String paramString)
  {
    MiLinkLog.v("MnsServiceBinder", String.format("kicked by server, type is %d,time is %d s,device is %s call app onKickedByServer", new Object[] { Integer.valueOf(paramInt), Long.valueOf(paramLong), paramString }));
    Object localObject = new ArrayList();
    int k = this.mEventCallBackList.beginBroadcast();
    int j = 0;
    i = 0;
    IEventCallback localIEventCallback;
    if (j < k)
    {
      localIEventCallback = (IEventCallback)this.mEventCallBackList.getBroadcastItem(j);
      for (;;)
      {
        try
        {
          localIEventCallback.onEventKickedByServer(paramInt, 1000L * paramLong, paramString);
        }
        catch (Exception localException1)
        {
          try
          {
            MiLinkLog.v("MnsServiceBinder", " notify app service kicked by server success");
            i = 1;
            j += 1;
          }
          catch (Exception localException2)
          {
            for (;;)
            {
              long l;
              i = 1;
            }
          }
          localException1 = localException1;
        }
        MiLinkLog.v("MnsServiceBinder", "dead callback.");
        ((List)localObject).add(localIEventCallback);
      }
    }
    this.mEventCallBackList.finishBroadcast();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      localIEventCallback = (IEventCallback)((Iterator)localObject).next();
      MiLinkLog.v("MnsServiceBinder", "unregister event callback.");
      this.mEventCallBackList.unregister(localIEventCallback);
    }
    if (i == 0)
    {
      l = System.currentTimeMillis();
      MiLinkLog.v("MnsServiceBinder", "app does not run, broadcast kicked by server, time=" + l);
      localObject = new Intent("com.mi.milink.ACTION_KICKED_BY_SERVER");
      ((Intent)localObject).putExtra("extra_act_time", l);
      ((Intent)localObject).putExtra("extra_kicked_type", paramString);
      ((Intent)localObject).putExtra("extra_kicked_time", paramLong);
      ((Intent)localObject).putExtra("extra_kicked_device", paramString);
      ((Intent)localObject).setPackage(Global.getClientAppInfo().getPackageName());
      Global.sendBroadcast((Intent)localObject);
    }
  }
  
  private void onEventRecvInvalidPacket()
  {
    MiLinkLog.v("MnsServiceBinder", "invalid packet, call app onEventInvalidPacket ");
    Object localObject = new ArrayList();
    int k = this.mEventCallBackList.beginBroadcast();
    int j = 0;
    int i = 0;
    IEventCallback localIEventCallback;
    for (;;)
    {
      if (j >= k) {
        break label93;
      }
      localIEventCallback = (IEventCallback)this.mEventCallBackList.getBroadcastItem(j);
      try
      {
        localIEventCallback.onEventInvalidPacket();
        i = 1;
        MiLinkLog.v("MnsServiceBinder", " notify app invalid packet success");
        i = 1;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          MiLinkLog.v("MnsServiceBinder", "dead callback.");
          ((List)localObject).add(localIEventCallback);
        }
      }
      j += 1;
    }
    label93:
    this.mEventCallBackList.finishBroadcast();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      localIEventCallback = (IEventCallback)((Iterator)localObject).next();
      MiLinkLog.v("MnsServiceBinder", "unregister event callback.");
      this.mEventCallBackList.unregister(localIEventCallback);
    }
    if (i == 0)
    {
      long l = System.currentTimeMillis();
      MiLinkLog.v("MnsServiceBinder", "app does not run, broadcast invalid packet, time=" + l);
      localObject = new Intent("com.mi.milink.ACTION_INVALID_PACKET");
      ((Intent)localObject).putExtra("extra_act_time", l);
      ((Intent)localObject).setPackage(Global.getClientAppInfo().getPackageName());
      Global.sendBroadcast((Intent)localObject);
    }
  }
  
  private void onEventServiceTokenExpired()
  {
    MiLinkLog.v("MnsServiceBinder", "service token expired, call app onEventServiceTokenExpired");
    Object localObject = new ArrayList();
    int k = this.mEventCallBackList.beginBroadcast();
    int j = 0;
    int i = 0;
    IEventCallback localIEventCallback;
    for (;;)
    {
      if (j >= k) {
        break label93;
      }
      localIEventCallback = (IEventCallback)this.mEventCallBackList.getBroadcastItem(j);
      try
      {
        localIEventCallback.onEventServiceTokenExpired();
        i = 1;
        MiLinkLog.v("MnsServiceBinder", " notify app service token expired success");
        i = 1;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          MiLinkLog.v("MnsServiceBinder", "dead callback.");
          ((List)localObject).add(localIEventCallback);
        }
      }
      j += 1;
    }
    label93:
    this.mEventCallBackList.finishBroadcast();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      localIEventCallback = (IEventCallback)((Iterator)localObject).next();
      MiLinkLog.v("MnsServiceBinder", "unregister event callback.");
      this.mEventCallBackList.unregister(localIEventCallback);
    }
    if (i == 0)
    {
      long l = System.currentTimeMillis();
      MiLinkLog.v("MnsServiceBinder", "app does not run, broadcast service token expired, time=" + l);
      localObject = new Intent("com.mi.milink.ACTION_ST_EXPIRED");
      ((Intent)localObject).putExtra("extra_act_time", l);
      ((Intent)localObject).setPackage(Global.getClientAppInfo().getPackageName());
      Global.sendBroadcast((Intent)localObject);
    }
  }
  
  private void onEventShouldUpdate()
  {
    MiLinkLog.v("MnsServiceBinder", "app should check update.");
    Object localObject = new ArrayList();
    int k = this.mEventCallBackList.beginBroadcast();
    int j = 0;
    int i = 0;
    IEventCallback localIEventCallback;
    for (;;)
    {
      if (j >= k) {
        break label94;
      }
      localIEventCallback = (IEventCallback)this.mEventCallBackList.getBroadcastItem(j);
      try
      {
        localIEventCallback.onEventShouldCheckUpdate();
        i = 1;
        MiLinkLog.v("MnsServiceBinder", " notify app check update success");
        i = 1;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          MiLinkLog.v("MnsServiceBinder", "dead callback.");
          ((List)localObject).add(localIEventCallback);
        }
      }
      j += 1;
    }
    label94:
    this.mEventCallBackList.finishBroadcast();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      localIEventCallback = (IEventCallback)((Iterator)localObject).next();
      MiLinkLog.v("MnsServiceBinder", "unregister event callback.");
      this.mEventCallBackList.unregister(localIEventCallback);
    }
    if (i == 0)
    {
      long l = System.currentTimeMillis();
      MiLinkLog.v("MnsServiceBinder", "app does not run, broadcast check update, time=" + l);
      localObject = new Intent("com.mi.milink.ACTION_CHECK_UPDATE");
      ((Intent)localObject).putExtra("extra_act_time", l);
      ((Intent)localObject).setPackage(Global.getClientAppInfo().getPackageName());
      Global.sendBroadcast((Intent)localObject);
    }
  }
  
  private boolean onMiLinkLoginStateChanged(int paramInt)
  {
    MiLinkLog.i("MnsServiceBinder", "onMiLinkLoginStateChanged state=" + paramInt);
    MnsNotify.sendEvent(14, 0, Integer.valueOf(paramInt));
    return true;
  }
  
  private boolean onSessionStateChanged(int paramInt1, int paramInt2)
  {
    MiLinkLog.i("MnsServiceBinder", "Session State Changed From " + paramInt1 + " → " + paramInt2);
    if (paramInt1 != paramInt2) {
      MnsNotify.sendEvent(6, paramInt1, Integer.valueOf(paramInt2));
    }
    return true;
  }
  
  private MnsServiceBinder start(Messenger paramMessenger)
  {
    MnsNotify.setMessenger(paramMessenger);
    MnsNotify.sendEvent(10, 0, Long.valueOf(System.currentTimeMillis()));
    return this;
  }
  
  public boolean enableConnectionManualMode(boolean paramBoolean)
    throws RemoteException
  {
    return SessionManager.getInstance().enableConnectionManualMode(paramBoolean);
  }
  
  public void fastLogin(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte)
    throws RemoteException
  {
    MiLinkLog.i("MnsServiceBinder", "fastLogin");
    MiAccountManager.getInstance().login(paramString1, paramString2, paramString3, paramArrayOfByte, false);
  }
  
  public void forceReconnet()
    throws RemoteException
  {
    MiLinkLog.i("MnsServiceBinder", "forceReconnet");
    EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientForceOpen));
  }
  
  public long getAnonymousAccountId()
    throws RemoteException
  {
    try
    {
      long l = Long.parseLong(AnonymousAccount.getInstance().getUserId());
      return l;
    }
    catch (Exception localException) {}
    return 0L;
  }
  
  public int getServerState()
  {
    try
    {
      int i = SessionManager.getInstance().getSessionState();
      return i;
    }
    catch (Exception localException)
    {
      throw new Error(localException);
    }
  }
  
  public String getSuid()
    throws RemoteException
  {
    MiLinkLog.i("MnsServiceBinder", "getSuid");
    return ConfigManager.getInstance().getSuid();
  }
  
  public void init(String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, boolean paramBoolean)
    throws RemoteException
  {
    MiLinkLog.w("MnsServiceBinder", "init,passportInit=" + paramBoolean);
    SessionManager.getInstance().initApp();
    MiAccountManager.getInstance().login(paramString1, paramString2, paramString3, paramArrayOfByte, paramBoolean);
  }
  
  public void initUseAnonymousMode()
    throws RemoteException
  {
    SessionManager.getInstance().initApp();
    MiAccountManager.getInstance().initUseAnonymousMode();
  }
  
  public boolean isMiLinkLogined()
  {
    MiLinkLog.i("MnsServiceBinder", "isMiLinkLogined");
    try
    {
      boolean bool = SessionManager.getInstance().isMiLinkLogined();
      return bool;
    }
    catch (Exception localException)
    {
      throw new Error(localException);
    }
  }
  
  public void logoff()
    throws RemoteException
  {
    MiLinkLog.i("MnsServiceBinder", "logoff");
    MiAccountManager.getInstance().userLogoff();
  }
  
  public boolean onError(int paramInt, String paramString, Object paramObject)
  {
    MnsNotify.sendEvent(9, paramInt, paramString);
    return true;
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.SessionManagerNotificationEvent paramSessionManagerNotificationEvent)
  {
    switch (MnsServiceBinder.2.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionManagerNotificationEvent$EventType[paramSessionManagerNotificationEvent.mEventType.ordinal()])
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
      onEventKickByServer(i, l, str);
      return;
    case 3: 
      onEventServiceTokenExpired();
      return;
    case 4: 
      onEventShouldUpdate();
      return;
    }
    onEventRecvInvalidPacket();
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.SessionManagerStateChangeEvent paramSessionManagerStateChangeEvent)
  {
    switch (MnsServiceBinder.2.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionManagerStateChangeEvent$EventType[paramSessionManagerStateChangeEvent.mEventType.ordinal()])
    {
    default: 
      return;
    case 1: 
      onMiLinkLoginStateChanged(paramSessionManagerStateChangeEvent.mNewState);
      return;
    }
    onSessionStateChanged(paramSessionManagerStateChangeEvent.mOldState, paramSessionManagerStateChangeEvent.mNewState);
  }
  
  /* Error */
  public void onReceive(ArrayList<PacketData> paramArrayList)
  {
    // Byte code:
    //   0: new 92	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 93	java/util/ArrayList:<init>	()V
    //   7: astore 7
    //   9: ldc 10
    //   11: new 140	java/lang/StringBuilder
    //   14: dup
    //   15: ldc_w 454
    //   18: invokespecial 145	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   21: aload_1
    //   22: invokevirtual 457	java/util/ArrayList:size	()I
    //   25: invokevirtual 268	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   28: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   31: invokestatic 90	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   34: aload_0
    //   35: getfield 31	com/mi/milink/sdk/service/MnsServiceBinder:mPacketCallBackList	Landroid/os/RemoteCallbackList;
    //   38: invokevirtual 97	android/os/RemoteCallbackList:beginBroadcast	()I
    //   41: istore 4
    //   43: iconst_0
    //   44: istore_3
    //   45: iconst_0
    //   46: istore_2
    //   47: iload_3
    //   48: iload 4
    //   50: if_icmpge +81 -> 131
    //   53: aload_0
    //   54: getfield 31	com/mi/milink/sdk/service/MnsServiceBinder:mPacketCallBackList	Landroid/os/RemoteCallbackList;
    //   57: iload_3
    //   58: invokevirtual 101	android/os/RemoteCallbackList:getBroadcastItem	(I)Landroid/os/IInterface;
    //   61: checkcast 459	com/mi/milink/sdk/aidl/IPacketCallback
    //   64: astore 8
    //   66: aload 8
    //   68: aload_1
    //   69: invokeinterface 462 2 0
    //   74: ifeq +22 -> 96
    //   77: iconst_1
    //   78: istore_2
    //   79: ldc 10
    //   81: ldc_w 464
    //   84: invokestatic 90	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   87: iconst_1
    //   88: istore_2
    //   89: iload_3
    //   90: iconst_1
    //   91: iadd
    //   92: istore_3
    //   93: goto -46 -> 47
    //   96: ldc 10
    //   98: ldc_w 466
    //   101: invokestatic 90	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   104: iconst_0
    //   105: istore_2
    //   106: goto -17 -> 89
    //   109: astore 9
    //   111: ldc 10
    //   113: ldc 109
    //   115: invokestatic 364	com/mi/milink/sdk/debug/MiLinkLog:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   118: aload 7
    //   120: aload 8
    //   122: invokeinterface 115 2 0
    //   127: pop
    //   128: goto -39 -> 89
    //   131: aload_0
    //   132: getfield 31	com/mi/milink/sdk/service/MnsServiceBinder:mPacketCallBackList	Landroid/os/RemoteCallbackList;
    //   135: invokevirtual 118	android/os/RemoteCallbackList:finishBroadcast	()V
    //   138: aload 7
    //   140: invokeinterface 122 1 0
    //   145: astore 7
    //   147: aload 7
    //   149: invokeinterface 128 1 0
    //   154: ifeq +36 -> 190
    //   157: aload 7
    //   159: invokeinterface 132 1 0
    //   164: checkcast 459	com/mi/milink/sdk/aidl/IPacketCallback
    //   167: astore 8
    //   169: ldc 10
    //   171: ldc_w 468
    //   174: invokestatic 90	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   177: aload_0
    //   178: getfield 31	com/mi/milink/sdk/service/MnsServiceBinder:mPacketCallBackList	Landroid/os/RemoteCallbackList;
    //   181: aload 8
    //   183: invokevirtual 138	android/os/RemoteCallbackList:unregister	(Landroid/os/IInterface;)Z
    //   186: pop
    //   187: goto -40 -> 147
    //   190: iload_2
    //   191: ifne +93 -> 284
    //   194: invokestatic 78	java/lang/System:currentTimeMillis	()J
    //   197: lstore 5
    //   199: ldc 10
    //   201: new 140	java/lang/StringBuilder
    //   204: dup
    //   205: ldc_w 470
    //   208: invokespecial 145	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   211: aload_1
    //   212: invokevirtual 457	java/util/ArrayList:size	()I
    //   215: invokevirtual 268	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   218: ldc_w 472
    //   221: invokevirtual 286	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   224: lload 5
    //   226: invokevirtual 149	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   229: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   232: invokestatic 90	com/mi/milink/sdk/debug/MiLinkLog:v	(Ljava/lang/String;Ljava/lang/String;)V
    //   235: new 155	android/content/Intent
    //   238: dup
    //   239: ldc_w 474
    //   242: invokespecial 158	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   245: astore 7
    //   247: aload 7
    //   249: ldc_w 476
    //   252: aload_1
    //   253: invokevirtual 480	android/content/Intent:putParcelableArrayListExtra	(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    //   256: pop
    //   257: aload 7
    //   259: ldc -96
    //   261: lload 5
    //   263: invokevirtual 164	android/content/Intent:putExtra	(Ljava/lang/String;J)Landroid/content/Intent;
    //   266: pop
    //   267: aload 7
    //   269: invokestatic 170	com/mi/milink/sdk/base/Global:getClientAppInfo	()Lcom/mi/milink/sdk/data/ClientAppInfo;
    //   272: invokevirtual 175	com/mi/milink/sdk/data/ClientAppInfo:getPackageName	()Ljava/lang/String;
    //   275: invokevirtual 179	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   278: pop
    //   279: aload 7
    //   281: invokestatic 183	com/mi/milink/sdk/base/Global:sendBroadcast	(Landroid/content/Intent;)V
    //   284: return
    //   285: astore 9
    //   287: iconst_0
    //   288: istore_2
    //   289: goto -178 -> 111
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	292	0	this	MnsServiceBinder
    //   0	292	1	paramArrayList	ArrayList<PacketData>
    //   46	243	2	i	int
    //   44	49	3	j	int
    //   41	10	4	k	int
    //   197	65	5	l	long
    //   7	273	7	localObject	Object
    //   64	118	8	localIPacketCallback	IPacketCallback
    //   109	1	9	localException1	Exception
    //   285	1	9	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   66	77	109	java/lang/Exception
    //   79	87	109	java/lang/Exception
    //   96	104	285	java/lang/Exception
  }
  
  public void sendAsyncWithResponse(PacketData paramPacketData, int paramInt, ISendCallback paramISendCallback)
    throws RemoteException
  {
    if (paramISendCallback == null)
    {
      SessionManager.getInstance().sendData(paramPacketData, paramInt, null);
      return;
    }
    SessionManager.getInstance().sendData(paramPacketData, paramInt, new MnsServiceBinder.1(this, paramISendCallback));
  }
  
  public void setAllowAnonymousLoginSwitch(boolean paramBoolean)
    throws RemoteException
  {
    MiAccountManager.getInstance().setAnonymousModeSwitch(paramBoolean);
  }
  
  public int setClientInfo(Bundle paramBundle)
    throws RemoteException
  {
    if (paramBundle == null) {
      return Integer.MIN_VALUE;
    }
    try
    {
      paramBundle = (Messenger)paramBundle.getParcelable("ipc.client.notifier");
      if (paramBundle == null) {
        return Integer.MIN_VALUE;
      }
      start(paramBundle);
      int i = Process.myPid();
      return i;
    }
    catch (Exception paramBundle)
    {
      throw new Error(paramBundle);
    }
  }
  
  public void setEventCallBack(IEventCallback paramIEventCallback)
  {
    this.mEventCallBackList.register(paramIEventCallback);
  }
  
  public void setGlobalPushFlag(boolean paramBoolean)
    throws RemoteException
  {
    SessionManager.getInstance().setGlobalPushFlag(paramBoolean);
  }
  
  public void setIpAndPortInManualMode(String paramString, int paramInt)
    throws RemoteException
  {
    SessionManager.getInstance().setIpAndPortInManualMode(paramString, paramInt);
  }
  
  public void setLanguage(String paramString)
    throws RemoteException
  {
    Global.getClientAppInfo().setLanguageCode(paramString);
  }
  
  public void setMilinkLogLevel(int paramInt)
    throws RemoteException
  {
    MiLinkLog.setLogcatTraceLevel(paramInt);
    MiLinkLog.setFileTraceLevel(paramInt);
  }
  
  public void setMipushRegId(String paramString)
    throws RemoteException
  {
    MiAccountManager.getInstance().setMipushRegId(paramString);
  }
  
  public void setPacketCallBack(IPacketCallback paramIPacketCallback)
    throws RemoteException
  {
    this.mPacketCallBackList.register(paramIPacketCallback);
  }
  
  public void setTimeoutMultiply(float paramFloat)
    throws RemoteException
  {
    ConfigManager.getInstance().setTimeoutMultiply(paramFloat);
  }
  
  public void suspectBadConnection()
    throws RemoteException
  {
    SessionManager.getInstance().suspectBadConnection();
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\service\MnsServiceBinder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */