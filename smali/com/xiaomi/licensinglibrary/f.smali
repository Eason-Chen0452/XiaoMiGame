.class final Lcom/xiaomi/licensinglibrary/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/f;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/f;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$400(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a()V

    return-void
.end method
