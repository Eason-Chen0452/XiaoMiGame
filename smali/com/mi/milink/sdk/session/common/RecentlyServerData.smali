.class public Lcom/mi/milink/sdk/session/common/RecentlyServerData;
.super Lcom/mi/milink/sdk/session/common/ServerData;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7549ded7875f916dL


# instance fields
.field private mRecentlyServer:Lcom/mi/milink/sdk/session/common/ServerProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/common/ServerData;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->mRecentlyServer:Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-void
.end method


# virtual methods
.method public getRecentlyServer()Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->mRecentlyServer:Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-object v0
.end method

.method public setRecentlyServer(Lcom/mi/milink/sdk/session/common/ServerProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->mRecentlyServer:Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "[recentlyTcpServerProfile = "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->mRecentlyServer:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->mRecentlyServer:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",timeStamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
