.class final Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->a(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->d(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->c(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/bf;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Z)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->e(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->f(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->c(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/bg;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Z)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->g(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)V

    return-void
.end method
