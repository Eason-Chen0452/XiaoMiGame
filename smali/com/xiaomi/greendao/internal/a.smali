.class final Lcom/xiaomi/greendao/internal/a;
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
.field final a:J

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field c:Lcom/xiaomi/greendao/internal/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/internal/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/Object;Lcom/xiaomi/greendao/internal/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;",
            "Lcom/xiaomi/greendao/internal/a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/greendao/internal/a;->a:J

    iput-object p3, p0, Lcom/xiaomi/greendao/internal/a;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/xiaomi/greendao/internal/a;->c:Lcom/xiaomi/greendao/internal/a;

    return-void
.end method
