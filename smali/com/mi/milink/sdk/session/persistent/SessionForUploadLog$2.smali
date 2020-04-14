.class Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;->failed()V

    :cond_0
    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;->success()V

    :cond_0
    return-void
.end method
