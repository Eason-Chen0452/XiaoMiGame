.class final Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->a()Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->b()Z

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaomi/gamecenter/sdk/bg;->b(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Z)V

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->c:Lcom/xiaomi/gamecenter/sdk/bf;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->c:Lcom/xiaomi/gamecenter/sdk/bf;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->b()Z

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaomi/gamecenter/sdk/bf;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Z)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->c()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
