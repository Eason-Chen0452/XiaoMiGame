.class final Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;


# direct methods
.method private constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;Landroid/os/Looper;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    const-string v2, "WithOutNetwork"

    const-string v1, "WithOutNetwork"

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a()Landroid/app/Application;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const-string v0, "Wifi"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b$a;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;

    iget-object v1, v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;->prepareAndSendEventInfos(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TD-SCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "WCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "3G"

    goto :goto_1

    :pswitch_1
    const-string v0, "2G"

    goto :goto_1

    :pswitch_2
    const-string v0, "3G"

    goto :goto_1

    :pswitch_3
    const-string v0, "4G"

    goto :goto_1

    :cond_3
    const-string v0, "UnknownNetwork"

    goto :goto_1

    :cond_4
    const-string v0, "UnknownNetwork"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
