.class Lcom/mi/milink/sdk/session/persistent/Session$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/StreamUtil$GetAccountAdapter;


# instance fields
.field final synthetic this$1:Lcom/mi/milink/sdk/session/persistent/Session$1;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session$1$1;->this$1:Lcom/mi/milink/sdk/session/persistent/Session$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount(I)Lcom/mi/milink/sdk/account/IAccount;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$1$1;->this$1:Lcom/mi/milink/sdk/session/persistent/Session$1;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session$1;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getOwnerAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v0

    goto :goto_0
.end method
