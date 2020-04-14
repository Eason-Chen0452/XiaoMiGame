.class Lcom/mi/milink/sdk/mipush/MiPushManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/mipush/MiPushManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager$1;->this$0:Lcom/mi/milink/sdk/mipush/MiPushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MiPushManager"

    invoke-static {v0, p1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "MiPushManager"

    invoke-static {v0, p1, p2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
