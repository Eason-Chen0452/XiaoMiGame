.class Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/config/HeartBeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeartBeatInfo"
.end annotation


# instance fields
.field private isOk:Z

.field private sendTime:J

.field private seq:I

.field final synthetic this$0:Lcom/mi/milink/sdk/config/HeartBeatManager;


# direct methods
.method private constructor <init>(Lcom/mi/milink/sdk/config/HeartBeatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->this$0:Lcom/mi/milink/sdk/config/HeartBeatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/milink/sdk/config/HeartBeatManager;Lcom/mi/milink/sdk/config/HeartBeatManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;-><init>(Lcom/mi/milink/sdk/config/HeartBeatManager;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->getSeq()I

    move-result v2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->getSeq()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getSendTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->sendTime:J

    return-wide v0
.end method

.method public getSeq()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->seq:I

    return v0
.end method

.method public isOk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->isOk:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->isOk:Z

    return-void
.end method

.method public setSendTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->sendTime:J

    return-void
.end method

.method public setSeq(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->seq:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[seq:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isOk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->isOk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sendTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->sendTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
