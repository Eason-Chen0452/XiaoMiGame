.class final Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/b;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "http://app.xiaomi.com/details?id=com.xiaomi.gamecenter&back=true&ref=gameservicer&startDownload=true"

    sget-boolean v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->d:Z

    if-nez v1, :cond_0

    const-string v0, "http://game.xiaomi.com/"

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/b;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
