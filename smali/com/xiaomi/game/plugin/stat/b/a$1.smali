.class Lcom/xiaomi/game/plugin/stat/b/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/game/plugin/stat/b/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/game/plugin/stat/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/b/a$1;->a:Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a$1;->a:Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Lcom/xiaomi/game/plugin/stat/b/a;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
