.class public Lcom/mi/milink/sdk/session/persistent/UploadLogManager;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "UploadLogManager"

.field static lock:Ljava/lang/Object;

.field static mLastUploadTime:J

.field static mSessionForUploadLog:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

.field static uploadStatus:Z

.field static uploading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mSessionForUploadLog:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mLastUploadTime:J

    sput-boolean v2, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploadStatus:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->lock:Ljava/lang/Object;

    sput-boolean v2, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploading:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uploadMilinkLog(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Lcom/mi/milink/sdk/account/IAccount;Z)Z
    .locals 6

    const/4 v0, 0x0

    sget-boolean v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploading:Z

    if-eqz v1, :cond_0

    const-string v1, "UploadLogManager"

    const-string v2, "already uploading = true,cancel"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploading:Z

    sput-boolean v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploadStatus:Z

    const-string v1, "UploadLogManager"

    const-string v2, "ServerNotificationEvent requireUploadLog"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v1

    if-nez v1, :cond_1

    sget-wide v4, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mLastUploadTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1499700

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    if-nez p2, :cond_2

    const-string v1, "UploadLogManager"

    const-string v2, "not wifi,cancel upload log this time."

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-wide v4, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mLastUploadTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    if-nez p2, :cond_2

    const-string v1, "UploadLogManager"

    const-string v2, "wifi,cancel upload log this time."

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mSessionForUploadLog:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mSessionForUploadLog:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->close()Z

    :cond_3
    new-instance v1, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/UploadLogManager$1;

    invoke-direct {v2}, Lcom/mi/milink/sdk/session/persistent/UploadLogManager$1;-><init>()V

    invoke-direct {v1, p0, p1, v2}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;-><init>(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Lcom/mi/milink/sdk/account/IAccount;Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;)V

    sput-object v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mSessionForUploadLog:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->openSession()Z

    :try_start_0
    sget-object v2, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "UploadLogManager"

    const-string v3, "wait for upload."

    invoke-static {v1, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->lock:Ljava/lang/Object;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    sget-object v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mSessionForUploadLog:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mSessionForUploadLog:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->close()Z

    :cond_4
    const/4 v1, 0x0

    sput-object v1, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->mSessionForUploadLog:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    sput-boolean v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploading:Z

    const-string v0, "UploadLogManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload uploadStatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploadStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploadStatus:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "UploadLogManager"

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
