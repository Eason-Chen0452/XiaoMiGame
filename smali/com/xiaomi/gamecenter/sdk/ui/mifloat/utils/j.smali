.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/j;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/j;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/j;->a:Landroid/app/Activity;

    const-string v2, "service_downloading"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Landroid/content/Context;I)V

    return-void
.end method
