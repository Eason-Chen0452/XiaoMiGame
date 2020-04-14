.class final Lcom/xiaomi/gson/internal/ac;
.super Lcom/xiaomi/gson/internal/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/internal/LinkedTreeMap",
        "<TK;TV;>.com/xiaomi/gson/internal/af<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gson/internal/ab;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/ab;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gson/internal/ac;->a:Lcom/xiaomi/gson/internal/ab;

    iget-object v0, p1, Lcom/xiaomi/gson/internal/ab;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-direct {p0, v0}, Lcom/xiaomi/gson/internal/af;-><init>(Lcom/xiaomi/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gson/internal/ac;->a()Lcom/xiaomi/gson/internal/ag;

    move-result-object v0

    return-object v0
.end method
