.class final Lcom/xiaomi/gson/internal/bind/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gson/u;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gson/Gson;",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<TT;>;)",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v0, v1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v1}, Lcom/xiaomi/gson/internal/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v2

    new-instance v0, Lcom/xiaomi/gson/internal/bind/ArrayTypeAdapter;

    invoke-static {v1}, Lcom/xiaomi/gson/internal/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v2, v1}, Lcom/xiaomi/gson/internal/bind/ArrayTypeAdapter;-><init>(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gson/TypeAdapter;Ljava/lang/Class;)V

    goto :goto_0
.end method
