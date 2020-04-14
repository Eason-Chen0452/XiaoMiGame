.class public final Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;
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
.field private final a:Lcom/xiaomi/gson/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/q",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/xiaomi/gson/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/p",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/xiaomi/gson/Gson;

.field private final d:Lcom/xiaomi/gamecenter/sdk/br;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/xiaomi/gson/u;

.field private final f:Lcom/xiaomi/gson/internal/bind/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter",
            "<TT;>.com/xiaomi/gson/internal/bind/m;"
        }
    .end annotation
.end field

.field private g:Lcom/xiaomi/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/gson/q;Lcom/xiaomi/gson/p;Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;Lcom/xiaomi/gson/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/q",
            "<TT;>;",
            "Lcom/xiaomi/gson/p",
            "<TT;>;",
            "Lcom/xiaomi/gson/Gson;",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<TT;>;",
            "Lcom/xiaomi/gson/u;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    new-instance v0, Lcom/xiaomi/gson/internal/bind/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gson/internal/bind/m;-><init>(Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;B)V

    iput-object v0, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->f:Lcom/xiaomi/gson/internal/bind/m;

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->a:Lcom/xiaomi/gson/q;

    iput-object p2, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->b:Lcom/xiaomi/gson/p;

    iput-object p3, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->c:Lcom/xiaomi/gson/Gson;

    iput-object p4, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->d:Lcom/xiaomi/gamecenter/sdk/br;

    iput-object p5, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->e:Lcom/xiaomi/gson/u;

    return-void
.end method

.method private b()Lcom/xiaomi/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->g:Lcom/xiaomi/gson/TypeAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->c:Lcom/xiaomi/gson/Gson;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->e:Lcom/xiaomi/gson/u;

    iget-object v2, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->d:Lcom/xiaomi/gamecenter/sdk/br;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gson/u;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->g:Lcom/xiaomi/gson/TypeAdapter;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->b:Lcom/xiaomi/gson/p;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->b()Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/gson/internal/aj;->a(Lcom/xiaomi/gson/stream/JsonReader;)Lcom/xiaomi/gson/JsonElement;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/gson/JsonNull;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->b:Lcom/xiaomi/gson/p;

    iget-object v2, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->d:Lcom/xiaomi/gamecenter/sdk/br;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/xiaomi/gson/p;->a(Lcom/xiaomi/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->a:Lcom/xiaomi/gson/q;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->b()Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->f()Lcom/xiaomi/gson/stream/JsonWriter;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->a:Lcom/xiaomi/gson/q;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/TreeTypeAdapter;->d:Lcom/xiaomi/gamecenter/sdk/br;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/br;->getType()Ljava/lang/reflect/Type;

    invoke-interface {v0, p2}, Lcom/xiaomi/gson/q;->a(Ljava/lang/Object;)Lcom/xiaomi/gson/JsonElement;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/gson/internal/aj;->a(Lcom/xiaomi/gson/JsonElement;Lcom/xiaomi/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
