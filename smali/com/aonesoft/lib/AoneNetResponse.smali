.class Lcom/aonesoft/lib/AoneNetResponse;
.super Ljava/lang/Object;
.source "AoneNetAsync.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCbNum:I

.field private mIsHttp:Z

.field private mResponse:[B

.field private mResponseLen:I

.field private mResult:I


# direct methods
.method constructor <init>(ZI[BII)V
    .locals 0
    .param p1, "isHttp"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # [B
    .param p4, "responseLen"    # I
    .param p5, "cbNum"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean p1, p0, Lcom/aonesoft/lib/AoneNetResponse;->mIsHttp:Z

    .line 85
    iput p2, p0, Lcom/aonesoft/lib/AoneNetResponse;->mResult:I

    .line 86
    iput-object p3, p0, Lcom/aonesoft/lib/AoneNetResponse;->mResponse:[B

    .line 87
    iput p4, p0, Lcom/aonesoft/lib/AoneNetResponse;->mResponseLen:I

    .line 88
    iput p5, p0, Lcom/aonesoft/lib/AoneNetResponse;->mCbNum:I

    .line 89
    return-void
.end method

.method public static native nativeHttpCallback(II)V
.end method

.method public static native nativeNetCallback(I[BII)V
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/aonesoft/lib/AoneNetResponse;->mIsHttp:Z

    if-eqz v0, :cond_0

    .line 94
    iget v0, p0, Lcom/aonesoft/lib/AoneNetResponse;->mResult:I

    iget v1, p0, Lcom/aonesoft/lib/AoneNetResponse;->mCbNum:I

    invoke-static {v0, v1}, Lcom/aonesoft/lib/AoneNetResponse;->nativeHttpCallback(II)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget v0, p0, Lcom/aonesoft/lib/AoneNetResponse;->mResult:I

    iget-object v1, p0, Lcom/aonesoft/lib/AoneNetResponse;->mResponse:[B

    iget v2, p0, Lcom/aonesoft/lib/AoneNetResponse;->mResponseLen:I

    iget v3, p0, Lcom/aonesoft/lib/AoneNetResponse;->mCbNum:I

    invoke-static {v0, v1, v2, v3}, Lcom/aonesoft/lib/AoneNetResponse;->nativeNetCallback(I[BII)V

    goto :goto_0
.end method
