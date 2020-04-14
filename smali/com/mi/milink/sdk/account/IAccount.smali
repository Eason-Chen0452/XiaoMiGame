.class public abstract Lcom/mi/milink/sdk/account/IAccount;
.super Ljava/lang/Object;


# static fields
.field public static NO:I = 0x0

.field protected static final PREF_B2_SECURITY:Ljava/lang/String; = "b2Security"

.field protected static final PREF_B2_TOKEN:Ljava/lang/String; = "b2Token"

.field private static final PREF_FAST_LOGIN_EXTRA_DATA:Ljava/lang/String; = "fastLoginExtraData"

.field private static final PREF_PRIVACY_KEY:Ljava/lang/String; = "privacyKey"

.field protected static final PREF_SERVICE_TOKEN:Ljava/lang/String; = "serviceToken"

.field protected static final PREF_S_SECURITY:Ljava/lang/String; = "sSecurity"

.field protected static final PREF_USER_ID:Ljava/lang/String; = "userId"


# instance fields
.field private appId:I

.field protected volatile mB2Security:Ljava/lang/String;

.field protected volatile mB2Token:Ljava/lang/String;

.field private mFastLoginExtra:[B

.field protected mMiLinkLoginTime:J

.field protected mNo:I

.field protected volatile mOldB2Security:Ljava/lang/String;

.field protected volatile mOldB2Token:Ljava/lang/String;

.field protected mPrivacyKey:Ljava/lang/String;

.field protected volatile mSSecurity:Ljava/lang/String;

.field protected volatile mServiceToken:Ljava/lang/String;

.field protected volatile mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/mi/milink/sdk/account/IAccount;->NO:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mMiLinkLoginTime:J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    sget v0, Lcom/mi/milink/sdk/account/IAccount;->NO:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mi/milink/sdk/account/IAccount;->NO:I

    iput v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mNo:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAccount()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->loadAccount()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mMiLinkLoginTime:J

    iput p1, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    sget v0, Lcom/mi/milink/sdk/account/IAccount;->NO:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/mi/milink/sdk/account/IAccount;->NO:I

    iput v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mNo:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAccount()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->loadAccount()V

    return-void
.end method


# virtual methods
.method public DelChannelPubKey()V
    .locals 0

    return-void
.end method

.method public dataChange()V
    .locals 0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->saveAccount()V

    return-void
.end method

.method public abstract generateServiceTokenAndSSecurity()V
.end method

.method protected abstract getAccountType()I
.end method

.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    return v0
.end method

.method public getB2Security()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getB2Security="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    return-object v0
.end method

.method public getB2Token()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getB2Token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    return-object v0
.end method

.method public getFastLoginExtra()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mFastLoginExtra:[B

    return-object v0
.end method

.method public getKeepAliveTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMiLinkLoginTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mMiLinkLoginTime:J

    return-wide v0
.end method

.method public getOldB2Security()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Security:Ljava/lang/String;

    return-object v0
.end method

.method public getOldB2Token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Token:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getPrefFileName()Ljava/lang/String;
.end method

.method public abstract getPrivacyKey()Ljava/lang/String;
.end method

.method public getSSecurity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mSSecurity:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mServiceToken:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized loadAccount()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadAccount"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getPrefFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userId"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/account/IAccount;->mUserId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serviceToken"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/account/IAccount;->mServiceToken:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sSecurity"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/account/IAccount;->mSSecurity:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "b2Token"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "b2Security"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fastLoginExtraData"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/account/IAccount;->mFastLoginExtra:[B

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "privacyKey"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mPrivacyKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/mi/milink/sdk/account/IAccount;->mFastLoginExtra:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loginMiLink([B[B)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const-string v0, "loginMiLink,b2Token.length=%d,b2Security.length=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Security:Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Token:Ljava/lang/String;

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mB2Token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mB2Security:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mMiLinkLoginTime:J

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->saveAccount()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnsupportedEncodingException:"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loginMiLink,but some argu is wrong!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logoff()V
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logoff"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mUserId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mServiceToken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mSSecurity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Security:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mMiLinkLoginTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mFastLoginExtra:[B

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->saveAccount()V

    return-void
.end method

.method public logoffMiLink()V
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logoffMiLink"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Token:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Security:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mMiLinkLoginTime:J

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->saveAccount()V

    return-void
.end method

.method protected declared-synchronized saveAccount()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveAccount"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getPrefFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "userId"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mUserId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "serviceToken"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mServiceToken:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "sSecurity"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mSSecurity:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "b2Token"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "b2Security"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mFastLoginExtra:[B

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fastLoginExtraData"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/milink/sdk/account/IAccount;->mFastLoginExtra:[B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "privacyKey"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mPrivacyKey:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :goto_6
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mUserId:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mServiceToken:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mSSecurity:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fastLoginExtraData"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/IAccount;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/mi/milink/sdk/account/IAccount;->mPrivacyKey:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6
.end method

.method public setB2Security(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setB2Security="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Security:Ljava/lang/String;

    return-void
.end method

.method public setB2Token(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setB2Token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mi/milink/sdk/account/IAccount;->mB2Token:Ljava/lang/String;

    return-void
.end method

.method public setChannelPubKey(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setFastLoginExtra([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/account/IAccount;->mFastLoginExtra:[B

    return-void
.end method

.method public setKeepAliveTime(I)V
    .locals 0

    return-void
.end method

.method public setMiLinkLoginTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milink/sdk/account/IAccount;->mMiLinkLoginTime:J

    return-void
.end method

.method public setOldB2Security(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Security:Ljava/lang/String;

    return-void
.end method

.method public setOldB2Token(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/account/IAccount;->mOldB2Token:Ljava/lang/String;

    return-void
.end method

.method public setSSecurity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/account/IAccount;->mSSecurity:Ljava/lang/String;

    return-void
.end method

.method public setServiceToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/account/IAccount;->mServiceToken:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/account/IAccount;->mUserId:Ljava/lang/String;

    return-void
.end method
