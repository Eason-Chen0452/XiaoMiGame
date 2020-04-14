.class public Lcom/xiaomi/greendao/async/AsyncSession;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/xiaomi/greendao/AbstractDaoSession;

.field private final b:Lcom/xiaomi/greendao/async/c;


# direct methods
.method public constructor <init>(Lcom/xiaomi/greendao/AbstractDaoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/greendao/async/AsyncSession;->a:Lcom/xiaomi/greendao/AbstractDaoSession;

    new-instance v0, Lcom/xiaomi/greendao/async/c;

    invoke-direct {v0}, Lcom/xiaomi/greendao/async/c;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/async/AsyncSession;->b:Lcom/xiaomi/greendao/async/c;

    return-void
.end method
