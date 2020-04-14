.class public Lcom/mi/milink/sdk/account/AnonymousAccount;
.super Lcom/mi/milink/sdk/account/IAccount;


# static fields
.field private static INSTANCE:Lcom/mi/milink/sdk/account/AnonymousAccount;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/account/IAccount;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/account/IAccount;-><init>(I)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/account/AnonymousAccount;->INSTANCE:Lcom/mi/milink/sdk/account/AnonymousAccount;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/account/AnonymousAccount;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/account/AnonymousAccount;->INSTANCE:Lcom/mi/milink/sdk/account/AnonymousAccount;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/account/AnonymousAccount;

    invoke-direct {v0}, Lcom/mi/milink/sdk/account/AnonymousAccount;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/account/AnonymousAccount;->INSTANCE:Lcom/mi/milink/sdk/account/AnonymousAccount;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/account/AnonymousAccount;->INSTANCE:Lcom/mi/milink/sdk/account/AnonymousAccount;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected generatePrivacyKey()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    const/16 v3, 0x19

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateServiceTokenAndSSecurity()V
    .locals 3

    const-string v0, "0"

    iget-object v1, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mSSecurity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->getPublicKeyAndId()Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;

    move-result-object v0

    iget-object v1, v0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mServiceToken:Ljava/lang/String;

    iget-object v0, v0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mSSecurity:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generateServiceTokenAndSSecurity mServiceToken="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSSecurity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mSSecurity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected getAccountType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected getPrefFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "milink_anonymous_account"

    return-object v0
.end method

.method public getPrivacyKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mPrivacyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/AnonymousAccount;->generatePrivacyKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mPrivacyKey:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPrivacyKey="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mPrivacyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mPrivacyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSSecurity()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSSecurity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mSSecurity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mSSecurity:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceToken()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mServiceToken="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/AnonymousAccount;->mServiceToken:Ljava/lang/String;

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AnonymousAccount"

    return-object v0
.end method
