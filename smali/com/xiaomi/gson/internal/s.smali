.class final Lcom/xiaomi/gson/internal/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/gson/internal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Lcom/xiaomi/gson/internal/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/s;->a:Lcom/xiaomi/gson/internal/z;

    iget-object v1, v0, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method

.method final a(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/gson/internal/s;->b:I

    iput v1, p0, Lcom/xiaomi/gson/internal/s;->d:I

    iput v1, p0, Lcom/xiaomi/gson/internal/s;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gson/internal/s;->a:Lcom/xiaomi/gson/internal/z;

    return-void
.end method

.method final a(Lcom/xiaomi/gson/internal/z;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iput-object v0, p1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v0, p1, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iput v6, p1, Lcom/xiaomi/gson/internal/z;->i:I

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->d:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/s;->d:I

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/s;->b:I

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/s;->c:I

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/internal/s;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v0, p1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput-object p1, p0, Lcom/xiaomi/gson/internal/s;->a:Lcom/xiaomi/gson/internal/z;

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/s;->d:I

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->b:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->d:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/s;->d:I

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/s;->b:I

    iget v0, p0, Lcom/xiaomi/gson/internal/s;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/gson/internal/s;->c:I

    :cond_1
    const/4 v0, 0x4

    :goto_0
    iget v1, p0, Lcom/xiaomi/gson/internal/s;->d:I

    add-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/xiaomi/gson/internal/s;->c:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/gson/internal/s;->a:Lcom/xiaomi/gson/internal/z;

    iget-object v2, v1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iget-object v3, v2, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iget-object v4, v3, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v4, v2, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v2, p0, Lcom/xiaomi/gson/internal/s;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v3, v2, Lcom/xiaomi/gson/internal/z;->b:Lcom/xiaomi/gson/internal/z;

    iput-object v1, v2, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iget v4, v1, Lcom/xiaomi/gson/internal/z;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/xiaomi/gson/internal/z;->i:I

    iput-object v2, v3, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v2, v1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    :cond_2
    :goto_1
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/xiaomi/gson/internal/s;->c:I

    if-ne v1, v6, :cond_4

    iget-object v1, p0, Lcom/xiaomi/gson/internal/s;->a:Lcom/xiaomi/gson/internal/z;

    iget-object v2, v1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v2, p0, Lcom/xiaomi/gson/internal/s;->a:Lcom/xiaomi/gson/internal/z;

    iput-object v1, v2, Lcom/xiaomi/gson/internal/z;->c:Lcom/xiaomi/gson/internal/z;

    iget v3, v1, Lcom/xiaomi/gson/internal/z;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/xiaomi/gson/internal/z;->i:I

    iput-object v2, v1, Lcom/xiaomi/gson/internal/z;->a:Lcom/xiaomi/gson/internal/z;

    iput v5, p0, Lcom/xiaomi/gson/internal/s;->c:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/xiaomi/gson/internal/s;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iput v5, p0, Lcom/xiaomi/gson/internal/s;->c:I

    goto :goto_1

    :cond_5
    return-void
.end method
