.class public Lcom/xiaomi/hy/dj/model/AppInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appid:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private callId:J

.field private payType:I

.field private paymentList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method public getCallId()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->callId:J

    return-wide v0
.end method

.method public getPayType()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->payType:I

    return v0
.end method

.method public getPaymentList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->paymentList:[Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->appid:Ljava/lang/String;

    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->appkey:Ljava/lang/String;

    return-void
.end method

.method public setCallId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->callId:J

    return-void
.end method

.method public setPayType(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->payType:I

    return-void
.end method

.method public setPaymentList([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/model/AppInfo;->paymentList:[Ljava/lang/String;

    return-void
.end method
