.class final Lcom/xiaomi/gamecenter/sdk/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/v;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "mio_dialog_login_error"

    invoke-static {v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "btn_close"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "btn"

    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/w;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/w;-><init>(Lcom/xiaomi/gamecenter/sdk/v;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/x;-><init>(Lcom/xiaomi/gamecenter/sdk/v;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
