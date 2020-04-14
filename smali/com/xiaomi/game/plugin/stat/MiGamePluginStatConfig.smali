.class public final Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private final h:Z


# direct methods
.method private constructor <init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;

    move-result-object v0

    const-string v1, "2882303761517593007"

    iput-object v1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->b:Ljava/lang/String;

    const-string v1, "5911759359007"

    iput-object v1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->b(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->c(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->d(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->e(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->g:Z

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->f(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->h:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;-><init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a:Landroid/content/Context;

    return-object v0
.end method

.method final a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->b(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u975e\u6cd5\u7684MiGamePluginStatParam \u53c2\u6570\u8bbe\u7f6e"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "default"

    invoke-static {p1, v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->c(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1.0.0"

    invoke-static {p1, v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->b(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->g:Z

    return v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->h:Z

    return v0
.end method
