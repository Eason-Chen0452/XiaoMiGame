.class Lcom/mi/milink/sdk/mipush/MiPushManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/mipush/MiPushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$3;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$3;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->access$100(Lcom/mi/milink/sdk/mipush/MiPushManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "MiPushManager"

    const-string v1, "Wakelock RELEASED By MiPushManger"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$3;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->access$100(Lcom/mi/milink/sdk/mipush/MiPushManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$3;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/mipush/MiPushManager;->access$102(Lcom/mi/milink/sdk/mipush/MiPushManager;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$3;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/mipush/MiPushManager;->access$102(Lcom/mi/milink/sdk/mipush/MiPushManager;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method
