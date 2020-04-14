.class public abstract Lcom/mi/milink/sdk/base/os/Device$Network$Proxy;
.super Lcom/mi/milink/sdk/base/os/Http$HttpProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/base/os/Device$Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/base/os/Http$HttpProxy;-><init>()V

    return-void
.end method
