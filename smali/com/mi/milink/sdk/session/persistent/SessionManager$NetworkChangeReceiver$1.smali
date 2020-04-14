.class Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    const-string v0, "connectivity"

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NetworkChangeReceiver, networkInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WIFI info : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/WifiDash;->getWifiInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->access$1400(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;Landroid/net/NetworkInfo;)Z

    move-result v1

    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNetworkChange : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->access$1500(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;Landroid/net/NetworkInfo;)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->startIfNeed()Z

    if-eqz v1, :cond_2

    const-string v0, "SessionManager"

    const-string v1, "NetworkChangeReceiver, network change need forceOpen"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mi/milink/sdk/session/common/SessionConst;->setNewApn(Z)V

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/connection/DomainManager;->startResolve(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1$1;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1$1;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NetworkChangeReceiver, network not change, mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v2, v2, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$400(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$400(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/connection/DomainManager;->startResolve(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1$2;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1$2;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->access$1500(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;Landroid/net/NetworkInfo;)V

    const-string v1, "SessionManager"

    const-string v2, "Get networkInfo fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$1600(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->ping()V

    goto :goto_0

    :cond_5
    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Session :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_6

    const-string v0, "true"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "session state : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v2, v2, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$400(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$1700(Lcom/mi/milink/sdk/session/persistent/SessionManager;I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$1800(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$1900(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    const-string v1, "ClientForceOpen"

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->login(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "false"

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$400(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;->this$1:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->close()Z

    :cond_8
    const-string v0, "SessionManager"

    const-string v1, "network is disconnected()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
