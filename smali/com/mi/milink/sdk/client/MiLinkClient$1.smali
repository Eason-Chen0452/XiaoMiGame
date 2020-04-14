.class final Lcom/mi/milink/sdk/client/MiLinkClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSetMiPushRegId(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setMipushRegId(Ljava/lang/String;)V

    return-void
.end method
