.class public Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat;
.super Lcom/xiaomi/hy/dj/pbformat/JsonFormat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;,
        Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$Tokenizer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$Tokenizer;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat;->byteSerializer:Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$Tokenizer;-><init>(Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;Ljava/lang/CharSequence;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$Tokenizer;->consume(Ljava/lang/String;)V

    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat;->mergeField(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public print(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;

    invoke-direct {v0, p2}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;-><init>(Ljava/lang/Appendable;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat;->print(Lcom/google/protobuf/Message;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;

    invoke-direct {v0, p2}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;-><init>(Ljava/lang/Appendable;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/CouchDBFormat$CouchDBGenerator;->print(Ljava/lang/CharSequence;)V

    return-void
.end method
