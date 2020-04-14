.class final enum Lcom/xiaomi/gson/s;
.super Lcom/xiaomi/gson/LongSerializationPolicy;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Long;)Lcom/xiaomi/gson/JsonElement;
    .locals 2

    new-instance v0, Lcom/xiaomi/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
