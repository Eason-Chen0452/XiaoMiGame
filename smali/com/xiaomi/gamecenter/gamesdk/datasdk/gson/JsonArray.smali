.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;
.super Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;->INSTANCE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final add(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;->INSTANCE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public final add(Ljava/lang/Character;)V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;->INSTANCE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;-><init>(Ljava/lang/Character;)V

    goto :goto_0
.end method

.method public final add(Ljava/lang/Number;)V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;->INSTANCE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_0
.end method

.method public final add(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    if-nez p1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;->INSTANCE:Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonNull;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final addAll(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final contains(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final deepCopy()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;-><init>(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->deepCopy()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->add(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;-><init>()V

    goto :goto_1
.end method

.method public final bridge synthetic deepCopy()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->deepCopy()Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;

    iget-object v0, p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(I)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    return-object v0
.end method

.method public final getAsBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsBigInteger()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsBoolean()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsByte()B
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsByte()B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsCharacter()C
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsCharacter()C

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsDouble()D
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsDouble()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsFloat()F
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsFloat()F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsInt()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsInt()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsLong()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsNumber()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsShort()S
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsShort()S

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final getAsString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    return-object v0
.end method

.method public final remove(Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final set(ILcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonElement;

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/gson/JsonArray;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
