.class public Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->ab:Ljava/lang/String;

    const-string v2, "misdk.http.login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->ao:Ljava/lang/String;

    const-string v2, "misdk.http.login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->au:Ljava/lang/String;

    const-string v2, "misdk.http.login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->av:Ljava/lang/String;

    const-string v2, "misdk.http.login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->aw:Ljava/lang/String;

    const-string v2, "misdk.http.login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->B:Ljava/lang/String;

    const-string v2, "misdk.http.login"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->y:Ljava/lang/String;

    const-string v2, "misdk.http.pay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->z:Ljava/lang/String;

    const-string v2, "misdk.http.pay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->A:Ljava/lang/String;

    const-string v2, "misdk.http.pay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v2, ""

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a:Ljava/util/Map;

    const-string v1, "misdk.http.cpinit"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
