.class final Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/c;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/c;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->h(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/c;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->c(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
