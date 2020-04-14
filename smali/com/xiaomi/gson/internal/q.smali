.class final Lcom/xiaomi/gson/internal/q;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaomi/gson/Gson;

.field final synthetic d:Lcom/xiaomi/gamecenter/sdk/br;

.field final synthetic e:Lcom/xiaomi/gson/internal/Excluder;

.field private f:Lcom/xiaomi/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaomi/gson/internal/Excluder;ZZLcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gson/internal/q;->e:Lcom/xiaomi/gson/internal/Excluder;

    iput-boolean p2, p0, Lcom/xiaomi/gson/internal/q;->a:Z

    iput-boolean p3, p0, Lcom/xiaomi/gson/internal/q;->b:Z

    iput-object p4, p0, Lcom/xiaomi/gson/internal/q;->c:Lcom/xiaomi/gson/Gson;

    iput-object p5, p0, Lcom/xiaomi/gson/internal/q;->d:Lcom/xiaomi/gamecenter/sdk/br;

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

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

    iget-object v0, p0, Lcom/xiaomi/gson/internal/q;->f:Lcom/xiaomi/gson/TypeAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/internal/q;->c:Lcom/xiaomi/gson/Gson;

    iget-object v1, p0, Lcom/xiaomi/gson/internal/q;->e:Lcom/xiaomi/gson/internal/Excluder;

    iget-object v2, p0, Lcom/xiaomi/gson/internal/q;->d:Lcom/xiaomi/gamecenter/sdk/br;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gson/Gson;->a(Lcom/xiaomi/gson/u;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gson/internal/q;->f:Lcom/xiaomi/gson/TypeAdapter;

    goto :goto_0
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

    iget-boolean v0, p0, Lcom/xiaomi/gson/internal/q;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->n()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/gson/internal/q;->b()Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/gson/internal/q;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->f()Lcom/xiaomi/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/gson/internal/q;->b()Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
