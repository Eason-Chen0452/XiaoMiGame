.class final Lcom/xiaomi/licensinglibrary/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/h;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/h;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$400(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/h;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    iget-object v1, v1, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a(Landroid/content/Context;)V

    return-void
.end method
