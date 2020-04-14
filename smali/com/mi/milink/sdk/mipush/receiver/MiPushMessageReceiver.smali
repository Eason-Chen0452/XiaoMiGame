.class public Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;
.super Lcom/xiaomi/mipush/sdk/PushMessageReceiver;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mCommand:Ljava/lang/String;

.field private mEndTime:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mRegId:Ljava/lang/String;

.field private mResultCode:J

.field private mStartTime:Ljava/lang/String;

.field private mTopic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MiPushMessageReceiver"

    sput-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mResultCode:J

    return-void
.end method

.method public static getSimpleDate()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCommandResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCommandResult is called. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_0
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_2

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    const-string v1, "register"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/mipush/MiPushManager;->setMiPushRegId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->bindAliasByUserId()V

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/mipush/MiPushManager;->setRegisting(Z)V

    :cond_0
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    return-void

    :cond_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v1, "COMMAND_REGISTER failed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/mipush/MiPushManager;->registerMiPush(Z)V

    goto :goto_2

    :cond_4
    const-string v1, "set-alias"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_5

    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v1, "setAlias success!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/mipush/MiPushManager;->setAlias(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v1, "COMMAND_SET_ALIAS failed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/mi/milink/sdk/mipush/MiPushManager;->registerMiPush(Z)V

    goto :goto_2

    :cond_6
    const-string v1, "unset-alias"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_7

    iput-object v2, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mAlias:Ljava/lang/String;

    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unsetAlias success!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->clearAlias()V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unsetAlias failed!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->logoff()V

    goto :goto_2

    :cond_8
    const-string v1, "set-account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mAccount:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const-string v1, "unset-account"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mAccount:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v1, "subscribe-topic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mTopic:Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    const-string v1, "unsubscibe-topic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_c
    const-string v1, "accept-time"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    iput-object v2, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mStartTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mEndTime:Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getReason()Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotificationMessageArrived is called. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mTopic:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/milink/sdk/mipush/MiPushManager;->onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotificationMessageClicked is called. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mTopic:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/milink/sdk/mipush/MiPushManager;->onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceivePassThroughMessage is called. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getTopic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mTopic:Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/milink/sdk/mipush/MiPushManager;->onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mAlias:Ljava/lang/String;

    goto :goto_0
.end method

.method public onReceiveRegisterResult(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;)V
    .locals 6

    sget-object v0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceiveRegisterResult is called. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getCommandArguments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    const-string v2, "register"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getResultCode()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/receiver/MiPushMessageReceiver;->mRegId:Ljava/lang/String;

    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/xiaomi/mipush/sdk/MiPushCommandMessage;->getReason()Ljava/lang/String;

    goto :goto_1
.end method
