.class abstract Lcom/xiaomi/greendao/query/i;
.super Lcom/xiaomi/greendao/query/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/greendao/query/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final f:I

.field protected final g:I


# direct methods
.method protected constructor <init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/greendao/query/g;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    iput p4, p0, Lcom/xiaomi/greendao/query/i;->f:I

    iput p5, p0, Lcom/xiaomi/greendao/query/i;->g:I

    return-void
.end method
