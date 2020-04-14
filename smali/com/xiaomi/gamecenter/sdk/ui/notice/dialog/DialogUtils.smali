.class public Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/app/AlertDialog;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

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

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Lcom/xiaomi/gamecenter/sdk/bg;Lcom/xiaomi/gamecenter/sdk/bf;Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "DialogUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showNoticeDialog : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DialogUtils"

    const-string v1, "showNoticeTextDialog"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Lcom/xiaomi/gamecenter/sdk/bg;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Lcom/xiaomi/gamecenter/sdk/bf;)V

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->setCancelable(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->show()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->setContentView(Landroid/view/View;)V

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Landroid/app/AlertDialog;)V

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a:Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DialogUtils"

    const-string v1, "showNoticeSchemeDialog"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Lcom/xiaomi/gamecenter/sdk/bg;)V

    invoke-virtual {v0, p4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a(Lcom/xiaomi/gamecenter/sdk/bf;)V

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->setCancelable(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->show()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->setContentView(Landroid/view/View;)V

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Landroid/app/AlertDialog;)V

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DialogUtils"

    const-string v1, "showNoticeImageDialog"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->a(Lcom/xiaomi/gamecenter/sdk/bg;)V

    invoke-virtual {v0, p4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->a(Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->a(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->a(Lcom/xiaomi/gamecenter/sdk/bf;)V

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->setCancelable(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->show()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->setContentView(Landroid/view/View;)V

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/DialogUtils;->a:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "DialogUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkContext "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    const-string v2, "DialogUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "isFinishing "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2

    const-string v2, "DialogUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "isDestroyed "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
