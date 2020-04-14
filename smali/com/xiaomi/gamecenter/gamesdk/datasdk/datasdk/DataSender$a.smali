.class final Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;-><init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/a;)V

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender$a;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender$a;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;

    return-object v0
.end method
