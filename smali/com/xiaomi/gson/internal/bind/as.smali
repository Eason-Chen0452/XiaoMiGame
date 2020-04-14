.class final Lcom/xiaomi/gson/internal/bind/as;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/TypeAdapter",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/xiaomi/gson/internal/bind/ar;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/bind/ar;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/as;->b:Lcom/xiaomi/gson/internal/bind/ar;

    iput-object p2, p0, Lcom/xiaomi/gson/internal/bind/as;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/stream/JsonReader;",
            ")TT1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/as;->b:Lcom/xiaomi/gson/internal/bind/ar;

    iget-object v0, v0, Lcom/xiaomi/gson/internal/bind/ar;->b:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/as;->a:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/gson/internal/bind/as;->a:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/stream/JsonWriter;",
            "TT1;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/as;->b:Lcom/xiaomi/gson/internal/bind/ar;

    iget-object v0, v0, Lcom/xiaomi/gson/internal/bind/ar;->b:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
