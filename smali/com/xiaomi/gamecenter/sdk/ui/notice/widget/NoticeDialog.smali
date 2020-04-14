.class public Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;
.super Landroid/app/AlertDialog;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "MioNoticeDialog"

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public show()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
