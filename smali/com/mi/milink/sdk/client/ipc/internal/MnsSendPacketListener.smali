.class public Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;
.super Lcom/mi/milink/sdk/aidl/ISendCallback$Stub;


# static fields
.field private static final RESPONSE_EXEXUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final TAG:Ljava/lang/String; = "MnsSendPacketListener"

.field private static rehHandler:Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field private mListener:Lcom/mi/milink/sdk/client/SendPacketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x4

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$1;

    invoke-direct {v0}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$1;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->rehHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v8, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->rehHandler:Ljava/util/concurrent/RejectedExecutionHandler;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->RESPONSE_EXEXUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/mi/milink/sdk/client/SendPacketListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/aidl/ISendCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->mListener:Lcom/mi/milink/sdk/client/SendPacketListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;)Lcom/mi/milink/sdk/client/SendPacketListener;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->mListener:Lcom/mi/milink/sdk/client/SendPacketListener;

    return-object v0
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->mListener:Lcom/mi/milink/sdk/client/SendPacketListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;-><init>(Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;ILjava/lang/String;)V

    sget-object v1, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->RESPONSE_EXEXUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onRsponse(Lcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->mListener:Lcom/mi/milink/sdk/client/SendPacketListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$2;

    invoke-direct {v0, p0, p1}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$2;-><init>(Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;Lcom/mi/milink/sdk/aidl/PacketData;)V

    sget-object v1, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;->RESPONSE_EXEXUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
