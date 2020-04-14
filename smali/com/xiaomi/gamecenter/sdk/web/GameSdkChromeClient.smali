.class public Lcom/xiaomi/gamecenter/sdk/web/GameSdkChromeClient;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private a:Lcom/xiaomi/gamecenter/sdk/web/a;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/web/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/GameSdkChromeClient;->a:Lcom/xiaomi/gamecenter/sdk/web/a;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/GameSdkChromeClient;->a:Lcom/xiaomi/gamecenter/sdk/web/a;

    invoke-interface {v0, p2}, Lcom/xiaomi/gamecenter/sdk/web/a;->a(I)V

    return-void
.end method
