.class final Lcom/xiaomi/gamecenter/sdk/gam/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/gam/c;->c:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;

    iput p2, p0, Lcom/xiaomi/gamecenter/sdk/gam/c;->a:I

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/gam/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/gam/c;->c:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/gam/c;->a:I

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/gam/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseListener;->onResponseStatus(ILjava/lang/String;)V

    return-void
.end method
