.class Lcom/mi/milink/sdk/base/os/info/NetworkDash$1$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/base/os/info/NetworkDash$1;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/base/os/info/NetworkDash$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/base/os/info/NetworkDash$1$1;->this$0:Lcom/mi/milink/sdk/base/os/info/NetworkDash$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->updateNetworkState()Z

    return-void
.end method
