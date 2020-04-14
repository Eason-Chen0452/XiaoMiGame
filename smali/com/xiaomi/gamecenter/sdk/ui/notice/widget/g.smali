.class final Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/g;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/g;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->h(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/g;->a:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->c(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Z

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
