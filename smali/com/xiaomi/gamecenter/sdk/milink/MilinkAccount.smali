.class public final Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
.super Ljava/lang/Object;


# static fields
.field private static p:Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Lcom/google/protobuf/GeneratedMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/protobuf/GeneratedMessage;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
    .locals 8

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    invoke-direct {v4}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;-><init>()V

    iput-object p0, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->o:Lcom/google/protobuf/GeneratedMessage;

    instance-of v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    if-eqz v2, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getRetCode()I

    move-result v5

    iput v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a:I

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getUuid()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->b:J

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getServiceToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getSecurityKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getPassToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getNickname()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getHeadimgurl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->g:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getSex()I

    move-result v5

    iput v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->h:I

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getLoginStatus()I

    move-result v5

    iput v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->i:I

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getHasInnerAvatar()Z

    move-result v5

    iput-boolean v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->j:Z

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getHasInnerNickname()Z

    move-result v5

    iput-boolean v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->k:Z

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getHasInnerSex()Z

    move-result v5

    iput-boolean v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->l:Z

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getIsSetGuide()Z

    move-result v2

    iput-boolean v2, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->m:Z

    :cond_1
    :goto_1
    sput-object v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->p:Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->b(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessage;->toByteArray()[B

    move-result-object v5

    sget-object v6, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->o:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Lcn/com/wali/basetool/utils/AESEncryption;->a([B[B)[B

    move-result-object v6

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v5, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    move-object v2, v4

    goto :goto_0

    :cond_2
    :try_start_4
    instance-of v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    if-eqz v2, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getRetCode()I

    move-result v5

    iput v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a:I

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getUuid()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->b:J

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getServiceToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getSecurityKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getPassToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getNickname()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->f:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getHeadimgurl()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->g:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getSex()I

    move-result v5

    iput v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->h:I

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getLoginStatus()I

    move-result v5

    iput v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->i:I

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getHasInnerAvatar()Z

    move-result v5

    iput-boolean v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->j:Z

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getHasInnerNickname()Z

    move-result v5

    iput-boolean v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->k:Z

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getHasInnerSex()Z

    move-result v5

    iput-boolean v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->l:Z

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getIsSetGuide()Z

    move-result v5

    iput-boolean v5, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->m:Z

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->n:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object v5, v3

    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v5, v3

    :goto_4
    :try_start_7
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_5
    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_5

    :catchall_1
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_3
.end method

.method public static a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
    .locals 4

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->b(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    sput-object v2, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->p:Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->p:Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->b(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->n:Ljava/lang/String;

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/utils/AESEncryption;->b([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Lcom/google/protobuf/GeneratedMessage;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "milink_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->b:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/google/protobuf/GeneratedMessage;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->o:Lcom/google/protobuf/GeneratedMessage;

    return-object v0
.end method
