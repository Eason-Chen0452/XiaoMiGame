.class final Lcom/xiaomi/licensinglibrary/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/e;->b:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    iput p2, p0, Lcom/xiaomi/licensinglibrary/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/e;->b:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$400(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/licensinglibrary/e;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a(I)V

    return-void
.end method
