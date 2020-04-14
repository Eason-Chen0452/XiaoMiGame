.class public Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Lcom/xiaomi/greendao/identityscope/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Class",
            "<",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;TK;>;>;",
            "Lcom/xiaomi/greendao/identityscope/a",
            "<**>;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/greendao/internal/DaoConfig;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/greendao/internal/DaoConfig;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/greendao/internal/DaoConfig;->a(Lcom/xiaomi/greendao/identityscope/a;)V

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Lcom/xiaomi/greendao/internal/DaoConfig;

    aput-object v2, v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/AbstractDao;

    iput-object v0, p0, Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;->a:Lcom/xiaomi/greendao/AbstractDao;

    return-void
.end method


# virtual methods
.method public final a()[Lcom/xiaomi/greendao/Property;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;->a:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->getProperties()[Lcom/xiaomi/greendao/Property;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/xiaomi/greendao/AbstractDao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;->a:Lcom/xiaomi/greendao/AbstractDao;

    return-object v0
.end method
