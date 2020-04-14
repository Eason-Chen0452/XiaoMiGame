.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

.field private d:I

.field private e:I

.field private f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;

.field private g:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

.field private h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

.field private i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

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
.method public final a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->c:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->g:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->c:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a()V

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;)V
    .locals 3

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;->isMessagePoint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a()V

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;->isGiftPackPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->e()V

    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;->isGiftPoint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->c()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiFloatMenuManager"

    const-string v2, "refreshRedPoint error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->f()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->c:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->c:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b()V

    :cond_0
    return-void
.end method

.method public final c()Lcom/xiaomi/gamecenter/sdk/utils/Downloader;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->c:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    return-object v0
.end method

.method public final d()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;
    .locals 5

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->g:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    const-string v1, "view_dimen_740"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    const-string v2, "view_dimen_454"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    const-string v2, "view_dimen_954"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_2
    :goto_1
    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->d:I

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->e:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v4, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    const-string v2, "view_dimen_704"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->d:I

    return v0
.end method
