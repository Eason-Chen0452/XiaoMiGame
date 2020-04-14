.class Lcom/mi/milink/sdk/base/CustomHandlerThread$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/base/CustomHandlerThread;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/base/CustomHandlerThread;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/base/CustomHandlerThread$1;->this$0:Lcom/mi/milink/sdk/base/CustomHandlerThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/base/CustomHandlerThread$1;->this$0:Lcom/mi/milink/sdk/base/CustomHandlerThread;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/base/CustomHandlerThread;->processMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
