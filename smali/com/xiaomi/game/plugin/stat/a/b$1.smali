.class Lcom/xiaomi/game/plugin/stat/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/game/plugin/stat/a/a;

.field final synthetic b:Lcom/xiaomi/game/plugin/stat/a/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/game/plugin/stat/a/b;Lcom/xiaomi/game/plugin/stat/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    iput-object p2, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->a:Lcom/xiaomi/game/plugin/stat/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsPromo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->a:Lcom/xiaomi/game/plugin/stat/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/a/a;->a()V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ac"

    const-string v3, "bid522"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    iget-object v3, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-static {v3}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/game/plugin/stat/a/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appid"

    iget-object v3, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-static {v3}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "imei"

    iget-object v3, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-static {v3}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/game/plugin/stat/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "channelId"

    iget-object v3, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-static {v3}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ua"

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "jarver"

    const-string v3, "NA"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "packageName"

    iget-object v4, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-static {v4}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "from"

    iget-object v4, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-static {v4}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "fromver"

    const-string v4, "NA"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "minijar"

    const-string v4, "minijar"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "minijarver"

    const-string v4, "31"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ext"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :try_start_4
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "https://data.game.xiaomi.com/1px.gif?"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/a/b$1;->b:Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/c/a;->f(Landroid/content/Context;)Z

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMiGameDAU statusCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v1

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method
