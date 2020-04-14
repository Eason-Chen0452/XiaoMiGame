.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;,
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c;,
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$b;,
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$d;
    }
.end annotation


# instance fields
.field a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;

.field private b:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$d;

.field private c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c;

.field private d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$b;

.field private e:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;->getInstance()Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$d;

    const-string v1, "SaveMessageHandlerThread"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->b:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$d;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->b:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$d;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$d;->start()V

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->b:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$d;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$d;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c;

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$b;

    const-string v1, "CollectionSuccessHandlerThread"

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$b;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$b;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$b;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$b;->start()V

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$b;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$b;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;Landroid/os/Looper;B)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->e:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->e:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$c;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
