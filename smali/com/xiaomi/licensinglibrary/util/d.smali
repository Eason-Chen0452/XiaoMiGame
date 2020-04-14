.class final Lcom/xiaomi/licensinglibrary/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/util/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/util/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/util/d;->a:Lcom/xiaomi/licensinglibrary/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    .locals 2

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/d;->a:Lcom/xiaomi/licensinglibrary/util/a;

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/licensinglibrary/util/a;->a(Lcom/xiaomi/licensinglibrary/util/a;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/d;->a:Lcom/xiaomi/licensinglibrary/util/a;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/util/a;->a(Lcom/xiaomi/licensinglibrary/util/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/d;->a:Lcom/xiaomi/licensinglibrary/util/a;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/util/a;->a(Lcom/xiaomi/licensinglibrary/util/a;)Ljava/lang/Object;

    move-result-object v0

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
