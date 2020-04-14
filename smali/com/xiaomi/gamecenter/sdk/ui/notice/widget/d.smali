.class final Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/BtnClickUtil;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->i(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->j(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/bg;->b(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->h()Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->k(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;)V

    goto :goto_0
.end method
