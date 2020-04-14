.class public Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetServiceToken;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetServiceToken;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetServiceToken;->b:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetServiceToken;->c:Ljava/lang/String;

    return-void
.end method
