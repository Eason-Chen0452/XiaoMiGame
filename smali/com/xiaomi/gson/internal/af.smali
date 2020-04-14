.class abstract Lcom/xiaomi/gson/internal/af;
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
.field b:Lcom/xiaomi/gson/internal/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/ag",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/xiaomi/gson/internal/ag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/ag",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/xiaomi/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/LinkedTreeMap;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gson/internal/af;->e:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/gson/internal/af;->e:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    iget-object v0, v0, Lcom/xiaomi/gson/internal/LinkedTreeMap;->e:Lcom/xiaomi/gson/internal/ag;

    iget-object v0, v0, Lcom/xiaomi/gson/internal/ag;->d:Lcom/xiaomi/gson/internal/ag;

    iput-object v0, p0, Lcom/xiaomi/gson/internal/af;->b:Lcom/xiaomi/gson/internal/ag;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gson/internal/af;->c:Lcom/xiaomi/gson/internal/ag;

    iget-object v0, p0, Lcom/xiaomi/gson/internal/af;->e:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/xiaomi/gson/internal/LinkedTreeMap;->d:I

    iput v0, p0, Lcom/xiaomi/gson/internal/af;->d:I

    return-void
.end method


# virtual methods
.method final a()Lcom/xiaomi/gson/internal/ag;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/gson/internal/ag",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/af;->b:Lcom/xiaomi/gson/internal/ag;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/af;->e:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/xiaomi/gson/internal/LinkedTreeMap;->e:Lcom/xiaomi/gson/internal/ag;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gson/internal/af;->e:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    iget v1, v1, Lcom/xiaomi/gson/internal/LinkedTreeMap;->d:I

    iget v2, p0, Lcom/xiaomi/gson/internal/af;->d:I

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/xiaomi/gson/internal/ag;->d:Lcom/xiaomi/gson/internal/ag;

    iput-object v1, p0, Lcom/xiaomi/gson/internal/af;->b:Lcom/xiaomi/gson/internal/ag;

    iput-object v0, p0, Lcom/xiaomi/gson/internal/af;->c:Lcom/xiaomi/gson/internal/ag;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gson/internal/af;->b:Lcom/xiaomi/gson/internal/ag;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/af;->e:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/xiaomi/gson/internal/LinkedTreeMap;->e:Lcom/xiaomi/gson/internal/ag;

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

    iget-object v0, p0, Lcom/xiaomi/gson/internal/af;->c:Lcom/xiaomi/gson/internal/ag;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/internal/af;->e:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/af;->c:Lcom/xiaomi/gson/internal/ag;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gson/internal/LinkedTreeMap;->a(Lcom/xiaomi/gson/internal/ag;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gson/internal/af;->c:Lcom/xiaomi/gson/internal/ag;

    iget-object v0, p0, Lcom/xiaomi/gson/internal/af;->e:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/xiaomi/gson/internal/LinkedTreeMap;->d:I

    iput v0, p0, Lcom/xiaomi/gson/internal/af;->d:I

    return-void
.end method
