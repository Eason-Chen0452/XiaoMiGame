.class Lcom/xiaomi/game/plugin/stat/a/b$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/game/plugin/stat/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/game/plugin/stat/a/b;


# direct methods
.method private constructor <init>(Lcom/xiaomi/game/plugin/stat/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/a/b$a;->a:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/game/plugin/stat/a/b;Lcom/xiaomi/game/plugin/stat/a/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/game/plugin/stat/a/b$a;-><init>(Lcom/xiaomi/game/plugin/stat/a/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/xiaomi/game/plugin/stat/a/d;->a()Lcom/xiaomi/game/plugin/stat/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/a/d;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
