.class Lcom/mi/milink/sdk/base/os/info/NetworkObserver$1;
.super Landroid/telephony/PhoneStateListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/base/os/info/NetworkObserver;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/base/os/info/NetworkObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/base/os/info/NetworkObserver$1;->this$0:Lcom/mi/milink/sdk/base/os/info/NetworkObserver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/NetworkObserver$1;->this$0:Lcom/mi/milink/sdk/base/os/info/NetworkObserver;

    iget-object v1, p0, Lcom/mi/milink/sdk/base/os/info/NetworkObserver$1;->this$0:Lcom/mi/milink/sdk/base/os/info/NetworkObserver;

    invoke-static {v1, p1}, Lcom/mi/milink/sdk/base/os/info/NetworkObserver;->access$100(Lcom/mi/milink/sdk/base/os/info/NetworkObserver;Landroid/telephony/SignalStrength;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/base/os/info/NetworkObserver;->access$002(Lcom/mi/milink/sdk/base/os/info/NetworkObserver;I)I

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    return-void
.end method
