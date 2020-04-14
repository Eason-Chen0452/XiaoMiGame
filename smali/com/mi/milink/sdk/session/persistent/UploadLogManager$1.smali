.class final Lcom/mi/milink/sdk/session/persistent/UploadLogManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final failed()V
    .locals 2

    sget-object v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->lock:Ljava/lang/Object;

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

.method public final success()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploadStatus:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mLastUploadTime:J

    sget-object v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->lock:Ljava/lang/Object;

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
