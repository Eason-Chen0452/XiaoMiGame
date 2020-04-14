.class public Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;
.super Ljava/util/Observable;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$OnServiceStartListener;,
        Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$ServiceStartResult;,
        Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;
    }
.end annotation


# static fields
.field private static final MILINK_OPEN_BIND_SERVICE_FIRST_FAILED:I = 0x1

.field private static final MILINK_OPEN_BIND_SERVICE_SECOND_FAILED:I = 0x2

.field private static final MILINK_OPEN_BIND_SERVICE_SUCCESS:I = 0x0

.field private static final MILINK_OPEN_GET_REMOTE_SERVICE_FAILED:I = 0x1

.field private static final MILINK_OPEN_GET_REMOTE_SERVICE_SUCCESS:I = 0x0

.field private static final MILINK_OPEN_OPEN_SERVICE_FAILED:I = 0x1

.field private static final MILINK_OPEN_OPEN_SERVICE_SUCCESS:I = 0x0

.field private static final SERVICE_START_THRESHOLD:I = 0x3

.field private static final SERVICE_STOP_THRESHOLD:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "MiLinkClient"


# instance fields
.field private volatile SERVICE_LOCK:Ljava/lang/Object;

.field protected context:Landroid/content/Context;

.field private eventCallback:Landroid/os/Handler$Callback;

.field private eventCenter:Lcom/mi/milink/sdk/base/os/HandlerThreadEx;

.field private isStartServiceThreadRunning:Z

.field protected mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

.field protected mGlobalPushFlag:Z

.field private mIEventCallback:Lcom/mi/milink/sdk/aidl/IEventCallback$Stub;

.field private mIPacketCallback:Lcom/mi/milink/sdk/aidl/IPacketCallback$Stub;

.field private mKillRunnable:Ljava/lang/Runnable;

.field protected mLogLevel:I

.field protected mMiPushRegId:Ljava/lang/String;

.field protected mPacketListener:Lcom/mi/milink/sdk/client/IPacketListener;

.field private mStartServiceRunnable:Ljava/lang/Runnable;

.field protected volatile remoteService:Lcom/mi/milink/sdk/aidl/IService;

.field private volatile restartTimes:I

.field private volatile serviceConnecting:Z

.field private volatile servicePid:I

