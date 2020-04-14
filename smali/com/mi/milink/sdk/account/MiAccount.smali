.class public Lcom/mi/milink/sdk/account/MiAccount;
.super Lcom/mi/milink/sdk/account/IAccount;


# static fields
.field private static INSTANCE:Lcom/mi/milink/sdk/account/MiAccount;


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

.method public static getInstance()Lcom/mi/milink/sdk/account/MiAccount;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/account/MiAccount;->INSTANCE:Lcom/mi/milink/sdk/account/MiAccount;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/account/MiAccount;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/account/MiAccount;->INSTANCE:Lcom/mi/milink/sdk/account/MiAccount;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/account/MiAccount;

    invoke-direct {v0}, Lcom/mi/milink/sdk/account/MiAccount;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/account/MiAccount;->INSTANCE:Lcom/mi/milink/sdk/account/MiAccount;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/account/MiAccount;->INSTANCE:Lcom/mi/milink/sdk/account/MiAccount;

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
.method public generateServiceTokenAndSSecurity()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "stardard mode will never call generateServiceTokenAndSSecurity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getAccountType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getPrefFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "milink_account"

    return-object v0
.end method

.method public getPrivacyKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "stardard mode will never call getPrivacyKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "MiAccount"

    return-object v0
.end method
