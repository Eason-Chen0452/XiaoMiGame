.class Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ObjectConstructor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor$11;->this$0:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/ConstructorConstructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method
