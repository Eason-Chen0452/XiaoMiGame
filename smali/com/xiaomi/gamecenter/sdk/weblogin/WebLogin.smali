.class public Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/xiaomi/gamecenter/sdk/web/i;

.field private c:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;->c:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/web/i;)V
    .locals 6

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;->b:Lcom/xiaomi/gamecenter/sdk/web/i;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/SocketTouch;->a()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;->c:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_1

    const-string v0, "http://game.xiaomi.com/oauthcallback/mioauth"

    :try_start_0
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "_url"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://account.xiaomi.com/oauth2/authorize?client_id=2882303761517516898&response_type=code&scope=1 3&redirect_uri="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_accountType"

    const v1, 0x9c41

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    const-string v0, "_state"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;-><init>()V

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;->b:Lcom/xiaomi/gamecenter/sdk/web/i;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/i;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    const-string v3, "LoginWebView"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;->c:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_0

    const-string v0, "http://g.mi.com/mobilelogin/qq/redirect.html"

    :try_start_1
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    const-string v1, "_url"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "https://graph.qq.com/oauth2.0/authorize?client_id=101424138&response_type=token&redirect_uri="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&state="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_accountType"

    const v1, 0x9c42

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method
