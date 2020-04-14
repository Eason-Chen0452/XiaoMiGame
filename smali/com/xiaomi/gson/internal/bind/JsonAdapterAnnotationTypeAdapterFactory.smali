.class public final Lcom/xiaomi/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gson/u;


# instance fields
.field private final a:Lcom/xiaomi/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gson/internal/ConstructorConstructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->a:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    return-void
.end method

.method static a(Lcom/xiaomi/gson/internal/ConstructorConstructor;Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;Lcom/xiaomi/gamecenter/sdk/bn;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gson/internal/ConstructorConstructor;",
            "Lcom/xiaomi/gson/Gson;",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<*>;",
            "Lcom/xiaomi/gamecenter/sdk/bn;",
            ")",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation

    invoke-interface {p3}, Lcom/xiaomi/gamecenter/sdk/bn;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/xiaomi/gson/TypeAdapter;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/Class;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/internal/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gson/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/TypeAdapter;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/gson/TypeAdapter;->a()Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-class v1, Lcom/xiaomi/gson/u;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/br;->get(Ljava/lang/Class;)Lcom/xiaomi/gamecenter/sdk/br;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gson/internal/ConstructorConstructor;->a(Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/internal/ah;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gson/internal/ah;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gson/u;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/gson/u;->a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@JsonAdapter value must be TypeAdapter or TypeAdapterFactory reference."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;)Lcom/xiaomi/gson/TypeAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaomi/gson/Gson;",
            "Lcom/xiaomi/gamecenter/sdk/br",
            "<TT;>;)",
            "Lcom/xiaomi/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/br;->getRawType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/xiaomi/gamecenter/sdk/bn;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/bn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->a:Lcom/xiaomi/gson/internal/ConstructorConstructor;

    invoke-static {v1, p1, p2, v0}, Lcom/xiaomi/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->a(Lcom/xiaomi/gson/internal/ConstructorConstructor;Lcom/xiaomi/gson/Gson;Lcom/xiaomi/gamecenter/sdk/br;Lcom/xiaomi/gamecenter/sdk/bn;)Lcom/xiaomi/gson/TypeAdapter;

    move-result-object v0

    goto :goto_0
.end method
