.class public Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->b:J

    iput-boolean v2, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->c:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "http://dummyurl/%s/_ver=%s&hdid=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->d()Landroid/app/Application;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->a:Ljava/lang/String;

    return-void
.end method
