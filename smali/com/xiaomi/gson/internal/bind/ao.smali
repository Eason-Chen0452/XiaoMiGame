.class final Lcom/xiaomi/gson/internal/bind/ao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gson/u;


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lcom/xiaomi/gson/TypeAdapter;


# direct methods
.method constructor <init>(Ljava/lang/Class;Lcom/xiaomi/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/ao;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/xiaomi/gson/internal/bind/ao;->b:Lcom/xiaomi/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gson/Gson;",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<TT;>;)",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/ao;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/ao;->b:Lcom/xiaomi/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Factory[type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/ao;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",adapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/ao;->b:Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
