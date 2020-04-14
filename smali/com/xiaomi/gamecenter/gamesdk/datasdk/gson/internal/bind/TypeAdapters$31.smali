.class final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$31;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapterFactory;


# instance fields
.field final synthetic val$type:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/Gson;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$31;->val$type:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/internal/bind/TypeAdapters$31;->val$typeAdapter:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
