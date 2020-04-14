.class public Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeResult;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;


# direct methods
.method public constructor <init>(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getRetCode()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeResult;->a:I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeResult;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getNoticeConfigCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getNoticeConfig(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;-><init>(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeResult;->b:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    goto :goto_0
.end method
