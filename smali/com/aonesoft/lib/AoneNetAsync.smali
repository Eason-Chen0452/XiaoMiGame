.class public Lcom/aonesoft/lib/AoneNetAsync;
.super Ljava/lang/Object;
.source "AoneNetAsync.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field protected static sGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private static sHandler:Landroid/os/Handler;

.field public static sRequest:[B

.field public static sResponse:[B

.field public static sResponseLen:I

.field public static sResult:I

.field public static sTest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sHandler:Landroid/os/Handler;

    .line 10
    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 12
    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sRequest:[B

    .line 13
    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sResponse:[B

    .line 14
    sput v1, Lcom/aonesoft/lib/AoneNetAsync;->sResult:I

    .line 15
    sput v1, Lcom/aonesoft/lib/AoneNetAsync;->sResponseLen:I

    .line 16
    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sTest:Ljava/lang/String;

    .line 17
    const-string v0, "aonesdk info AoneNetAsync"

    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResponse()[B
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sResponse:[B

    return-object v0
.end method

.method public static getResponseLen()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/aonesoft/lib/AoneNetAsync;->sResponseLen:I

    return v0
.end method

.method public static getResult()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/aonesoft/lib/AoneNetAsync;->sResult:I

    return v0
.end method

.method public static httpSendRecv(Ljava/lang/String;ILjava/lang/String;[BII)V
    .locals 7
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "request"    # [B
    .param p4, "len"    # I
    .param p5, "cbNum"    # I

    .prologue
    .line 50
    sget-object v1, Lcom/aonesoft/lib/AoneNetAsync;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http request begin,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/aonesoft/lib/AoneHttpThread;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/aonesoft/lib/AoneHttpThread;-><init>(Ljava/lang/String;ILjava/lang/String;[BII)V

    .line 52
    .local v0, "netThread":Lcom/aonesoft/lib/AoneHttpThread;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method public static init(Landroid/opengl/GLSurfaceView;)V
    .locals 1
    .param p0, "gl"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 20
    sput-object p0, Lcom/aonesoft/lib/AoneNetAsync;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 21
    sget-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sHandler:Landroid/os/Handler;

    .line 26
    :cond_0
    return-void
.end method

.method public static reInitHandler()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sHandler:Landroid/os/Handler;

    .line 31
    :cond_0
    return-void
.end method

.method public static runOnGameThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 34
    sget-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    sget-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 39
    :cond_1
    sget-object v0, Lcom/aonesoft/lib/AoneNetAsync;->LOG_TAG:Ljava/lang/String;

    const-string v1, "runOnGameThread failed, the sHandler is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static sendRecvAsync(Ljava/lang/String;ILjava/lang/String;[BII)V
    .locals 7
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "request"    # [B
    .param p4, "len"    # I
    .param p5, "cbNum"    # I

    .prologue
    .line 44
    sget-object v1, Lcom/aonesoft/lib/AoneNetAsync;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request begin,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/aonesoft/lib/AoneNetThread;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/aonesoft/lib/AoneNetThread;-><init>(Ljava/lang/String;ILjava/lang/String;[BII)V

    .line 46
    .local v0, "netThread":Lcom/aonesoft/lib/AoneNetThread;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method

.method public static setResponse(I[BI)V
    .locals 1
    .param p0, "result"    # I
    .param p1, "response"    # [B
    .param p2, "responseLen"    # I

    .prologue
    .line 56
    sput p0, Lcom/aonesoft/lib/AoneNetAsync;->sResult:I

    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sResponse:[B

    .line 62
    :goto_0
    sput p2, Lcom/aonesoft/lib/AoneNetAsync;->sResponseLen:I

    .line 63
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/aonesoft/lib/AoneNetAsync;->sResponse:[B

    goto :goto_0
.end method
