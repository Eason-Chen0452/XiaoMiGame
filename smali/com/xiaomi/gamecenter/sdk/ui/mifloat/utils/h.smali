.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/h;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/h;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/h;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;->b:Landroid/content/Context;

    const-string v2, "start_download_service"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Landroid/content/Context;I)V

    return-void
.end method
