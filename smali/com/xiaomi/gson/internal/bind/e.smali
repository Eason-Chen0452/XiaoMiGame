.class public final Lcom/xiaomi/gson/internal/bind/e;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/xiaomi/gson/u;


# instance fields
.field private final b:Lcom/xiaomi/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gson/internal/bind/f;

    invoke-direct {v0}, Lcom/xiaomi/gson/internal/bind/f;-><init>()V

    sput-object v0, Lcom/xiaomi/gson/internal/bind/e;->a:Lcom/xiaomi/gson/u;

    return-void
.end method

.method constructor <init>(Lcom/xiaomi/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/e;->b:Lcom/xiaomi/gson/Gson;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gson/internal/bind/g;->a:[I

    invoke-virtual {v0}, Lcom/xiaomi/gson/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->a()V

    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/gson/internal/bind/e;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->b()V

    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/xiaomi/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/xiaomi/gson/internal/LinkedTreeMap;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->c()V

    :goto_2
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/xiaomi/gson/internal/bind/e;->a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->d()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->j()V

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->f()Lcom/xiaomi/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gson/internal/bind/e;->b:Lcom/xiaomi/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gson/Gson;->a(Ljava/lang/Class;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/gson/internal/bind/e;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->d()Lcom/xiaomi/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->e()Lcom/xiaomi/gson/stream/JsonWriter;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/gson/TypeAdapter;->a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
