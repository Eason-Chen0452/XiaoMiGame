.class Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$2;
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

.field final synthetic val$response:Lcom/mi/milink/sdk/aidl/PacketData;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;Lcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;

    iput-object p2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$2;->val$response:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;

    invoke-static {v0}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->access$000(Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;)Lcom/mi/milink/sdk/client/SendPacketListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$2;->val$response:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-interface {v0, v1}, Lcom/mi/milink/sdk/client/SendPacketListener;->onResponse(Lcom/mi/milink/sdk/aidl/PacketData;)V

    const/4 v0, 0x0

    return-object v0
.end method
