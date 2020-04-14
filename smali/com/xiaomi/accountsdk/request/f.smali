.class final Lcom/xiaomi/accountsdk/request/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/accountsdk/request/SimpleRequest$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a()Lcom/xiaomi/accountsdk/request/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a()Lcom/xiaomi/accountsdk/request/a;

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method
