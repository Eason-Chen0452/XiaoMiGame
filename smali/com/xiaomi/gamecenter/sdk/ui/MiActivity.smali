.class public final Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->b:Ljava/lang/String;

    const-class v2, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->d:Ljava/lang/String;

    const-class v2, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->c:Ljava/lang/String;

    const-class v2, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->e()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->h()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1030003

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->setTheme(I)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->requestWindowFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "classKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    :try_start_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->finish()V

    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/content/Intent;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a()Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->finish()V

    goto :goto_0
.end method

.method protected final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->g()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->removeAllViews()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/p;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2537
        :pswitch_0
    .end packed-switch
.end method

.method protected final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->f()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected final onStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
