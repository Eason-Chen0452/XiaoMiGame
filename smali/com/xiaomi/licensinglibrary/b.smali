.class final Lcom/xiaomi/licensinglibrary/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->dontAllow(I)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/b;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "buy_license_confirm_canceled"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    return-void
.end method
