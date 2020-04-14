.class final Lcom/xiaomi/greendao/query/j;
.super Lcom/xiaomi/greendao/query/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/greendao/query/h",
        "<TT2;",
        "Lcom/xiaomi/greendao/query/b",
        "<TT2;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/greendao/query/h;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/greendao/query/j;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final synthetic b()Lcom/xiaomi/greendao/query/g;
    .locals 6

    new-instance v0, Lcom/xiaomi/greendao/query/b;

    iget-object v2, p0, Lcom/xiaomi/greendao/query/j;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v3, p0, Lcom/xiaomi/greendao/query/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/greendao/query/j;->c:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/greendao/query/b;-><init>(Lcom/xiaomi/greendao/query/j;Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;B)V

    return-object v0
.end method
