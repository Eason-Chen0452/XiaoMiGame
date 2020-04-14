.class public final Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

.field private static i:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->i:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->h:Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->i:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v2

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->b(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->h:Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->i:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    :cond_2
    :goto_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->h:Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->b(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->n:Ljava/lang/String;

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v0, v6

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->o:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v3}, Lcn/com/wali/basetool/utils/AESEncryption;->b([B[B)[B

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    :try_start_3
    aget-object v0, v0, v3

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_4
    throw v1

    :catch_4
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v1, v0

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->b:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->c:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->f:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->e:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->d:Ljava/lang/String;

    :goto_1
    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->g:J

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->h:Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    sput-object p1, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->i:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->b(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->o:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/wali/basetool/utils/AESEncryption;->a([B[B)[B

    move-result-object v4

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v3, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3, v4}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_1
    :try_start_5
    const-string v3, ""

    iput-object v3, v0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->d:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v1

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move-object v3, v1

    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object v3, v1

    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_5
    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v2, v1

    goto :goto_3
.end method

.method public static a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->b(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    sput-object v2, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->h:Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    sput-object v2, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->i:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-void
.end method

.method private static b(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type_"

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

.method public static b(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->c:Ljava/lang/String;

    return-object v0
.end method
