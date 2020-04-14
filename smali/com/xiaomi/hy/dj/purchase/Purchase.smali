.class public abstract Lcom/xiaomi/hy/dj/purchase/Purchase;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cpOrderId:Ljava/lang/String;

.field private cpUserInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/purchase/Purchase;->cpOrderId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/purchase/Purchase;->cpUserInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCpOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/purchase/Purchase;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/purchase/Purchase;->cpUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/purchase/Purchase;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setCpUserInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/purchase/Purchase;->cpUserInfo:Ljava/lang/String;

    return-void
.end method
