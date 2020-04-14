.class final Lcom/xiaomi/gamecenter/sdk/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/y;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/y;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, -0x2

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->ConnServiceNew(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$502(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$600(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$600(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->registCallback(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const-string v0, ">>>>"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service Connected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$500(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastMsg()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$502(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastServiceSignError()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$502(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I

    goto :goto_1

    :cond_1
    if-ne v0, v4, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastMsg()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$502(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastServiceSignError()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/z;->a:Lcom/xiaomi/gamecenter/sdk/y;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$502(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
