.class Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$6;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "MiLinkClient"

    const-string v1, "bindService() twice failed , then inform the client by called onServiceConnected()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$6;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$6;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v2, v2, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->context:Landroid/content/Context;

    const-string v3, "com.mi.milink.sdk.service.MiLinkService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
