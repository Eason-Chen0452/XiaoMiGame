.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;
    }
.end annotation


# static fields
.field private static j:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;


# instance fields
.field public final a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

.field private b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/app/Activity;

.field private f:Landroid/hardware/SensorManager;

.field private g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private k:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

.field private l:Z

.field private m:Landroid/hardware/SensorEventListener;

.field private n:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Landroid/view/View;

.field private s:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->k:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->l:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/c;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->m:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/s;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/s;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->n:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->o:Z

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p:Z

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->q:Z

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->r:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/n;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public static b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    return-object v0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 8

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->b(Landroid/content/Context;)I

    move-result v2

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->f(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->b(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->a(Landroid/app/Activity;)Z

    move-result v4

    const-string v5, "MiGameSDK.MiFloatManager"

    const-string v6, "initScreenParams start-----------"

    invoke-static {v5, v6}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MiGameSDK.MiFloatManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " screenWidth "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",screenHeight "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MiGameSDK.MiFloatManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isHideNav "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isNotchScreen "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",hasStatusBar "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MiGameSDK.MiFloatManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ScreenUtils.getStatusBarHeight(activity) "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->d(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MiGameSDK.MiFloatManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ScreenUtils.getNavigationBarHeight(activity) "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->c(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const-string v5, "MiGameSDK.MiFloatManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "contentView.getMeasuredHeight() "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MiGameSDK.MiFloatManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "contentView.getMeasuredWidth() "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v0, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->d(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->c(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iput v1, v5, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iput v2, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/m;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v2, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    sub-int v0, v2, v0

    iput v0, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    sub-int/2addr v1, v4

    iput v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    :cond_2
    :goto_1
    const-string v0, "MiGameSDK.MiFloatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "miFloatLayoutParams "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "float_window_width"

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v1, "float_window_height"

    invoke-static {p1, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->c:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->d:I

    const-string v0, "MiGameSDK.MiFloatManager"

    const-string v1, "initScreenParams end-----------"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v2, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    sub-int v0, v2, v0

    iput v0, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    sub-int/2addr v1, v4

    iput v1, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    goto :goto_1
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->o:Z

    return p1
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p:Z

    return p1
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->k:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->s:Z

    return p1
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->s:Z

    return v0
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/g;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/g;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/h;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->q:Z

    return-void
.end method

.method static synthetic i(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->o:Z

    return v0
.end method

.method public static j()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiFloatManager"

    const-string v2, "dismissOverlay error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V
    .locals 4

    const/16 v1, 0x3e8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->k:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->k:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager$MiFloatHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic k(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->d()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic l(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Z
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->d()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->c()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->a()I

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;

    invoke-virtual {v5}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->b()I

    move-result v5

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    const-string v7, "float_hide_tip_tmp_height"

    invoke-static {v6, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v7, v7, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    iget-object v8, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;

    invoke-virtual {v8}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->c()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    add-int/2addr v1, v2

    if-le v1, v6, :cond_0

    add-int v1, v0, v3

    if-le v1, v4, :cond_0

    if-ge v0, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic m(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    const-string v1, "misdk_float_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hide_mifloat"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->d()V

    return-void
.end method

.method static synthetic n(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/i;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic q(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->q:Z

    return v0
.end method

.method static synthetic r(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;

    return-object v0
.end method

.method static synthetic s(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic t(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic u(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic v(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->p:Z

    return v0
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b(Landroid/app/Activity;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/bd;->a()Lcom/xiaomi/gamecenter/sdk/bd;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/r;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/r;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd$a;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 7

    const/4 v6, -0x1

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/n;->a(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/l;->a(Landroid/content/Context;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;

    move-result-object v1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;->b()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->n:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;-><init>(Landroid/content/Context;IILcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->f:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->f:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->f:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "sensors is null"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i:Landroid/view/View;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i:Landroid/view/View;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/t;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/t;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/u;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;)V

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->f:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->m:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSensorManager.registerListener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "sensors list is empty"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->f:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->f:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->m:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MiGameSDK.MiFloatManager"

    const-string v1, "This app do not display float."

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/l;->a(Landroid/content/Context;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/v;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/v;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/w;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/MiFloatPosition;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/x;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/l;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/l;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/y;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/y;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/f;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/o;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/o;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k()V
    .locals 5

    :try_start_0
    const-string v0, "MiGameSDK.MiFloatManager"

    const-string v1, "showMiFloat"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V

    const-string v0, "MiGameSDK.MiFloatManager"

    const-string v1, "Do not showMiFloat in sdk."

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/l;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;

    move-result-object v1

    const-string v2, "MiGameSDK.MiFloatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "menuinfo "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/p;

    invoke-direct {v3, p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/p;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/q;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/q;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiFloatManager"

    const-string v2, "showMiFloat error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
