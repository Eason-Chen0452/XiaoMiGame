.class public abstract Lcom/xiaomi/greendao/test/AbstractDaoTestSinglePk;
.super Lcom/xiaomi/greendao/test/AbstractDaoTest;


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
        "Lcom/xiaomi/greendao/test/AbstractDaoTest",
        "<TD;TT;TK;>;"
    }
.end annotation


# instance fields
.field protected e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private i:Lcom/xiaomi/greendao/Property;


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

    invoke-direct {p0, p1}, Lcom/xiaomi/greendao/test/AbstractDaoTest;-><init>(Ljava/lang/Class;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/test/AbstractDaoTestSinglePk;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method protected setUp()V
    .locals 5

    invoke-super {p0}, Lcom/xiaomi/greendao/test/AbstractDaoTest;->setUp()V

    iget-object v0, p0, Lcom/xiaomi/greendao/test/AbstractDaoTestSinglePk;->c:Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/InternalUnitTestDaoAccess;->a()[Lcom/xiaomi/greendao/Property;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    iget-boolean v4, v3, Lcom/xiaomi/greendao/Property;->d:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/greendao/test/AbstractDaoTestSinglePk;->i:Lcom/xiaomi/greendao/Property;

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Test does not work with multiple PK columns"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object v3, p0, Lcom/xiaomi/greendao/test/AbstractDaoTestSinglePk;->i:Lcom/xiaomi/greendao/Property;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/greendao/test/AbstractDaoTestSinglePk;->i:Lcom/xiaomi/greendao/Property;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Test does not work without a PK column"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method
