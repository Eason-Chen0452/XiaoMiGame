.class Lcom/xiaomi/game/plugin/stat/b/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/game/plugin/stat/b/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/game/plugin/stat/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/b/a$2;->b:Lcom/xiaomi/game/plugin/stat/b/a;

    iput-object p2, p0, Lcom/xiaomi/game/plugin/stat/b/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a$2;->b:Lcom/xiaomi/game/plugin/stat/b/a;

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Lcom/xiaomi/game/plugin/stat/b/a;Ljava/lang/String;)Z

    return-void
.end method
