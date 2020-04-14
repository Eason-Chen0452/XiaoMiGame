.class Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoticeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->a:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->b:Landroid/content/Context;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    aget-object v0, p1, v3

    :cond_0
    new-instance v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->a:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;-><init>(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "milink cmd can not be null."

    iput-object v0, v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->b:Ljava/lang/String;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->isMilinkLogined()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "milink is not logined."

    iput-object v0, v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->b:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Landroid/content/Context;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq;

    move-result-object v2

    const-string v3, "MiGameSDK.NoticeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " req "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->sendMilinkRequest(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v0, "packetData is null."

    iput-object v0, v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->b:Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v2

    const-string v3, "MiGameSDK.NoticeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " resp "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getRetCode()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getRetCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getRetCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiGameSDK.NoticeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Notice server resp err : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->b:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getNoticeConfigList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "MiGameSDK.NoticeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notice num "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    iget-object v3, v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->a:Ljava/util/Queue;

    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "MiGameSDK.NoticeManager"

    const-string v3, "request error."

    invoke-static {v2, v3, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->b:Ljava/lang/String;

    :cond_5
    :goto_2
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v0, "MiGameSDK.NoticeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "result.configs  : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->a:Ljava/util/Queue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->a([Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->a:Ljava/util/Queue;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->a:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    iget-object v1, p1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->a:Ljava/util/Queue;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;Ljava/util/Queue;)Ljava/util/Queue;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->a:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->d(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeTask;->a:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->d(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
