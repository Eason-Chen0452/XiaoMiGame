.class Lcom/aonesoft/lib/AoneHttpThread;
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


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[BII)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "request"    # [B
    .param p5, "len"    # I
    .param p6, "cbNum"    # I

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/aonesoft/lib/AoneHttpThread;->mIp:Ljava/lang/String;

    .line 166
    iput p2, p0, Lcom/aonesoft/lib/AoneHttpThread;->mPort:I

    .line 167
    iput-object p3, p0, Lcom/aonesoft/lib/AoneHttpThread;->mKey:Ljava/lang/String;

    .line 168
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/aonesoft/lib/AoneHttpThread;->mRequest:[B

    .line 169
    iput p5, p0, Lcom/aonesoft/lib/AoneHttpThread;->mRequestLen:I

    .line 170
    iput p6, p0, Lcom/aonesoft/lib/AoneHttpThread;->mCbNum:I

    .line 171
    return-void
.end method

.method public static native nativeSendRecv(Ljava/lang/String;ILjava/lang/String;[BII)I
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 175
    iget-object v0, p0, Lcom/aonesoft/lib/AoneHttpThread;->mIp:Ljava/lang/String;

    iget v1, p0, Lcom/aonesoft/lib/AoneHttpThread;->mPort:I

    iget-object v2, p0, Lcom/aonesoft/lib/AoneHttpThread;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/aonesoft/lib/AoneHttpThread;->mRequest:[B

    iget v4, p0, Lcom/aonesoft/lib/AoneHttpThread;->mRequestLen:I

    iget v5, p0, Lcom/aonesoft/lib/AoneHttpThread;->mCbNum:I

    invoke-static/range {v0 .. v5}, Lcom/aonesoft/lib/AoneHttpThread;->nativeSendRecv(Ljava/lang/String;ILjava/lang/String;[BII)I

    move-result v2

    .line 177
    .local v2, "result":I
    new-instance v0, Lcom/aonesoft/lib/AoneNetResponse;

    new-array v3, v6, [B

    iget v5, p0, Lcom/aonesoft/lib/AoneHttpThread;->mCbNum:I

    move v1, v6

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/aonesoft/lib/AoneNetResponse;-><init>(ZI[BII)V

    invoke-static {v0}, Lcom/aonesoft/lib/AoneNetAsync;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method
