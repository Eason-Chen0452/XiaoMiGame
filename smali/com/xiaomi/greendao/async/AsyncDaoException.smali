.class public Lcom/xiaomi/greendao/async/AsyncDaoException;
.super Lcom/xiaomi/greendao/DaoException;


# instance fields
.field private final a:Lcom/xiaomi/greendao/async/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/greendao/async/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/xiaomi/greendao/async/AsyncDaoException;->a:Lcom/xiaomi/greendao/async/a;

    return-void
.end method
