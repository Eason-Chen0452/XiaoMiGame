.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;


# instance fields
.field private b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;

.field private c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;B)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jar.mifloat.message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->c:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;

    return-void
.end method
