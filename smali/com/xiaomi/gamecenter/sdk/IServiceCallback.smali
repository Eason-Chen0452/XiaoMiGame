.class public interface abstract Lcom/xiaomi/gamecenter/sdk/IServiceCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/IServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract startActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
