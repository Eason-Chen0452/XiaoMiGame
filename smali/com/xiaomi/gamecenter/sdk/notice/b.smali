.class final Lcom/xiaomi/gamecenter/sdk/notice/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/bf;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Queue;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;Ljava/lang/String;Ljava/util/Queue;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->b:Ljava/util/Queue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;Z)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->a()Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->a()Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/NoticeHelper;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->b:Ljava/util/Queue;

    invoke-virtual {v0, v1, v4}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->a(Ljava/util/Queue;Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iput-object v4, v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->a:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iput-object v4, v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->b:Ljava/util/Queue;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->c(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/notice/a;->a()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->d(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/notice/b;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager$NoticeHandler;->c:Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->d(Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;)Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;->a()V

    goto :goto_1
.end method
