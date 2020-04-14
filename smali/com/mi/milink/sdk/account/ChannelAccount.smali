.class public Lcom/mi/milink/sdk/account/ChannelAccount;
.super Lcom/mi/milink/sdk/account/AnonymousAccount;


# static fields
.field private static final PREF_CHANNLE_PUB_KEY_SUB:Ljava/lang/String; = ":"


# instance fields
.field keepAliveTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mi/milink/sdk/account/AnonymousAccount;-><init>()V

    const v0, 0x1d4c0

    iput v0, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->keepAliveTime:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->initPubKey()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/account/AnonymousAccount;-><init>(I)V

    const v0, 0x1d4c0

    iput v0, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->keepAliveTime:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->initPubKey()V

    return-void
.end method

.method private buildChannelPubKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateServiceToken()V
    .locals 3

    invoke-direct {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->getRandomPublicKeyAndId()Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->getPublicKeyAndId()Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;

    move-result-object v0

    :cond_0
    iget-object v1, v0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->mServiceToken:Ljava/lang/String;

    iget-object v0, v0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->mSSecurity:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "generateServiceTokenAndSSecurity mServiceToken="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mSSecurity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->mSSecurity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getRandomPublicKeyAndId()Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/ConfigManager;->getChannelPubKeys()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRandomPublicKeyAndId is null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aget-object v1, v4, v6

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getRandomPublicKeyAndId parseChannelPubKey map is null || size=0"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;

    invoke-direct {v1, v2, v0}, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRandomPublicKeyAndId find PublicKeyAndId id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", key="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public DelChannelPubKey()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->mSSecurity:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mi/milink/sdk/account/ChannelAccount;->buildChannelPubKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/config/ConfigManager;->deleteChannelPubKey(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->generateServiceToken()V

    return-void
.end method

.method public buildStoreValue(Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;->key:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mi/milink/sdk/account/ChannelAccount;->buildChannelPubKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateServiceTokenAndSSecurity()V
    .locals 2

    const-string v0, "0"

    iget-object v1, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->mSSecurity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->generateServiceToken()V

    :cond_1
    return-void
.end method

.method protected getAccountType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getKeepAliveTime()I
    .locals 3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get keepAliveTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->keepAliveTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->keepAliveTime:I

    return v0
.end method

.method protected getPrefFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "milink_channel_account"

    return-object v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 4

    const-string v0, "ChannelAccount[No:%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->mNo:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initPubKey()V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/ConfigManager;->getChannelPubKeys()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;

    invoke-direct {v0}, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;-><init>()V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/RSAPublicKey;->getPublicKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/account/ChannelAccount;->buildStoreValue(Lcom/mi/milink/sdk/account/manager/RSAPublicKey$PublicKeyAndId;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/config/ConfigManager;->updateChannelPubKeySet(Ljava/util/Set;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public setChannelPubKey(Ljava/util/Map;)V
    .locals 7
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

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/mi/milink/sdk/account/ChannelAccount;->buildChannelPubKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setChannelPubKey keyId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ,pubKey:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/config/ConfigManager;->updateChannelPubKeySet(Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/account/ChannelAccount;->generateServiceToken()V

    return-void
.end method

.method public setKeepAliveTime(I)V
    .locals 1

    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/mi/milink/sdk/account/ChannelAccount;->keepAliveTime:I

    return-void
.end method
