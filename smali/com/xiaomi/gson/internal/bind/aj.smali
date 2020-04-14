.class final Lcom/xiaomi/gson/internal/bind/aj;
.super Lcom/xiaomi/gson/TypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gson/TypeAdapter",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gson/stream/JsonToken;->NULL:Lcom/xiaomi/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->c()V

    move v6, v0

    move v5, v0

    move v4, v0

    move v3, v0

    move v2, v0

    move v1, v0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->f()Lcom/xiaomi/gson/stream/JsonToken;

    move-result-object v0

    sget-object v7, Lcom/xiaomi/gson/stream/JsonToken;->END_OBJECT:Lcom/xiaomi/gson/stream/JsonToken;

    if-eq v0, v7, :cond_7

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->m()I

    move-result v0

    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v0

    goto :goto_1

    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v0

    goto :goto_1

    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonReader;->d()V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_0
.end method

.method public final synthetic a(Lcom/xiaomi/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->f()Lcom/xiaomi/gson/stream/JsonWriter;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->d()Lcom/xiaomi/gson/stream/JsonWriter;

    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->a(J)Lcom/xiaomi/gson/stream/JsonWriter;

    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->a(J)Lcom/xiaomi/gson/stream/JsonWriter;

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->a(J)Lcom/xiaomi/gson/stream/JsonWriter;

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->a(J)Lcom/xiaomi/gson/stream/JsonWriter;

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->a(J)Lcom/xiaomi/gson/stream/JsonWriter;

    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/xiaomi/gson/stream/JsonWriter;->a(Ljava/lang/String;)Lcom/xiaomi/gson/stream/JsonWriter;

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/gson/stream/JsonWriter;->a(J)Lcom/xiaomi/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/xiaomi/gson/stream/JsonWriter;->e()Lcom/xiaomi/gson/stream/JsonWriter;

    goto :goto_0
.end method
