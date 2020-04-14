.class public abstract Lcom/xiaomi/gson/TypeAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/xiaomi/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/xiaomi/gson/JsonElement;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/xiaomi/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/xiaomi/gson/internal/bind/JsonTreeWriter;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/xiaomi/gson/internal/bind/JsonTreeWriter;->a()Lcom/xiaomi/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/xiaomi/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a()Lcom/xiaomi/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/gson/t;

    invoke-direct {v0, p0}, Lcom/xiaomi/gson/t;-><init>(Lcom/xiaomi/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation
.end method
