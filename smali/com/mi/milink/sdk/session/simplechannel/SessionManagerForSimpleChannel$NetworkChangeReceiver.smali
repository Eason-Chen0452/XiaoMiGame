.class Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field private apnName:Ljava/lang/String;

.field private currentType:I

.field final synthetic this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;


# direct methods
.method private constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V
    .locals 1

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->currentType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->onNetworkConnectivityAction()V

    return-void
.end method

.method private isNetworkChanged(Landroid/net/NetworkInfo;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->currentType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->currentType:I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->currentType:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/WifiDash;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method private onNetworkConnectivityAction()V
    .locals 8

    const-wide/16 v6, 0x7d0

    const-string v0, "connectivity"

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NetworkChangeReceiver, networkInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->isNetworkChanged(Landroid/net/NetworkInfo;)Z

    move-result v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNetworkChange : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkChangeReceiver, network change need forceOpen"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mi/milink/sdk/session/common/SessionConst;->setNewApn(Z)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1700(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/connection/DomainManager;->startResolve(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$2;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$2;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkChangeReceiver, network not change, mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$300(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$300(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1700(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/connection/DomainManager;->startResolve(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$3;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$3;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;)V

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1300(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->ping()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$300(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->close()Z

    :cond_6
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network is disconnected()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->currentType:I

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->currentType:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/WifiDash;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->currentType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$1;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$1;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$1;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Get networkInfo fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCurrentNetworkInfo()V
    .locals 4

    :try_start_0
    const-string v0, "connectivity"

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NetworkChangeReceiver, setCurrentNetworkInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Get networkInfo fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
