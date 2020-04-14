.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkLoginForThirdAccount;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 2

    const-string v0, "misdk.account.login"

    invoke-direct {p0, p1, v0, p7}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setAccountType(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p3}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setCode(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p4}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setOpenid(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p5}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setAccessToken(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    :cond_2
    invoke-virtual {v0, p6}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setIsSaveSt(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    const-string v1, "MiLinkGroupAppID"

    invoke-static {p1, v1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkLoginForThirdAccount;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setAppid(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkLoginForThirdAccount;->a:Lcom/google/protobuf/GeneratedMessage;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a([B)Lcom/google/protobuf/GeneratedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getRetCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkLoginForThirdAccount;->e:I

    :cond_0
    return-object v0
.end method
