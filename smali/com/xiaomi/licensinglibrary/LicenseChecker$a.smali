.class final Lcom/xiaomi/licensinglibrary/LicenseChecker$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/licensinglibrary/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->b:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->c:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->b:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a()V

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :sswitch_0
    const-string v0, "\u4f60\u5df2\u7ecf\u8d2d\u4e70\u8fc7\u8be5\u6e38\u620f"

    goto :goto_0

    :sswitch_1
    const-string v0, "\u521b\u5efa\u8ba2\u5355\u5931\u8d25"

    goto :goto_0

    :sswitch_2
    const-string v0, "\u8d2d\u4e70\u5931\u8d25"

    goto :goto_0

    :sswitch_3
    const-string v0, "\u65e0\u6cd5\u4f7f\u7528\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u4f60\u7684\u7f51\u7edc\u8fde\u63a5\u72b6\u6001"

    goto :goto_0

    :sswitch_4
    const-string v0, "\u672a\u5b89\u88c5\u5c0f\u7c73\u6e38\u620f\u4e2d\u5fc3\u798f\u5229\u52a9\u624b!"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x4653 -> :sswitch_2
        0x3ea -> :sswitch_4
        0xfa2 -> :sswitch_3
        0x138b -> :sswitch_1
        0x138c -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a()V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/MiAlertDialog;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8d2d\u4e70\u8be5\u6e38\u620f\u540e\uff0c\u4f60\u624d\u80fd\u4f7f\u7528\u8be5\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/xiaomi/licensinglibrary/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/b;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/xiaomi/licensinglibrary/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/licensinglibrary/c;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u8d2d\u4e70"

    new-instance v2, Lcom/xiaomi/licensinglibrary/d;

    invoke-direct {v2, p0}, Lcom/xiaomi/licensinglibrary/d;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$a;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->b:Landroid/app/AlertDialog;

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a()V

    invoke-static {p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/MiProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->c:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
