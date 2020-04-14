.class Lcom/aonesoft/lib/AoneNetThread;
.super Ljava/lang/Object;
.source "AoneNetAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCbNum:I

.field private mIp:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mPort:I

.field private mRequest:[B

.field private mRequestLen:I

.field public sResponse:[B

.field public sResponseLen:I

.field public sResult:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[BII)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "request"    # [B
    .param p5, "len"    # I
    .param p6, "cbNum"    # I

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aonesoft/lib/AoneNetThread;->sResponse:[B

    .line 114
    iput v1, p0, Lcom/aonesoft/lib/AoneNetThread;->sResult:I

    .line 115
    iput v1, p0, Lcom/aonesoft/lib/AoneNetThread;->sResponseLen:I

    .line 118
    iput-object p1, p0, Lcom/aonesoft/lib/AoneNetThread;->mIp:Ljava/lang/String;

    .line 119
    iput p2, p0, Lcom/aonesoft/lib/AoneNetThread;->mPort:I

    .line 120
    iput-object p3, p0, Lcom/aonesoft/lib/AoneNetThread;->mKey:Ljava/lang/String;

    .line 121
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/aonesoft/lib/AoneNetThread;->mRequest:[B

    .line 122
    iput p5, p0, Lcom/aonesoft/lib/AoneNetThread;->mRequestLen:I

    .line 123
    iput p6, p0, Lcom/aonesoft/lib/AoneNetThread;->mCbNum:I

    .line 124
    return-void
.end method

.method public static native nativeSendRecv(Lcom/aonesoft/lib/AoneNetThread;Ljava/lang/String;ILjava/lang/String;[BI)V
.end method


# virtual methods
.method public getResponse()[B
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/aonesoft/lib/AoneNetThread;->sResponse:[B

    return-object v0
.end method

.method public getResponseLen()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/aonesoft/lib/AoneNetThread;->sResponseLen:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/aonesoft/lib/AoneNetThread;->sResult:I

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 148
    iget-object v1, p0, Lcom/aonesoft/lib/AoneNetThread;->mIp:Ljava/lang/String;

    iget v2, p0, Lcom/aonesoft/lib/AoneNetThread;->mPort:I

    iget-object v3, p0, Lcom/aonesoft/lib/AoneNetThread;->mKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/aonesoft/lib/AoneNetThread;->mRequest:[B

    iget v5, p0, Lcom/aonesoft/lib/AoneNetThread;->mRequestLen:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/aonesoft/lib/AoneNetThread;->nativeSendRecv(Lcom/aonesoft/lib/AoneNetThread;Ljava/lang/String;ILjava/lang/String;[BI)V

    .line 150
    new-instance v0, Lcom/aonesoft/lib/AoneNetResponse;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/aonesoft/lib/AoneNetThread;->getResult()I

    move-result v2

    invoke-virtual {p0}, Lcom/aonesoft/lib/AoneNetThread;->getResponse()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/aonesoft/lib/AoneNetThread;->getResponseLen()I

    move-result v4

    iget v5, p0, Lcom/aonesoft/lib/AoneNetThread;->mCbNum:I

    invoke-direct/range {v0 .. v5}, Lcom/aonesoft/lib/AoneNetResponse;-><init>(ZI[BII)V

    invoke-static {v0}, Lcom/aonesoft/lib/AoneNetAsync;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public setResponse(I[BI)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "response"    # [B
    .param p3, "responseLen"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/aonesoft/lib/AoneNetThread;->sResult:I

    .line 128
    if-nez p2, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aonesoft/lib/AoneNetThread;->sResponse:[B

    .line 133
    :goto_0
    iput p3, p0, Lcom/aonesoft/lib/AoneNetThread;->sResponseLen:I

    .line 134
    return-void

    .line 131
    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/aonesoft/lib/AoneNetThread;->sResponse:[B

    goto :goto_0
.end method
