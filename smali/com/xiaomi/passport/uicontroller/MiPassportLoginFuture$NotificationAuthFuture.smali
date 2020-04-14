.class public Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture$NotificationAuthFuture;
.super Lcom/xiaomi/passport/uicontroller/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/MiPassportLoginFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationAuthFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/passport/uicontroller/d",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/uicontroller/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/passport/uicontroller/d$a",
            "<",
            "Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/uicontroller/d;-><init>(Lcom/xiaomi/passport/uicontroller/d$a;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Lcom/xiaomi/accountsdk/account/data/NotificationAuthResult;

    return-object p1
.end method
