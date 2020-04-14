.class public Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BaseEntity;


# instance fields
.field private dIndex:I

.field private date:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BaseEntity;-><init>()V

    iput p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean;->dIndex:I

    iput-object p2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean;->date:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getdIndex()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean;->dIndex:I

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setdIndex(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/CountBean;->dIndex:I

    return-void
.end method
