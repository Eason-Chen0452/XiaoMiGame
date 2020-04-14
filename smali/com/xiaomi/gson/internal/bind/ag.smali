.class final Lcom/xiaomi/gson/internal/bind/ag;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/TypeAdapter",
        "<",
        "Ljava/util/Currency;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Ljava/util/Currency;

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->b(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    return-void
.end method
