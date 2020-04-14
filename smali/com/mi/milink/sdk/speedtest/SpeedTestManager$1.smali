.class Lcom/mi/milink/sdk/speedtest/SpeedTestManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/speedtest/SpeedTestManager;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/speedtest/SpeedTestManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager$1;->this$0:Lcom/mi/milink/sdk/speedtest/SpeedTestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager$1;->this$0:Lcom/mi/milink/sdk/speedtest/SpeedTestManager;

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/config/ConfigManager;->getSpeedTestTcpIps()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->access$000(Lcom/mi/milink/sdk/speedtest/SpeedTestManager;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager$1;->this$0:Lcom/mi/milink/sdk/speedtest/SpeedTestManager;

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/config/ConfigManager;->getSpeedTestUdpIps()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->access$100(Lcom/mi/milink/sdk/speedtest/SpeedTestManager;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager$1;->this$0:Lcom/mi/milink/sdk/speedtest/SpeedTestManager;

    invoke-static {v4, v2, v3}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->access$200(Lcom/mi/milink/sdk/speedtest/SpeedTestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    const-string v2, "SpeedTestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "speed test cost="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
