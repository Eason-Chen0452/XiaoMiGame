.class final enum Lcom/xiaomi/gson/r;
.super Lcom/xiaomi/gson/LongSerializationPolicy;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/xiaomi/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Long;)Lcom/xiaomi/gson/JsonElement;
    .locals 1

    new-instance v0, Lcom/xiaomi/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/xiaomi/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
