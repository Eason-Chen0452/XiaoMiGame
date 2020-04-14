.class final Lcom/xiaomi/licensinglibrary/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/util/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/licensinglibrary/util/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/util/c;->a:Lcom/xiaomi/licensinglibrary/util/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishPayProcess(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/c;->a:Lcom/xiaomi/licensinglibrary/util/b;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/util/b;->c:Lcom/xiaomi/licensinglibrary/util/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/licensinglibrary/util/a;->a(Lcom/xiaomi/licensinglibrary/util/a;I)I

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/c;->a:Lcom/xiaomi/licensinglibrary/util/b;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/util/b;->c:Lcom/xiaomi/licensinglibrary/util/a;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/util/a;->a(Lcom/xiaomi/licensinglibrary/util/a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/c;->a:Lcom/xiaomi/licensinglibrary/util/b;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/util/b;->c:Lcom/xiaomi/licensinglibrary/util/a;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/util/a;->a(Lcom/xiaomi/licensinglibrary/util/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/c;->a:Lcom/xiaomi/licensinglibrary/util/b;

    iget-object v0, v0, Lcom/xiaomi/licensinglibrary/util/b;->c:Lcom/xiaomi/licensinglibrary/util/a;

    invoke-static {v0, p1}, Lcom/xiaomi/licensinglibrary/util/a;->a(Lcom/xiaomi/licensinglibrary/util/a;I)I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
