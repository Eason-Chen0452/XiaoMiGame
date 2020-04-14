.class Lcom/xiaomi/game/plugin/stat/b/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/game/plugin/stat/b/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/game/plugin/stat/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/b/a$3;->a:Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/b/a$3;->a:Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Lcom/xiaomi/game/plugin/stat/b/a;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_key"

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/b/a$3;->a:Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Lcom/xiaomi/game/plugin/stat/b/a;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/b/a$3;->a:Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Lcom/xiaomi/game/plugin/stat/b/a;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channel"

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/b/a$3;->a:Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Lcom/xiaomi/game/plugin/stat/b/a;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    const-string v2, "31"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stat_value"

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/b/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a$3;->a:Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Lcom/xiaomi/game/plugin/stat/b/a;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/game/plugin/stat/b/c;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a$3;->a:Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Lcom/xiaomi/game/plugin/stat/b/a;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->d(Landroid/content/Context;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload the init: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Upload MiStat data failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/c/a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
