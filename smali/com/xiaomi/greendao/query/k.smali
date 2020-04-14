.class final Lcom/xiaomi/greendao/query/k;
.super Lcom/xiaomi/greendao/query/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/greendao/query/h",
        "<TT2;",
        "Lcom/xiaomi/greendao/query/d",
        "<TT2;>;>;"
    }
.end annotation


# instance fields
.field private final e:I

.field private final f:I


# direct methods
.method constructor <init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT2;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/greendao/query/h;-><init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V

    iput p4, p0, Lcom/xiaomi/greendao/query/k;->e:I

    iput p5, p0, Lcom/xiaomi/greendao/query/k;->f:I

    return-void
.end method


# virtual methods
.method protected final synthetic b()Lcom/xiaomi/greendao/query/g;
    .locals 8

    new-instance v0, Lcom/xiaomi/greendao/query/d;

    iget-object v2, p0, Lcom/xiaomi/greendao/query/k;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v3, p0, Lcom/xiaomi/greendao/query/k;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/greendao/query/k;->c:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iget v5, p0, Lcom/xiaomi/greendao/query/k;->e:I

    iget v6, p0, Lcom/xiaomi/greendao/query/k;->f:I

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/greendao/query/d;-><init>(Lcom/xiaomi/greendao/query/k;Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;IIB)V

    return-object v0
.end method
