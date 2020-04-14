.class Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-wide/16 v10, 0xbb8

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-static {v0, v5}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->access$102(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v0, v3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v1, v1, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    if-nez v1, :cond_3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    const-string v1, "MiLinkClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getRemoteService, but remoteService = null, stopCount="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v2, v2, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    const-string v1, "MiLinkClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "try startService, startCount="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->access$202(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Z)Z

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    sget-object v4, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->Restart:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;

    invoke-static {v1, v4}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->access$300(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-static {v1}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->access$400(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-static {v1}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->access$400(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v8, 0xbb8

    invoke-virtual {v1, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    monitor-exit v4

    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    const-string v4, "MiLinkClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "startService(Reason.Restart) exception  :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    move v1, v2

    goto :goto_1

    :cond_1
    const-wide/16 v8, 0x3e8

    :try_start_4
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v1, v1, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    sget-object v2, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;->UserCall:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->access$500(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$Reason;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v1, v1, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->remoteService:Lcom/mi/milink/sdk/aidl/IService;

    if-nez v1, :cond_4

    const-string v1, "MiLinkClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mns service start failed ,create system.log. stopCount="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->generateSystemLog()V

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const-string v4, "milink.getremoteservice"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v10, v3

    move v11, v3

    move v12, v3

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->doPostDataAtOnce()V

    :goto_3
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$4;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-static {v0, v3}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->access$102(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;Z)Z

    return-void

    :cond_4
    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const-string v4, "milink.getremoteservice"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v5, v3

    move v10, v3

    move v11, v3

    move v12, v3

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_2
.end method
