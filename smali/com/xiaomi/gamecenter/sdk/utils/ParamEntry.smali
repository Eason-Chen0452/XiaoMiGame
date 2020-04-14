.class public final Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
