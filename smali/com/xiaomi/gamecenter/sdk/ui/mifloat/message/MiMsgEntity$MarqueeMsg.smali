.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarqueeMsg"
.end annotation


# instance fields
.field private color:Ljava/lang/String;

.field private hideIcon:Z

.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private notice:Ljava/lang/String;

.field private time:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNotice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->notice:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->time:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isHideIcon()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->hideIcon:Z

    return v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->color:Ljava/lang/String;

    return-void
.end method

.method public setHideIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->hideIcon:Z

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->id:Ljava/lang/String;

    return-void
.end method

.method public setNotice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->notice:Ljava/lang/String;

    return-void
.end method

.method public setTime(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->time:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MarqueeMsg{color=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->color:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", icon=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notice=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->notice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->hideIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
