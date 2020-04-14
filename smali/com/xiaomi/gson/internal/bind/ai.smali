.class final Lcom/xiaomi/gson/internal/bind/ai;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/TypeAdapter",
        "<",
        "Ljava/sql/Timestamp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gson/TypeAdapter;

.field final synthetic b:Lcom/xiaomi/gson/internal/bind/ah;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/bind/ah;Lcom/xiaomi/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/ai;->b:Lcom/xiaomi/gson/internal/bind/ah;

    iput-object p2, p0, Lcom/xiaomi/gson/internal/bind/ai;->a:Lcom/xiaomi/gson/TypeAdapter;

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/ai;->a:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/sql/Timestamp;

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/ai;->a:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
