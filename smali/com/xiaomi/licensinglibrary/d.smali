.class final Lcom/xiaomi/licensinglibrary/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/d;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/d;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "buy_license_begin"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/d;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/d;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->sendEmptyMessage(I)Z

    return-void
.end method
