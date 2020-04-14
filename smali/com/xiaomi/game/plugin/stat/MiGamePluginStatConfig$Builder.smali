.class public Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->f:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;
    .locals 2

    new-instance v0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;-><init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$1;)V

    return-object v0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->a:Landroid/content/Context;

    return-object p0
.end method

.method public setIsPromo(Z)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->f:Z

    return-object p0
.end method

.method public setJarVersion(Ljava/lang/String;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setMonitorPkgName(Ljava/lang/String;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public setReportDAU(Z)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->e:Z

    return-object p0
.end method
