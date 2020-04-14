.class public Lcom/xiaomi/greendao/query/Join;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SRC:",
        "Ljava/lang/Object;",
        "DST:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/xiaomi/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TDST;*>;"
        }
    .end annotation
.end field

.field final c:Lcom/xiaomi/greendao/Property;

.field final d:Lcom/xiaomi/greendao/Property;

.field final e:Ljava/lang/String;

.field final f:Lcom/xiaomi/greendao/query/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/query/l",
            "<TDST;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/greendao/Property;Lcom/xiaomi/greendao/AbstractDao;Lcom/xiaomi/greendao/Property;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaomi/greendao/Property;",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TDST;*>;",
            "Lcom/xiaomi/greendao/Property;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/Join;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/greendao/query/Join;->c:Lcom/xiaomi/greendao/Property;

    iput-object p3, p0, Lcom/xiaomi/greendao/query/Join;->b:Lcom/xiaomi/greendao/AbstractDao;

    iput-object p4, p0, Lcom/xiaomi/greendao/query/Join;->d:Lcom/xiaomi/greendao/Property;

    iput-object p5, p0, Lcom/xiaomi/greendao/query/Join;->e:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/greendao/query/l;

    invoke-direct {v0, p3, p5}, Lcom/xiaomi/greendao/query/l;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/greendao/query/Join;->f:Lcom/xiaomi/greendao/query/l;

    return-void
.end method
