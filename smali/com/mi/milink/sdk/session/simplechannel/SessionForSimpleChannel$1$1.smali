.class Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/StreamUtil$GetAccountAdapter;


# instance fields
.field final synthetic this$1:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1$1;->this$1:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount(I)Lcom/mi/milink/sdk/account/IAccount;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1$1;->this$1:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v0

    return-object v0
.end method
