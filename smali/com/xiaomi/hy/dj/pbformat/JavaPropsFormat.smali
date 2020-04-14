.class public Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;
.super Lcom/xiaomi/hy/dj/pbformat/AbstractCharBasedFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$InvalidEscapeSequenceException;,
        Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$ParseException;,
        Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;,
        Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pbformat/AbstractCharBasedFormatter;-><init>()V

    return-void
.end method

.method private createFieldNameCollectionIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v2, "\\a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v2, "\\f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string v2, "\\v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_7
    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_8
    const-string v2, "\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_9
    const-string v2, "\\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
    .end sparse-switch
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private mergeField(Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Ljava/util/Map;Lcom/google/protobuf/Message$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;",
            "Lcom/google/protobuf/ExtensionRegistry;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/Message;",
            ">;",
            "Lcom/google/protobuf/Message$Builder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$ParseException;
        }
    .end annotation

    const/16 v6, 0x2e

    const/4 v1, 0x0

    invoke-interface {p4}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v3

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/ExtensionRegistry;->findExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extension \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" not found in the ExtensionRegistry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_1
    iget-object v4, v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v4

    if-eq v4, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extension \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" does not extend message type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_2
    const-string v2, "]"

    invoke-virtual {p1, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consume(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    :goto_1
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "["

    invoke-virtual {p1, v3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consume(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeInt32()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {p1, v4}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consume(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v4, v5, :cond_9

    const-string v1, "."

    invoke-virtual {p1, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consume(Ljava/lang/String;)V

    if-nez v0, :cond_8

    invoke-interface {p4, v2}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_3
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Message;

    if-eqz v0, :cond_3

    invoke-interface {v1, v0}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;

    :cond_3
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->mergeField(Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Ljava/util/Map;Lcom/google/protobuf/Message$Builder;)V

    invoke-interface {v1}, Lcom/google/protobuf/Message$Builder;->buildPartial()Lcom/google/protobuf/Message;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Lcom/google/protobuf/Message;

    invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p4, v2}, Lcom/google/protobuf/Message$Builder;->getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v0, v4, :cond_b

    invoke-interface {p4, v2, v1}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    :goto_5
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v4, v5, :cond_6

    move-object v2, v1

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v4, v5, :cond_7

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object v2, v1

    :cond_7
    if-nez v2, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" has no field named \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_8
    iget-object v0, v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3

    :cond_9
    const-string v0, "="

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consume(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_4
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_5
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_6
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_7
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_9
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->lookingAtInteger()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeInt32()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enum type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has no value with number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_a
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enum type \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has no value named \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$ParseException;

    move-result-object v0

    throw v0

    :pswitch_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p4, v2, v0, v1}, Lcom/google/protobuf/Message$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto/16 :goto_5

    :cond_c
    invoke-interface {p4, v2, v1}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto/16 :goto_5

    :cond_d
    move-object v3, v1

    goto/16 :goto_2

    :cond_e
    move-object v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method static parseInt32(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseInt64(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static parseInteger(Ljava/lang/String;ZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v4, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "-"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number must be positive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move v3, v1

    :goto_0
    const/16 v1, 0xa

    const-string v2, "0x"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v3, v3, 0x2

    move v1, v4

    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v4, :cond_6

    invoke-static {v3, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    if-eqz v0, :cond_d

    neg-long v0, v2

    :goto_2
    if-nez p2, :cond_b

    if-eqz p1, :cond_4

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit signed integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v2, "0"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_4
    const-wide v2, 0x100000000L

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit unsigned integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    :goto_3
    if-nez p2, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x1f

    if-le v1, v2, :cond_a

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit signed integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x20

    if-le v1, v2, :cond_a

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 32-bit unsigned integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_a

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 64-bit signed integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_a

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Number out of range for 64-bit unsigned integer: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    :cond_b
    return-wide v0

    :cond_c
    move-object v0, v2

    goto :goto_3

    :cond_d
    move-wide v0, v2

    goto/16 :goto_2

    :cond_e
    move v0, v2

    move v3, v2

    goto/16 :goto_0
.end method

.method static parseUInt32(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method static parseUInt64(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private print(Lcom/google/protobuf/Message;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    return-void
.end method

.method private printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Integer;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Integer;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    :cond_1
    return-void
.end method

.method private printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->unsignedToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->unsignedToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-static {p2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    check-cast p2, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    check-cast p2, Lcom/google/protobuf/Message;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->print(Lcom/google/protobuf/Message;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Integer;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "["

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isOptional()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getExtensionScope()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "]"

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->createFieldNameCollectionIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->indent(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0, p1, p2, p4}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->createFieldNameCollectionIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->outdent(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->createFieldNameCollectionIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->createFieldNameCollectionIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->indent(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, "="

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->createFieldNameCollectionIndex(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->outdent(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "\n"

    invoke-virtual {p4, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet$Field;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v2, "="

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-static {v6, v7}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->unsignedToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v2, "="

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v2, "0x%08x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    invoke-static {v10, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v2, "="

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v2, "0x%016x"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v10, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v3, "=\""

    invoke-virtual {p2, v3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v2, "\"\n"

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->indent(Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->outdent(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    return-void
.end method

.method static unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    const/16 v8, 0x5c

    const/16 v7, 0x27

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_6

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isOctal(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v0

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isOctal(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v4

    add-int/2addr v0, v4

    :cond_0
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isOctal(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    move v2, v4

    :goto_1
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    :cond_2
    sparse-switch v0, :sswitch_data_0

    new-instance v1, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$InvalidEscapeSequenceException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid escape sequence: \'\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x7

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_1
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x8

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_2
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xc

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_3
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_4
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_5
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x9

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_6
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xb

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_7
    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_8
    add-int/lit8 v0, v2, 0x1

    aput-byte v7, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_9
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x22

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_a
    add-int/lit8 v0, v3, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    add-int/lit8 v0, v3, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isHex(C)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v0

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v0, 0x10

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    move v2, v4

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$InvalidEscapeSequenceException;

    const-string v1, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$InvalidEscapeSequenceException;

    const-string v1, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$InvalidEscapeSequenceException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    move v3, v0

    move v2, v4

    goto/16 :goto_1

    :cond_7
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
        0x78 -> :sswitch_a
    .end sparse-switch
.end method

.method static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$InvalidEscapeSequenceException;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$ParseException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$1;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;->atEnd()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, p2, v1, p3}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->mergeField(Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Ljava/util/Map;Lcom/google/protobuf/Message$Builder;)V

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

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;-><init>(Ljava/lang/Appendable;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$1;)V

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->print(Lcom/google/protobuf/Message;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    return-void
.end method

.method public print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;-><init>(Ljava/lang/Appendable;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$1;)V

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    return-void
.end method

.method public printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;-><init>(Ljava/lang/Appendable;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$1;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat$JavaPropsGenerator;)V

    return-void
.end method

.method public printFieldToString(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JavaPropsFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Writing to a StringBuilder threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
