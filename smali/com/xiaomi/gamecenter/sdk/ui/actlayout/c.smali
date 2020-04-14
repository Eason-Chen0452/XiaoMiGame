.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/web/h;


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;JLjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iput-wide p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->a:J

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->b:Ljava/lang/String;

    iput p5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x9c40

    const-string v3, "\u5b9e\u540d\u8ba4\u8bc1\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->a:J

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->b:Ljava/lang/String;

    iget v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->c:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;JLjava/lang/String;I)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    return-void
.end method
