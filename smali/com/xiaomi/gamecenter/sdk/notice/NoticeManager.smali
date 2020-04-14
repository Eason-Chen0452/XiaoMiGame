.class public Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;,
        Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;,
        Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;,
        Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeUrlActionListener;
    }
.end annotation


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;


# instance fields
.field private b:Lcom/xiaomi/gamecenter/sdk/bg;

.field private c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

.field private e:Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/app/Activity;

.field private h:Lcom/xiaomi/gamecenter/sdk/notice/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "success"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a:Landroid/util/SparseArray;

    const/16 v1, 0xfa1

    const-string v2, "invalid param"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a:Landroid/util/SparseArray;

    const/16 v1, 0xfa2

    const-string v2, "invalid proto"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a:Landroid/util/SparseArray;

    const/16 v1, 0xfa3

    const-string v2, "db error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a:Landroid/util/SparseArray;

    const/16 v1, 0xfa4

    const-string v2, "server error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a:Landroid/util/SparseArray;

    const/16 v1, 0xfa5

    const-string v2, "no match notice"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->b:Lcom/xiaomi/gamecenter/sdk/bg;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/bg;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->b:Lcom/xiaomi/gamecenter/sdk/bg;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->d:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->d:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->d:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->d:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->f:Ljava/util/Queue;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/NoticeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->h:Lcom/xiaomi/gamecenter/sdk/notice/a;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->e:Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/notice/a;)V
    .locals 3

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->g:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->h:Lcom/xiaomi/gamecenter/sdk/notice/a;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->f:Ljava/util/Queue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->f:Ljava/util/Queue;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->a(Ljava/util/Queue;Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->h:Lcom/xiaomi/gamecenter/sdk/notice/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->h:Lcom/xiaomi/gamecenter/sdk/notice/a;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/notice/a;->a()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/bg;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;-><init>(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->b:Lcom/xiaomi/gamecenter/sdk/bg;

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;)V
    .locals 4

    const-string v0, "gamesdk.config.getinitconfig"

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->b:Ljava/util/Queue;

    if-eqz v1, :cond_0

    const-string v0, "MiGameSDK.NoticeManager"

    const-string v1, "notice is showing."

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->e:Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;-><init>(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
