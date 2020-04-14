.class abstract Lcom/xiaomi/greendao/query/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/xiaomi/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field protected final b:Lcom/xiaomi/greendao/InternalQueryDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/InternalQueryDaoAccess",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/String;

.field protected final d:[Ljava/lang/String;

.field protected final e:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/g;->a:Lcom/xiaomi/greendao/AbstractDao;

    new-instance v0, Lcom/xiaomi/greendao/InternalQueryDaoAccess;

    invoke-direct {v0, p1}, Lcom/xiaomi/greendao/InternalQueryDaoAccess;-><init>(Lcom/xiaomi/greendao/AbstractDao;)V

    iput-object v0, p0, Lcom/xiaomi/greendao/query/g;->b:Lcom/xiaomi/greendao/InternalQueryDaoAccess;

    iput-object p2, p0, Lcom/xiaomi/greendao/query/g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/greendao/query/g;->d:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/greendao/query/g;->e:Ljava/lang/Thread;

    return-void
.end method

.method protected static a([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 4

    array-length v1, p0

    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aput-object v3, v2, v0

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method protected final d()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/greendao/query/g;->e:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/xiaomi/greendao/DaoException;

    const-string v1, "Method may be called only in owner thread, use forCurrentThread to get an instance for this thread"

    invoke-direct {v0, v1}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
