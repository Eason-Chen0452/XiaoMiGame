.class public abstract Lcom/xiaomi/greendao/test/AbstractDaoTest;
.super Lcom/xiaomi/greendao/test/DbTest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/xiaomi/greendao/AbstractDao",
        "<TT;TK;>;T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/greendao/test/DbTest;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TD;>;"
        }
    .end annotation
.end field

.field protected b:Lcom/xiaomi/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected c:Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/InternalUnitTestDaoAccess",
            "<TT;TK;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/xiaomi/greendao/identityscope/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/identityscope/a",
            "<TK;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TD;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/greendao/test/AbstractDaoTest;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TD;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/xiaomi/greendao/test/DbTest;-><init>(Z)V

    iput-object p1, p0, Lcom/xiaomi/greendao/test/AbstractDaoTest;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected setUp()V
    .locals 5

    invoke-super {p0}, Lcom/xiaomi/greendao/test/DbTest;->setUp()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/greendao/test/AbstractDaoTest;->a:Ljava/lang/Class;

    const-string v1, "createTable"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/database/sqlite/SQLiteDatabase;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/greendao/test/AbstractDaoTest;->h:Landroid/database/sqlite/SQLiteDatabase;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    new-instance v0, Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;

    iget-object v1, p0, Lcom/xiaomi/greendao/test/AbstractDaoTest;->h:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/xiaomi/greendao/test/AbstractDaoTest;->a:Ljava/lang/Class;

    iget-object v3, p0, Lcom/xiaomi/greendao/test/AbstractDaoTest;->d:Lcom/xiaomi/greendao/identityscope/a;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Class;Lcom/xiaomi/greendao/identityscope/a;)V

    iput-object v0, p0, Lcom/xiaomi/greendao/test/AbstractDaoTest;->c:Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;

    iget-object v0, p0, Lcom/xiaomi/greendao/test/AbstractDaoTest;->c:Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;->b()Lcom/xiaomi/greendao/AbstractDao;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/greendao/test/AbstractDaoTest;->b:Lcom/xiaomi/greendao/AbstractDao;

    return-void

    :catch_0
    move-exception v0

    const-string v0, "No createTable method"

    invoke-static {v0}, Lcom/xiaomi/greendao/DaoLog;->b(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not prepare DAO Test"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
