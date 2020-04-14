.class final Lcom/xiaomi/gson/internal/bind/n;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/gson/Gson;

.field private final b:Lcom/xiaomi/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/Gson;",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/n;->a:Lcom/xiaomi/gson/Gson;

    iput-object p2, p0, Lcom/xiaomi/gson/internal/bind/n;->b:Lcom/xiaomi/gson/TypeAdapter;

    iput-object p3, p0, Lcom/xiaomi/gson/internal/bind/n;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/n;->b:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/n;->b:Lcom/xiaomi/gson/TypeAdapter;

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/n;->c:Ljava/lang/reflect/Type;

    if-eqz p2, :cond_1

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v2, :cond_0

    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/gson/internal/bind/n;->c:Ljava/lang/reflect/Type;

    if-eq v0, v2, :cond_3

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/n;->a:Lcom/xiaomi/gson/Gson;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/reflect/Type;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/gson/internal/bind/i;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/n;->b:Lcom/xiaomi/gson/TypeAdapter;

    instance-of v1, v1, Lcom/xiaomi/gson/internal/bind/i;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/n;->b:Lcom/xiaomi/gson/TypeAdapter;

    :cond_2
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
