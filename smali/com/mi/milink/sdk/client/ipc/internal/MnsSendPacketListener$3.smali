.class Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;

.field final synthetic val$errCode:I

.field final synthetic val$errMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;

    iput p2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;->val$errCode:I

    iput-object p3, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;->val$errMsg:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;

    invoke-static {v0}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->access$000(Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;)Lcom/mi/milink/sdk/client/SendPacketListener;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;->val$errCode:I

    iget-object v2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;->val$errMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mi/milink/sdk/client/SendPacketListener;->onFailed(ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
