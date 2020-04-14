.class final Lcom/xiaomi/gson/internal/bind/ah;
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
    .locals 2
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

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/Gson;->a(Ljava/lang/Class;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v1

    new-instance v0, Lcom/xiaomi/gson/internal/bind/ai;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gson/internal/bind/ai;-><init>(Lcom/xiaomi/gson/internal/bind/ah;Lcom/xiaomi/gson/TypeAdapter;)V

    goto :goto_0
.end method
