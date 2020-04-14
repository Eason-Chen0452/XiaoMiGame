.class abstract Lcom/xiaomi/gson/internal/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/xiaomi/gson/internal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/xiaomi/gson/internal/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/LinkedHashTreeMap;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gson/internal/y;->e:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/gson/internal/y;->e:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    iget-object v0, v0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->c:Lcom/xiaomi/gson/internal/z;

    iget-object v0, v0, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    iput-object v0, p0, Lcom/xiaomi/gson/internal/y;->b:Lcom/xiaomi/gson/internal/z;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gson/internal/y;->c:Lcom/xiaomi/gson/internal/z;

    iget-object v0, p0, Lcom/xiaomi/gson/internal/y;->e:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    iput v0, p0, Lcom/xiaomi/gson/internal/y;->d:I

    return-void
.end method


# virtual methods
.method final a()Lcom/xiaomi/gson/internal/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/gson/internal/z",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/y;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/y;->e:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->c:Lcom/xiaomi/gson/internal/z;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gson/internal/y;->e:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    iget v1, v1, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    iget v2, p0, Lcom/xiaomi/gson/internal/y;->d:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/xiaomi/gson/internal/z;->d:Lcom/xiaomi/gson/internal/z;

    iput-object v1, p0, Lcom/xiaomi/gson/internal/y;->b:Lcom/xiaomi/gson/internal/z;

    iput-object v0, p0, Lcom/xiaomi/gson/internal/y;->c:Lcom/xiaomi/gson/internal/z;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gson/internal/y;->b:Lcom/xiaomi/gson/internal/z;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/y;->e:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->c:Lcom/xiaomi/gson/internal/z;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gson/internal/y;->c:Lcom/xiaomi/gson/internal/z;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/internal/y;->e:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/y;->c:Lcom/xiaomi/gson/internal/z;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->a(Lcom/xiaomi/gson/internal/z;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gson/internal/y;->c:Lcom/xiaomi/gson/internal/z;

    iget-object v0, p0, Lcom/xiaomi/gson/internal/y;->e:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/xiaomi/gson/internal/LinkedHashTreeMap;->e:I

    iput v0, p0, Lcom/xiaomi/gson/internal/y;->d:I

    return-void
.end method
