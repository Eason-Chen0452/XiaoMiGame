.class final enum Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy$1;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;ILcom/xiaomi/gamecenter/gamesdk/datasdk/gson/LongSerializationPolicy$1;)V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Long;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
