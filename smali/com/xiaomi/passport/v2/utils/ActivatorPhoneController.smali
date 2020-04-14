.class public Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/xiaomi/phonenum/PhoneNumKeeper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;-><init>()V

    const-string v1, "2882303761517565051"

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/phonenum/PhoneNumKeeperFactory;->createPhoneNumKeeper(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/phonenum/PhoneNumKeeper;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->a:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;->a:Lcom/xiaomi/phonenum/PhoneNumKeeper;

    new-instance v1, Lcom/xiaomi/passport/v2/utils/a;

    invoke-direct {v1, p0}, Lcom/xiaomi/passport/v2/utils/a;-><init>(Lcom/xiaomi/passport/v2/utils/ActivatorPhoneController;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/PhoneNumKeeper;->setUp(Lcom/xiaomi/phonenum/PhoneNumKeeper$SetupFinishedListener;)V

    return-void
.end method