.field private volatile userStartService:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->servicePid:I

    iput-boolean v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->serviceConnecting:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->SERVICE_LOCK:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->userStartService:Z

    iput v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->restartTimes:I

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$1;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$1;-><init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->eventCallback:Landroid/os/Handler$Callback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mMiPushRegId:Ljava/lang/String;

    const/16 v0, 0x3f

    iput v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mLogLevel:I

    iput-boolean v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mGlobalPushFlag:Z

    iput-boolean v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->isStartServiceThreadRunning:Z

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;-><init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mStartServiceRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$5;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$5;-><init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mKillRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    new-instance v0, Lcom/mi/milink/sdk/base/os/HandlerThreadEx;

    const-string v1, "MiLinkEventNotifier"

    const/4 v2, 0x1

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->eventCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milink/sdk/base/os/HandlerThreadEx;-><init>(Ljava/lang/String;ZILandroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->eventCenter:Lcom/mi/milink/sdk/base/os/HandlerThreadEx;

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;-><init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mIEventCallback:Lcom/mi/milink/sdk/aidl/IEventCallback$Stub;

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$3;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$3;-><init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mIPacketCallback:Lcom/mi/milink/sdk/aidl/IPacketCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->setChanged()V

    return-void
.end method

.method static synthetic access$102(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->isStartServiceThreadRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->serviceConnecting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->startService(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->SERVICE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->stopService(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->killApp()V

    return-void
.end method

.method private initService()V
    .locals 13

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    const-string v4, "com.mi.milink.sdk.service.MiLinkService"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MiLinkClient"

    const-string v1, "start service failed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const-string v4, "milink.startservice"

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v10, v3

    move v11, v3

    move v12, v3

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "MiLinkClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "startService ComponentName = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiLinkClient"

    const-string v1, "start service success"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const-string v4, "milink.startservice"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v5, v3

    move v10, v3

    move v11, v3

    move v12, v3

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto :goto_0
.end method

.method private killApp()V
    .locals 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "MiLinkClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] will be Terminated beccause getRemoteService==null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private startService(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)Z
    .locals 14

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->UserCall:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->userStartService:Z

    :cond_0
    iget-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->serviceConnecting:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->initService()V

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    const-string v2, "com.mi.milink.sdk.service.MiLinkService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, v13, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "milink.bindservice"

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    const-string v0, "MiLinkClient"

    const-string v1, "bindService() first time failed!!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, v13, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MiLinkClient"

    const-string v1, "bindService() second time failed too!!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "milink.bindservice"

    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    sget-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->SystemFatal:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->stopService(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$6;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$6;-><init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "milink.bindservice"

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    const-string v1, "MiLinkClient"

    const-string v2, "bindService() success!!"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->serviceConnecting:Z

    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private stopService(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V
    .locals 4

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopService"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->serviceConnecting:Z

    sget-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->UserCall:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->stop()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->userStartService:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    const-string v3, "com.mi.milink.sdk.service.MiLinkService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const-string v0, "MiLinkClient"

    const-string v1, "stopService over"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getRemoteServiceProxy()Lcom/mi/milink/sdk/aidl/IService;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const-string v0, "MiLinkClient"

    const-string v1, "dangerous!!!!getRemoteService in main Thread is not safe!!!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->isStartServiceThreadRunning:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mStartServiceRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->isStartServiceThreadRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mStartServiceRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public getServicePid()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->servicePid:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isServiceAlive()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->isServiceAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "MiLinkClient"

    const-string v1, "Remote Service is Dead"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public killService()V
    .locals 3

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->servicePid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] will be Terminated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->setServicePidByServiceName()V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->stop()Z

    iget v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->servicePid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected onHandleInternalServiceEvent(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMilinkServiceReady()V
    .locals 0

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "MiLinkClient"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->serviceConnecting:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->serviceConnecting:Z

    :goto_0
    invoke-static {p2}, Lcom/mi/milink/sdk/aidl/IService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mIEventCallback:Lcom/mi/milink/sdk/aidl/IEventCallback$Stub;

    invoke-interface {v0, v1}, Lcom/mi/milink/sdk/aidl/IService;->setEventCallBack(Lcom/mi/milink/sdk/aidl/IEventCallback;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mIPacketCallback:Lcom/mi/milink/sdk/aidl/IPacketCallback$Stub;

    invoke-interface {v0, v1}, Lcom/mi/milink/sdk/aidl/IService;->setPacketCallBack(Lcom/mi/milink/sdk/aidl/IPacketCallback;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ipc.client.notifier"

    iget-object v2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->eventCenter:Lcom/mi/milink/sdk/base/os/HandlerThreadEx;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/base/os/HandlerThreadEx;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    invoke-interface {v1, v0}, Lcom/mi/milink/sdk/aidl/IService;->setClientInfo(Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->servicePid:I

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mMiPushRegId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mMiPushRegId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mi/milink/sdk/aidl/IService;->setMipushRegId(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    iget v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mLogLevel:I

    invoke-interface {v0, v1}, Lcom/mi/milink/sdk/aidl/IService;->setMilinkLogLevel(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    iget-boolean v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mGlobalPushFlag:Z

    invoke-interface {v0, v1}, Lcom/mi/milink/sdk/aidl/IService;->setGlobalPushFlag(Z)V

    iget v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->servicePid:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->ClientError:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->stopService(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->onMilinkServiceReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    if-eqz v0, :cond_2

    const-string v0, "MiLinkClient"

    const-string v1, "onServiceConnected got a binder"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->SERVICE_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_3
    :try_start_4
    const-string v0, "MiLinkClient"

    const-string v1, "Ghost\'s Call? Nobody binds service but Callback here. WTF!!!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->ClientError:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->stopService(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "MiLinkClient"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->restartTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->restartTimes:I

    sget-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->Disconnect:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->stopService(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setServicePidByServiceName()V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getServiceProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/util/SystemUtils;->getPidByProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->servicePid:I

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serviceProcess pid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->servicePid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopService()V
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->UserCall:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->stopService(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V

    return-void
.end method
