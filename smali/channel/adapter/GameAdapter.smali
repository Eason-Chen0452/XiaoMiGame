.class public Lchannel/adapter/GameAdapter;
.super Ljava/lang/Object;
.source "GameAdapter.java"


# static fields
.field static ins:Lchannel/adapter/GameAdapter;


# instance fields
.field translater:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lchannel/adapter/IGameListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lchannel/adapter/GameAdapter;->translater:Ljava/util/HashMap;

    .line 21
    sput-object p0, Lchannel/adapter/GameAdapter;->ins:Lchannel/adapter/GameAdapter;

    .line 22
    return-void
.end method

.method public static Inst()Lchannel/adapter/GameAdapter;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lchannel/adapter/GameAdapter;->ins:Lchannel/adapter/GameAdapter;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lchannel/adapter/GameAdapter;

    invoke-direct {v0}, Lchannel/adapter/GameAdapter;-><init>()V

    sput-object v0, Lchannel/adapter/GameAdapter;->ins:Lchannel/adapter/GameAdapter;

    .line 14
    :cond_0
    sget-object v0, Lchannel/adapter/GameAdapter;->ins:Lchannel/adapter/GameAdapter;

    return-object v0
.end method


# virtual methods
.method public registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listener"    # Lchannel/adapter/IGameListener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    if-nez p2, :cond_1

    .line 27
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Register Listener Param error !!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v1, v2

    .line 43
    :goto_0
    return v1

    .line 31
    :cond_1
    iget-object v3, p0, Lchannel/adapter/GameAdapter;->translater:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 32
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "WARNING !! The LISTENER named %s was exists!!"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 37
    :cond_2
    :try_start_0
    iget-object v3, p0, Lchannel/adapter/GameAdapter;->translater:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 40
    goto :goto_0
.end method

.method public translateListener(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lchannel/adapter/GameAdapter;->translater:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    const/4 v3, 0x0

    .line 60
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    :goto_0
    return v3

    .line 54
    .restart local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lchannel/adapter/GameAdapter;->translater:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lchannel/adapter/IGameListener;

    invoke-interface {v3, v2, v1}, Lchannel/adapter/IGameListener;->onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
