.class final Lcom/xiaomi/gamecenter/sdk/aq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ap;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/aq;->a:Lcom/xiaomi/gamecenter/sdk/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1100(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    return-void
.end method
