.class final Lcom/xiaomi/gson/internal/v;
.super Lcom/xiaomi/gson/internal/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/internal/LinkedHashTreeMap",
        "<TK;TV;>.com/xiaomi/gson/internal/y<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gson/internal/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/u;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gson/internal/v;->a:Lcom/xiaomi/gson/internal/u;

    iget-object v0, p1, Lcom/xiaomi/gson/internal/u;->a:Lcom/xiaomi/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, v0}, Lcom/xiaomi/gson/internal/y;-><init>(Lcom/xiaomi/gson/internal/LinkedHashTreeMap;)V

    return-void
.end method


# virtual methods
.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gson/internal/v;->a()Lcom/xiaomi/gson/internal/z;

    move-result-object v0

    return-object v0
.end method
