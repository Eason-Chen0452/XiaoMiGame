.class public final Lcom/xiaomi/gson/JsonObject;
.super Lcom/xiaomi/gson/JsonElement;


# instance fields
.field private final a:Lcom/xiaomi/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/gson/JsonElement;-><init>()V

    new-instance v0, Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/xiaomi/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gson/JsonObject;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/xiaomi/gson/JsonElement;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/xiaomi/gson/JsonNull;->a:Lcom/xiaomi/gson/JsonNull;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/JsonObject;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/xiaomi/gson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/xiaomi/gson/JsonObject;

    iget-object v0, p1, Lcom/xiaomi/gson/JsonObject;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/xiaomi/gson/JsonObject;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/JsonObject;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/xiaomi/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gson/JsonObject;->a:Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/xiaomi/gson/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method
