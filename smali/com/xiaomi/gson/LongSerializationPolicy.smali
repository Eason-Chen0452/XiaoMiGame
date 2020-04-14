.class public abstract enum Lcom/xiaomi/gson/LongSerializationPolicy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/gson/LongSerializationPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/xiaomi/gson/LongSerializationPolicy;

.field public static final enum STRING:Lcom/xiaomi/gson/LongSerializationPolicy;

.field private static final synthetic a:[Lcom/xiaomi/gson/LongSerializationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/gson/r;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/xiaomi/gson/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/gson/LongSerializationPolicy;->DEFAULT:Lcom/xiaomi/gson/LongSerializationPolicy;

    new-instance v0, Lcom/xiaomi/gson/s;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/xiaomi/gson/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/gson/LongSerializationPolicy;->STRING:Lcom/xiaomi/gson/LongSerializationPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/gson/LongSerializationPolicy;

    const/4 v1, 0x0

    sget-object v2, Lcom/xiaomi/gson/LongSerializationPolicy;->DEFAULT:Lcom/xiaomi/gson/LongSerializationPolicy;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/xiaomi/gson/LongSerializationPolicy;->STRING:Lcom/xiaomi/gson/LongSerializationPolicy;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gson/LongSerializationPolicy;->a:[Lcom/xiaomi/gson/LongSerializationPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gson/LongSerializationPolicy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gson/LongSerializationPolicy;
    .locals 1

    const-class v0, Lcom/xiaomi/gson/LongSerializationPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/LongSerializationPolicy;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gson/LongSerializationPolicy;
    .locals 1

    sget-object v0, Lcom/xiaomi/gson/LongSerializationPolicy;->a:[Lcom/xiaomi/gson/LongSerializationPolicy;

    invoke-virtual {v0}, [Lcom/xiaomi/gson/LongSerializationPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gson/LongSerializationPolicy;

    return-object v0
.end method


# virtual methods
.method public abstract serialize(Ljava/lang/Long;)Lcom/xiaomi/gson/JsonElement;
.end method
