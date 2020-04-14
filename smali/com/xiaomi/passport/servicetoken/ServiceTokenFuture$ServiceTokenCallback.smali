.class public abstract Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture$ServiceTokenCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/accountsdk/futureservice/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ServiceTokenCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/accountsdk/futureservice/a$a",
        "<",
        "Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
