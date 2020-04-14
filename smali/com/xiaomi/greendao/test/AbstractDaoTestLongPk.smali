.class public abstract Lcom/xiaomi/greendao/test/AbstractDaoTestLongPk;
.super Lcom/xiaomi/greendao/test/AbstractDaoTestSinglePk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/xiaomi/greendao/AbstractDao",
        "<TT;",
        "Ljava/lang/Long;",
        ">;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/greendao/test/AbstractDaoTestSinglePk",
        "<TD;TT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TD;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/greendao/test/AbstractDaoTestSinglePk;-><init>(Ljava/lang/Class;)V

    return-void
.end method
