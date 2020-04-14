.class final Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/i;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/i;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->l(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->onPreDraw()Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/i;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->l(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/i;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->l(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/i;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->l(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->startScroll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
