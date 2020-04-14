.class final Lcom/xiaomi/gamecenter/sdk/at;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

.field final synthetic b:[B

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/as;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/as;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;[B)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/at;->c:Lcom/xiaomi/gamecenter/sdk/as;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/at;->a:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/at;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/at;->a:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/at;->b:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/at;->b:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
