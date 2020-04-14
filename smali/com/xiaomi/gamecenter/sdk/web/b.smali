.class final Lcom/xiaomi/gamecenter/sdk/web/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->b(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/web/i;->a()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->d(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v2, v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/web/i;->b()V

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/b;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->b(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
