.class public Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BaseEntity;


# instance fields
.field private event:Ljava/lang/String;

.field private eventParam:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

.field private fromPage:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private page:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

.field private sessionId:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getEventParam()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->eventParam:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    return-object v0
.end method

.method public getFromPage()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->fromPage:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/ItemBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->page:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->event:Ljava/lang/String;

    return-void
.end method

.method public setEventParam(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->eventParam:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    return-void
.end method

.method public setFromPage(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->fromPage:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/ItemBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->items:Ljava/util/List;

    return-void
.end method

.method public setPage(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->page:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->trackId:Ljava/lang/String;

    return-void
.end method
