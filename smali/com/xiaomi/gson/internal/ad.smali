.class final Lcom/xiaomi/gson/internal/ad;
.super Ljava/util/AbstractSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/LinkedTreeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gson/internal/ad;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gson/internal/ad;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/xiaomi/gson/internal/LinkedTreeMap;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gson/internal/ad;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/gson/internal/ae;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/internal/ae;-><init>(Lcom/xiaomi/gson/internal/ad;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gson/internal/ad;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gson/internal/LinkedTreeMap;->a(Ljava/lang/Object;)Lcom/xiaomi/gson/internal/ag;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gson/internal/ad;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/xiaomi/gson/internal/LinkedTreeMap;->c:I

    return v0
.end method
