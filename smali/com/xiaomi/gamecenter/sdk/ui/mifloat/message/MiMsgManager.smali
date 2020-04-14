.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;
    }
.end annotation


# static fields
.field private static f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/FrameLayout;

.field private d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

.field private e:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;

.field private g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->e:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/b;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;

    return-void
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/n;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/n;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->e:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->b:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->c:Landroid/widget/FrameLayout;

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V
    .locals 2

    const/16 v1, 0x3e8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->e:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->e:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->e:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->sendEmptyMessage(I)Z

    return-void
.end method
