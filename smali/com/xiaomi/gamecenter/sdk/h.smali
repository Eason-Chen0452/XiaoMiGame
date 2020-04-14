.class final Lcom/xiaomi/gamecenter/sdk/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/h;->c:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/h;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/h;->b:Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/h;->c:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/h;->b:Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;)V

    return-void
.end method
