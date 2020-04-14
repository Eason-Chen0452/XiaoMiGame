.class Lcom/mi/milink/sdk/service/MnsServiceBinder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/service/MnsServiceBinder;

.field final synthetic val$callback:Lcom/mi/milink/sdk/aidl/ISendCallback;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/service/MnsServiceBinder;Lcom/mi/milink/sdk/aidl/ISendCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder$1;->this$0:Lcom/mi/milink/sdk/service/MnsServiceBinder;

    iput-object p2, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder$1;->val$callback:Lcom/mi/milink/sdk/aidl/ISendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder$1;->val$callback:Lcom/mi/milink/sdk/aidl/ISendCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder$1;->val$callback:Lcom/mi/milink/sdk/aidl/ISendCallback;

    invoke-interface {v0, p1, p2}, Lcom/mi/milink/sdk/aidl/ISendCallback;->onFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder$1;->val$callback:Lcom/mi/milink/sdk/aidl/ISendCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/service/MnsServiceBinder$1;->val$callback:Lcom/mi/milink/sdk/aidl/ISendCallback;

    invoke-interface {v0, p2}, Lcom/mi/milink/sdk/aidl/ISendCallback;->onRsponse(Lcom/mi/milink/sdk/aidl/PacketData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
