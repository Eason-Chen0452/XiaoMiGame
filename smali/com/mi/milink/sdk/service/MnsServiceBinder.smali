.class public Lcom/mi/milink/sdk/service/MnsServiceBinder;
.super Lcom/mi/milink/sdk/aidl/IService$Stub;

# interfaces
.implements Lcom/mi/milink/sdk/client/IPacketListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MnsServiceBinder"

.field private static final sInstance:Lcom/mi/milink/sdk/service/MnsServiceBinder;


# instance fields
.field private final mEventCallBackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mi/milink/sdk/aidl/IEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPacketCallBackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/mi/milink/sdk/aidl/IPacketCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/service/MnsServiceBinder;

    invoke-direct {v0}, Lcom/mi/milink/sdk/service/MnsServiceBinder;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->sInstance:Lcom/mi/milink/sdk/service/MnsServiceBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/mi/milink/sdk/aidl/IService$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mPacketCallBackList:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->setCallback(Lcom/mi/milink/sdk/client/IPacketListener;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->ServiceCreated:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/service/MnsServiceBinder;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->sInstance:Lcom/mi/milink/sdk/service/MnsServiceBinder;

    return-object v0
.end method

.method private onEventGetServiceToken()V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "MnsServiceBinder"

    const-string v2, "no service token, call app onEventGetServiceToken"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    :try_start_0
    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IEventCallback;->onEventGetServiceToken()V

    const/4 v1, 0x1

    const-string v5, "MnsServiceBinder"

    const-string v6, " notify app get service token success"

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v5, "MnsServiceBinder"

    const-string v6, "dead callback."

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    const-string v3, "MnsServiceBinder"

    const-string v4, "unregister event callback."

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MnsServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app does not run, broadcast get service token, time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mi.milink.ACTION_GET_ST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_act_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/mi/milink/sdk/base/Global;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private onEventKickByServer(IJLjava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "MnsServiceBinder"

    const-string v3, "kicked by server, type is %d,time is %d s,device is %s call app onKickedByServer"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    :try_start_0
    invoke-interface {v0, p1, v6, v7, p4}, Lcom/mi/milink/sdk/aidl/IEventCallback;->onEventKickedByServer(IJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "MnsServiceBinder"

    const-string v6, " notify app service kicked by server success"

    invoke-static {v2, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v6

    :goto_2
    const-string v6, "MnsServiceBinder"

    const-string v7, "dead callback."

    invoke-static {v6, v7}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    const-string v3, "MnsServiceBinder"

    const-string v4, "unregister event callback."

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_3

    :cond_1
    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MnsServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app does not run, broadcast kicked by server, time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mi.milink.ACTION_KICKED_BY_SERVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_act_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "extra_kicked_type"

    invoke-virtual {v2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_kicked_time"

    invoke-virtual {v2, v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "extra_kicked_device"

    invoke-virtual {v2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/mi/milink/sdk/base/Global;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void

    :catch_1
    move-exception v2

    move v2, v1

    goto :goto_2
.end method

.method private onEventRecvInvalidPacket()V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "MnsServiceBinder"

    const-string v2, "invalid packet, call app onEventInvalidPacket "

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    :try_start_0
    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IEventCallback;->onEventInvalidPacket()V

    const/4 v1, 0x1

    const-string v5, "MnsServiceBinder"

    const-string v6, " notify app invalid packet success"

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v5, "MnsServiceBinder"

    const-string v6, "dead callback."

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    const-string v3, "MnsServiceBinder"

    const-string v4, "unregister event callback."

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MnsServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app does not run, broadcast invalid packet, time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mi.milink.ACTION_INVALID_PACKET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_act_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/mi/milink/sdk/base/Global;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private onEventServiceTokenExpired()V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "MnsServiceBinder"

    const-string v2, "service token expired, call app onEventServiceTokenExpired"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    :try_start_0
    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IEventCallback;->onEventServiceTokenExpired()V

    const/4 v1, 0x1

    const-string v5, "MnsServiceBinder"

    const-string v6, " notify app service token expired success"

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v5, "MnsServiceBinder"

    const-string v6, "dead callback."

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    const-string v3, "MnsServiceBinder"

    const-string v4, "unregister event callback."

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MnsServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app does not run, broadcast service token expired, time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mi.milink.ACTION_ST_EXPIRED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_act_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/mi/milink/sdk/base/Global;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private onEventShouldUpdate()V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "MnsServiceBinder"

    const-string v2, "app should check update."

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    :try_start_0
    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IEventCallback;->onEventShouldCheckUpdate()V

    const/4 v1, 0x1

    const-string v5, "MnsServiceBinder"

    const-string v6, " notify app check update success"

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v5, "MnsServiceBinder"

    const-string v6, "dead callback."

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IEventCallback;

    const-string v3, "MnsServiceBinder"

    const-string v4, "unregister event callback."

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MnsServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app does not run, broadcast check update, time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mi.milink.ACTION_CHECK_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_act_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/mi/milink/sdk/base/Global;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private onMiLinkLoginStateChanged(I)Z
    .locals 3

    const-string v0, "MnsServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMiLinkLoginStateChanged state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mi/milink/sdk/service/MnsNotify;->sendEvent(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method private onSessionStateChanged(II)Z
    .locals 3

    const-string v0, "MnsServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session State Changed From "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u2192 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, p2, :cond_0

    const/4 v0, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/mi/milink/sdk/service/MnsNotify;->sendEvent(IILjava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private start(Landroid/os/Messenger;)Lcom/mi/milink/sdk/service/MnsServiceBinder;
    .locals 4

    invoke-static {p1}, Lcom/mi/milink/sdk/service/MnsNotify;->setMessenger(Landroid/os/Messenger;)V

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mi/milink/sdk/service/MnsNotify;->sendEvent(IILjava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public enableConnectionManualMode(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->enableConnectionManualMode(Z)Z

    move-result v0

    return v0
.end method

.method public fastLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MnsServiceBinder"

    const-string v1, "fastLogin"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public forceReconnet()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MnsServiceBinder"

    const-string v1, "forceReconnet"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientForceOpen:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getAnonymousAccountId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getServerState()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getSessionState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSuid()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MnsServiceBinder"

    const-string v1, "getSuid"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MnsServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init,passportInit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->initApp()V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public initUseAnonymousMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->initApp()V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->initUseAnonymousMode()V

    return-void
.end method

.method public isMiLinkLogined()Z
    .locals 2

    const-string v0, "MnsServiceBinder"

    const-string v1, "isMiLinkLogined"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isMiLinkLogined()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public logoff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MnsServiceBinder"

    const-string v1, "logoff"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->userLogoff()V

    return-void
.end method

.method public onError(ILjava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0, p1, p2}, Lcom/mi/milink/sdk/service/MnsNotify;->sendEvent(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/service/MnsServiceBinder$2;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionManagerNotificationEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/service/MnsServiceBinder;->onEventGetServiceToken()V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v0, ""

    iget-object v4, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;->mObject:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;->getTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;->getDevice()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/mi/milink/sdk/service/MnsServiceBinder;->onEventKickByServer(IJLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/mi/milink/sdk/service/MnsServiceBinder;->onEventServiceTokenExpired()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/mi/milink/sdk/service/MnsServiceBinder;->onEventShouldUpdate()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/mi/milink/sdk/service/MnsServiceBinder;->onEventRecvInvalidPacket()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/service/MnsServiceBinder$2;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionManagerStateChangeEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mNewState:I

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/service/MnsServiceBinder;->onMiLinkLoginStateChanged(I)Z

    goto :goto_0

    :pswitch_1
    iget v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mOldState:I

    iget v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mNewState:I

    invoke-direct {p0, v0, v1}, Lcom/mi/milink/sdk/service/MnsServiceBinder;->onSessionStateChanged(II)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReceive(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milink/sdk/aidl/PacketData;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "MnsServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "delivery data, data size="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mPacketCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    move v3, v2

    move v1, v2

    :goto_0
    if-ge v3, v5, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mPacketCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IPacketCallback;

    :try_start_0
    invoke-interface {v0, p1}, Lcom/mi/milink/sdk/aidl/IPacketCallback;->onReceive(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v6, "MnsServiceBinder"

    const-string v7, "delivery data success"

    invoke-static {v6, v7}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "MnsServiceBinder"

    const-string v6, "onReceive return false,try delivery data by broadcast"

    invoke-static {v1, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v6

    :goto_2
    const-string v6, "MnsServiceBinder"

    const-string v7, "dead callback."

    invoke-static {v6, v7}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mPacketCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/aidl/IPacketCallback;

    const-string v3, "MnsServiceBinder"

    const-string v4, "unregister callback."

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mPacketCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_3

    :cond_2
    if-nez v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "MnsServiceBinder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app not run, delivery data by broadcast, data size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mi.milink.ACTION_MSG"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_msg_ary"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v3, "extra_act_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Lcom/mi/milink/sdk/base/Global;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void

    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_2
.end method

.method public sendAsyncWithResponse(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/aidl/ISendCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/service/MnsServiceBinder$1;

    invoke-direct {v1, p0, p3}, Lcom/mi/milink/sdk/service/MnsServiceBinder$1;-><init>(Lcom/mi/milink/sdk/service/MnsServiceBinder;Lcom/mi/milink/sdk/aidl/ISendCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z

    goto :goto_0
.end method

.method public setAllowAnonymousLoginSwitch(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setAnonymousModeSwitch(Z)V

    return-void
.end method

.method public setClientInfo(Landroid/os/Bundle;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v1, -0x80000000

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "ipc.client.notifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/service/MnsServiceBinder;->start(Landroid/os/Messenger;)Lcom/mi/milink/sdk/service/MnsServiceBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setEventCallBack(Lcom/mi/milink/sdk/aidl/IEventCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mEventCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public setGlobalPushFlag(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setGlobalPushFlag(Z)V

    return-void
.end method

.method public setIpAndPortInManualMode(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setIpAndPortInManualMode(Ljava/lang/String;I)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setLanguageCode(Ljava/lang/String;)V

    return-void
.end method

.method public setMilinkLogLevel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->setLogcatTraceLevel(I)V

    invoke-static {p1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->setFileTraceLevel(I)V

    return-void
.end method

.method public setMipushRegId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setMipushRegId(Ljava/lang/String;)V

    return-void
.end method

.method public setPacketCallBack(Lcom/mi/milink/sdk/aidl/IPacketCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder;->mPacketCallBackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public setTimeoutMultiply(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/config/ConfigManager;->setTimeoutMultiply(F)V

    return-void
.end method

.method public suspectBadConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->suspectBadConnection()V

    return-void
.end method
