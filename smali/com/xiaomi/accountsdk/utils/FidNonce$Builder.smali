.class public Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/FidNonce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/FidNonce;
    .locals 2

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/FidSigningUtil;->a()Lcom/xiaomi/accountsdk/utils/FidSigningUtil$b;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;-><init>()V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
