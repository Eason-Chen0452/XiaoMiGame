.class public Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/DataBean;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BaseEntity;


# instance fields
.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;",
            ">;"
        }
    .end annotation
.end field

.field private H:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BaseEntity;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/DataBean;->H:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/DataBean;->B:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/DataBean;->B:Ljava/util/List;

    return-object v0
.end method

.method public getH()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/DataBean;->H:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    return-object v0
.end method

.method public setB(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/DataBean;->B:Ljava/util/List;

    return-void
.end method

.method public setH(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/DataBean;->H:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    return-void
.end method
