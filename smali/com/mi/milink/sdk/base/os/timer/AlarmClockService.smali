.class public Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmClockService"

.field private static mNextPingTs:J

.field static pendingIntent:Landroid/app/PendingIntent;

.field private static sStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->sStop:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->pendingIntent:Landroid/app/PendingIntent;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->mNextPingTs:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNextPing(J)J
    .locals 4

    const-string v0, "MiLinkAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internal="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Ts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->mNextPingTs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p0

    sput-wide v0, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->mNextPingTs:J

    const-string v0, "MiLinkAlarm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "next Ts = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->mNextPingTs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->mNextPingTs:J

    return-wide v0
.end method

.method public static resetNextPing()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->mNextPingTs:J

    return-void
.end method

.method private static setExact(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V
    .locals 5

    const-class v0, Landroid/app/AlarmManager;

    :try_start_0
    const-string v1, "setExact"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AlarmClockService"

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static start()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getInstance()Lcom/mi/milink/sdk/config/HeartBeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getHeartBeatInterval()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->start(J)Z

    move-result v0

    return v0
.end method

.method public static start(J)Z
    .locals 6

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->sStop:Z

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.milink.sdk.heartbeat"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x3db

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->pendingIntent:Landroid/app/PendingIntent;

    const-string v0, "alarm"

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {p0, p1}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->getNextPing(J)J

    move-result-wide v2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    sget-object v4, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v2, v3, v4}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->setExact(Landroid/app/AlarmManager;JLandroid/app/PendingIntent;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v4, 0x0

    sget-object v5, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public static startIfNeed()Z
    .locals 2

    sget-boolean v0, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->sStop:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getInstance()Lcom/mi/milink/sdk/config/HeartBeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getHeartBeatInterval()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->start(J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stop()Z
    .locals 3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->sStop:Z

    :try_start_0
    const-string v0, "alarm"

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v2, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
