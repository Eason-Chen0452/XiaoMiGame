.class final Lcom/xiaomi/gamecenter/sdk/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/g;->a:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getConfigFromServer()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Ljava/lang/String;)V

    return-void
.end method
