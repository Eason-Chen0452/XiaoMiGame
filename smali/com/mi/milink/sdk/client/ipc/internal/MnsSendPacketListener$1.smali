.class final Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    const-string v0, "MnsSendPacketListener"

    const-string v1, "Thread pool executor: reject work, put into backup pool"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
