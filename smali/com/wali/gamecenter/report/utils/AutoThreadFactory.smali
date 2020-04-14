.class public final Lcom/wali/gamecenter/report/utils/AutoThreadFactory;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_MAX_LIFE:I = 0xea60

.field private static _group:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AppendTask(Ljava/lang/String;Ljava/lang/Runnable;I)V
    .locals 4

    sget-object v1, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

    const-wide/32 v2, 0xea60

    invoke-direct {v0, v2, v3, p2, p0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;-><init>(JILjava/lang/String;)V

    sget-object v2, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->appendTask(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static ClearTask(Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->terminat()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static GetTaskCount(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->getTaskCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clearTasks()V
    .locals 3

    sget-object v1, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->terminat()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->_group:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
