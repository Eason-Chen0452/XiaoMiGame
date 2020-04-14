.class public Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$Tokenizer;
.super Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Tokenizer"
.end annotation


# direct methods
.method public constructor <init>(Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;-><init>(Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public consumeIdentifier()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    invoke-super {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "id"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "_rev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "rev"

    goto :goto_0
.end method
