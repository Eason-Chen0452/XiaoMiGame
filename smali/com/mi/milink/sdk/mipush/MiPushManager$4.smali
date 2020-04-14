.class Lcom/mi/milink/sdk/mipush/MiPushManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/mipush/MiPushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$4;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$4;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    invoke-static {v1}, Lcom/mi/milink/sdk/mipush/MiPushManager;->access$100(Lcom/mi/milink/sdk/mipush/MiPushManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "MiPushManager"

    const-string v2, "Wakelock ACQUIRED By MiPushManger"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$4;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    const/4 v2, 0x1

    const-string v3, "formipush"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->access$102(Lcom/mi/milink/sdk/mipush/MiPushManager;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$4;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->access$100(Lcom/mi/milink/sdk/mipush/MiPushManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiPushManager"

    const-string v2, "acquireWakeLock exception"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
