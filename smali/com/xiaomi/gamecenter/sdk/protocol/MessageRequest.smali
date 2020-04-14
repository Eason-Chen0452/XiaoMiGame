.class abstract Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/xiaomi/gamecenter/sdk/protocol/b;

.field protected c:Lcom/xiaomi/gamecenter/sdk/protocol/MessageMethod;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/protocol/b;Lcom/xiaomi/gamecenter/sdk/protocol/MessageMethod;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest;->b:Lcom/xiaomi/gamecenter/sdk/protocol/b;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest;->a:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest;->c:Lcom/xiaomi/gamecenter/sdk/protocol/MessageMethod;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageMethod;->GET:Lcom/xiaomi/gamecenter/sdk/protocol/MessageMethod;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest;->c:Lcom/xiaomi/gamecenter/sdk/protocol/MessageMethod;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->a(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequest;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
