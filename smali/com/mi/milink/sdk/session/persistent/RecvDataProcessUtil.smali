.class public Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mHasListenerUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysHasListener;

.field private mHasSelected:Z

.field private mNoListenerUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;

.field private mPushUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;

.field private mSession:Lcom/mi/milink/sdk/session/persistent/Session;

.field private nowUtil:Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RecvDataProcessUtil"

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mHasSelected:Z

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    return-void
.end method


# virtual methods
.method public handle()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mHasSelected:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->TAG:Ljava/lang/String;

    const-string v2, "has not select data process util"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->nowUtil:Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->handleMnsCode()V

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mHasSelected:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public selectHandleUtil(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/Request;)Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;
    .locals 2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->hasListenter()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mHasListenerUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysHasListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysHasListener;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysHasListener;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mHasListenerUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysHasListener;

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mHasListenerUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysHasListener;

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->nowUtil:Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;

    :goto_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->nowUtil:Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;

    invoke-virtual {v0, p1, p2}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->setParam(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/Request;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mHasSelected:Z

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mNoListenerUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mNoListenerUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mNoListenerUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->nowUtil:Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mPushUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;

    if-nez v0, :cond_4

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mPushUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;

    :cond_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->mPushUtil:Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->nowUtil:Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;

    goto :goto_0
.end method
