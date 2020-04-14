.class final Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->d(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->c(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/bf;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Z)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->e(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->f(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->c(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/bg;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Z)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->g(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V

    return-void
.end method
