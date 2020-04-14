.class public Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->c:J

    iput-boolean p5, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->d:Z

    iput-object p6, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getServiceDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->c:J

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getForce()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->d:Z

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getGuideLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getGuideWord()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->c:J

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->f:Ljava/lang/String;

    return-object v0
.end method
