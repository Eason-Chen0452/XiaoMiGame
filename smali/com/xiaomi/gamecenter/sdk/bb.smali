.class final Lcom/xiaomi/gamecenter/sdk/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bb;->a:Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x89d

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
