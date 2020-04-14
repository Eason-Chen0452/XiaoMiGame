.class public interface abstract Lcom/mi/milink/sdk/aidl/ISendCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/aidl/ISendCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFailed(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRsponse(Lcom/mi/milink/sdk/aidl/PacketData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
