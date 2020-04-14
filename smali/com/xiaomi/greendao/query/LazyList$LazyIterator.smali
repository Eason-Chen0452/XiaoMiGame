.class public Lcom/xiaomi/greendao/query/LazyList$LazyIterator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/greendao/query/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/greendao/query/a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/greendao/query/c;

.field private b:I

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/greendao/query/c;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->a:Lcom/xiaomi/greendao/query/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    iput-boolean p3, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->c:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->a:Lcom/xiaomi/greendao/query/c;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/c;->close()V

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    iget-object v1, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->a:Lcom/xiaomi/greendao/query/c;

    invoke-static {v1}, Lcom/xiaomi/greendao/query/c;->a(Lcom/xiaomi/greendao/query/c;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    iget-object v1, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->a:Lcom/xiaomi/greendao/query/c;

    invoke-static {v1}, Lcom/xiaomi/greendao/query/c;->a(Lcom/xiaomi/greendao/query/c;)I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->a:Lcom/xiaomi/greendao/query/c;

    iget v1, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/query/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    iget v1, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    iget-object v2, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->a:Lcom/xiaomi/greendao/query/c;

    invoke-static {v2}, Lcom/xiaomi/greendao/query/c;->a(Lcom/xiaomi/greendao/query/c;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->close()V

    :cond_1
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    iget-object v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->a:Lcom/xiaomi/greendao/query/c;

    iget v1, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/query/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/greendao/query/LazyList$LazyIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
