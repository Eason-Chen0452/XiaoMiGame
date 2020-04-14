.class public Lcom/xiaomi/gamecenter/sdk/entry/RefreshVipEvent;
.super Ljava/lang/Object;


# instance fields
.field private id:J

.field private isService:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/RefreshVipEvent;->id:J

    iput-boolean p3, p0, Lcom/xiaomi/gamecenter/sdk/entry/RefreshVipEvent;->isService:Z

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/RefreshVipEvent;->id:J

    return-wide v0
.end method

.method public isService()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/RefreshVipEvent;->isService:Z

    return v0
.end method
