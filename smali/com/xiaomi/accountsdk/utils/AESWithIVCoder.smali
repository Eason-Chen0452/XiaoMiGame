.class public Lcom/xiaomi/accountsdk/utils/AESWithIVCoder;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field private final b:I

.field private c:J

.field private d:Lcom/xiaomi/accountsdk/utils/AESCoder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/xiaomi/accountsdk/utils/AESWithIVCoder;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/utils/AESWithIVCoder;->c:J

    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/AESWithIVCoder;->a:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/a;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/a;-><init>(Lcom/xiaomi/accountsdk/utils/AESWithIVCoder;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/AESWithIVCoder;->d:Lcom/xiaomi/accountsdk/utils/AESCoder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/utils/AESWithIVCoder;->c:J

    return-void
.end method
