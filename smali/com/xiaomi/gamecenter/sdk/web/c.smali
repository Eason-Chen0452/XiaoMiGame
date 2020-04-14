.class final Lcom/xiaomi/gamecenter/sdk/web/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->c:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestQQLogin;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestQQLogin;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestQQLogin;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->c:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->c:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/xiaomi/gamecenter/sdk/web/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->c:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/c;->c:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/i;->a()V

    goto :goto_0
.end method
