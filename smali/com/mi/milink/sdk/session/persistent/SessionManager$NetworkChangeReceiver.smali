.class Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/session/persistent/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field private apnName:Ljava/lang/String;

.field private currentType:I

.field runable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;


# direct methods
.method private constructor <init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V
    .locals 1

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->currentType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->runable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;Lcom/mi/milink/sdk/session/persistent/SessionManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;Landroid/net/NetworkInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->isNetworkChanged(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;Landroid/net/NetworkInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private isNetworkChanged(Landroid/net/NetworkInfo;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->currentType:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

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
    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->currentType:I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->currentType:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/WifiDash;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method private setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->currentType:I

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->currentType:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/WifiDash;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->currentType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->apnName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "app not login, ignore network change broadcast"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$2000(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->runable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NetworkChangeReceiver, setCurrentNetworkInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->setCurrentNetworkInfo(Landroid/net/NetworkInfo;)V

    const-string v1, "SessionManager"

    const-string v2, "Get networkInfo fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
