.class final Lcom/xiaomi/gamecenter/sdk/utils/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    check-cast p2, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    iget-object v0, p1, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
