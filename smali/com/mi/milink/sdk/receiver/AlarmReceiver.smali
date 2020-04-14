.class public Lcom/mi/milink/sdk/receiver/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private jobId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/receiver/AlarmReceiver;->jobId:I

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v8, 0x1

    const/16 v6, 0x1a

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    const-string v3, "com.milink.sdk.heartbeat"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MiLinkAlarm"

    const-string v1, "app not login cancel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->stop()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mi/milink/sdk/base/Global;->LAST_PACKET_SEND_TIME:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->isSuicideEnable()Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    :cond_2
    :goto_1
    if-eqz v0, :cond_6

    const-string v0, "MiLinkAlarm"

    const-string v1, "milinkservice will be suicide , after 10s Launch"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->isSuicideEnable()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->start(J)Z

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v0, "MiLinkAlarm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "suicide now!!! pid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getServiceProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_4

    const-string v0, "MiLinkAlarm"

    const-string v2, "suicide need to stop jobscheduler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/mi/milink/sdk/service/MiLinkJobService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->cancelAll()V

    :cond_4
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v8

    if-ltz v4, :cond_2

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->start()Z

    :goto_2
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getServiceProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_9

    const-string v0, "MiLinkAlarm"

    const-string v2, "need to start jobscheduler"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "jobscheduler"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/mi/milink/sdk/service/MiLinkJobService;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Landroid/app/job/JobInfo$Builder;

    iget v4, p0, Lcom/mi/milink/sdk/receiver/AlarmReceiver;->jobId:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mi/milink/sdk/receiver/AlarmReceiver;->jobId:I

    invoke-direct {v3, v4, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v3, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v3, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    :cond_7
    :goto_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->AlarmArrived:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->stop()Z

    goto :goto_2

    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "onStartCommandReturn"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.mi.milink.sdk.service.MiLinkService"

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3
.end method
