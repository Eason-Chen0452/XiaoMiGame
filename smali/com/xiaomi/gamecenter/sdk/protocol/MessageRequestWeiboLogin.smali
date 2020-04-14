.class public Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestWeiboLogin;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestWeiboLogin;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestWeiboLogin;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestWeiboLogin;->c:Ljava/lang/String;

    return-void
.end method
