.class public Lcom/xiaomi/hy/dj/pbformat/JsonFormat;
.super Lcom/xiaomi/hy/dj/pbformat/AbstractCharBasedFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;,
        Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;,
        Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;
    }
.end annotation


# instance fields
.field protected final byteSerializer:Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/DefaultByteSerializer;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/pbformat/DefaultByteSerializer;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;-><init>(Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pbformat/AbstractCharBasedFormatter;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->byteSerializer:Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->prepareNumberFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static appendEscapedUnicode(Ljava/lang/StringBuilder;C)V
    .locals 2

    const-string v0, "\\u"

    const/16 v1, 0x10

    if-ge p1, v1, :cond_1

    const-string v0, "\\u000"

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const/16 v1, 0x100

    if-ge p1, v1, :cond_2

    const-string v0, "\\u00"

    goto :goto_0

    :cond_2
    const/16 v1, 0x1000

    if-ge p1, v1, :cond_0

    const-string v0, "\\u0"

    goto :goto_0
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const v4, 0xffff

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/text/StringCharacterIterator;

    invoke-direct {v2, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/text/CharacterIterator;->first()C

    move-result v0

    :goto_0
    if-eq v0, v4, :cond_3

    sparse-switch v0, :sswitch_data_0

    if-ltz v0, :cond_0

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_0

    invoke-static {v1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->appendEscapedUnicode(Ljava/lang/StringBuilder;C)V

    :goto_1
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    goto :goto_0

    :sswitch_0
    const-string v0, "\\b"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v0, "\\f"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v0, "\\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v0, "\\r"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v0, "\\t"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string v0, "\\\\"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string v0, "\\/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_7
    const-string v0, "\\\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->appendEscapedUnicode(Ljava/lang/StringBuilder;C)V

    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    move-result v0

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid unicode string: unexpected high surrogate pair value without corresponding low value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->appendEscapedUnicode(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_4
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_3
        0x22 -> :sswitch_7
        0x2f -> :sswitch_6
        0x5c -> :sswitch_5
    .end sparse-switch
.end method

.method private handleMissingField(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    const-string v0, "{"

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consume(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->handleMissingField(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "}"

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consume(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "["

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consume(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->handleMissingField(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consume(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "null"

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "null"

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consume(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->lookingAtFloat()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeFloat()F

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->lookingAtInteger()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeInt64()J

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->lookingAtBoolean()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeBoolean()Z

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_9
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeString()Ljava/lang/String;

    goto :goto_0
.end method

.method private handleObject(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    if-nez p5, :cond_0

    invoke-interface {p3, p4}, Lcom/google/protobuf/Message$Builder;->newBuilderForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    :goto_0
    if-eqz p6, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeByteString()Lcom/google/protobuf/ByteString;

    move-result-object v1

    :try_start_0
    invoke-interface {v0, v1}, Lcom/google/protobuf/Message$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Message$Builder;

    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p5, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    invoke-interface {v0}, Lcom/google/protobuf/Message;->newBuilderForType()Lcom/google/protobuf/Message$Builder;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to build "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_1
    const-string v1, "{"

    invoke-virtual {p1, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consume(Ljava/lang/String;)V

    const-string v1, "}"

    :cond_2
    :goto_2
    invoke-virtual {p1, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->atEnd()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected \""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->mergeField(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    const-string v2, ","

    invoke-virtual {p1, v2}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcom/google/protobuf/Message$Builder;->build()Lcom/google/protobuf/Message;

    move-result-object v0

    goto :goto_1
.end method

.method private handlePrimitive(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "null"

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->currentToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "null"

    invoke-virtual {p1, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consume(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->lookingAtInteger()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeInt32()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Enum type \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has no value with number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Enum type \""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" has no value named \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :pswitch_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t get here."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method private handleValue(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    invoke-virtual {p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_1

    invoke-direct/range {p0 .. p6}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->handleObject(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Z)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3, p4, v0}, Lcom/google/protobuf/Message$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->handlePrimitive(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p3, p4, v0}, Lcom/google/protobuf/Message$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;

    goto :goto_1
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

    invoke-static {p0, v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->parseInteger(Ljava/lang/String;ZZ)J

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

    invoke-static {p0, v0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->parseInteger(Ljava/lang/String;ZZ)J

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

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->prepareNumberFromString(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {p0, v0, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->parseInteger(Ljava/lang/String;ZZ)J

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

    invoke-static {p0, v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->parseInteger(Ljava/lang/String;ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static prepareNumberFromString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "0"

    :cond_0
    return-object v0
.end method

.method private printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$1;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

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

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->unsignedToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->unsignedToString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->escapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->byteSerializer:Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;

    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-interface {v0, p2}, Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p2, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$EnumValueDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "{"

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p2, Lcom/google/protobuf/Message;

    invoke-virtual {p0, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->print(Lcom/google/protobuf/Message;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    const-string v0, "}"

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

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

.method private printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

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

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_4

    const-string v0, ": "

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->indent()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "["

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {p3, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    :goto_4
    const-string v0, "\""

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    const-string v0, ": "

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string v0, "]"

    invoke-virtual {p3, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_5
    return-void

    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->printFieldValue(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_6

    invoke-virtual {p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->outdent()V

    goto :goto_5
.end method

.method static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;
        }
    .end annotation

    const/16 v5, 0x5c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_3

    aget-char v3, v2, v0

    if-ne v3, v5, :cond_2

    add-int/lit8 v3, v0, 0x1

    array-length v4, v2

    if-ge v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v3, v2, v0

    sparse-switch v3, :sswitch_data_0

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid escape sequence: \'\\"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_7
    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_8
    const/16 v3, 0x27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_9
    add-int/lit8 v3, v0, 0x4

    array-length v4, v2

    if-ge v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v0, v4}, Ljava/lang/String;-><init>([CII)V

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;

    const-string v1, "Invalid escape sequence: \'\\u\' at end of string."

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;

    const-string v1, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_7
        0x27 -> :sswitch_8
        0x2f -> :sswitch_6
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x75 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->byteSerializer:Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;-><init>(Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;Ljava/lang/CharSequence;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consume(Ljava/lang/String;)V

    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->mergeField(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->atEnd()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Expecting the end of the stream, but there seems to be more data!  Check the input for a valid JSON format."

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method protected mergeField(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p3}, Lcom/google/protobuf/Message$Builder;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v4, v5, :cond_0

    move-object v1, v0

    :cond_0
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v4, v5, :cond_8

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_0
    if-nez v0, :cond_1

    invoke-static {v3}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isDigits(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    const/4 v6, 0x1

    :cond_1
    invoke-virtual {p2, v3}, Lcom/google/protobuf/ExtensionRegistry;->findExtensionByName(Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v0, v5, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extension \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" does not extend message type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pbformat/JsonFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_2
    iget-object v4, v5, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    :goto_1
    if-nez v4, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->handleMissingField(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    :cond_3
    if-eqz v4, :cond_5

    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->consume(Ljava/lang/String;)V

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->handleValue(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Z)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->handleValue(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;Z)V

    :cond_5
    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->mergeField(Lcom/xiaomi/hy/dj/pbformat/JsonFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    :cond_6
    return-void

    :cond_7
    move-object v4, v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected print(Lcom/google/protobuf/Message;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V
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

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-interface {p1}, Lcom/google/protobuf/Message;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    return-void
.end method

.method public print(Lcom/google/protobuf/Message;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;

    invoke-direct {v0, p2}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;-><init>(Ljava/lang/Appendable;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->print(Lcom/google/protobuf/Message;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public print(Lcom/google/protobuf/UnknownFieldSet;Ljava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;

    invoke-direct {v0, p2}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;-><init>(Ljava/lang/Appendable;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public printField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->printSingleField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    return-void
.end method

.method protected printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/protobuf/UnknownFieldSet;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/UnknownFieldSet$Field;

    if-eqz v2, :cond_0

    move v2, v4

    :goto_1
    const-string v5, "\""

    invoke-virtual {p2, v5}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, ": ["

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getVarintList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v3

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    if-eqz v5, :cond_1

    move v0, v4

    :goto_3
    invoke-static {v8, v9}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->unsignedToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    move v5, v0

    goto :goto_2

    :cond_0
    const-string v5, ", "

    invoke-virtual {p2, v5}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const-string v0, ", "

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    move v0, v5

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed32List()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v5, :cond_3

    move v5, v4

    :goto_5
    const-string v8, "0x%08x"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v4

    invoke-static {v11, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_3
    const-string v8, ", "

    invoke-virtual {p2, v8}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getFixed64List()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    if-eqz v5, :cond_5

    move v5, v4

    :goto_7
    const-string v0, "0x%016x"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v4

    invoke-static {v11, v0, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_5
    const-string v0, ", "

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getLengthDelimitedList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    if-eqz v5, :cond_7

    move v5, v4

    :goto_9
    const-string v8, "\""

    invoke-virtual {p2, v8}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_7
    const-string v8, ", "

    invoke-virtual {p2, v8}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Field;->getGroupList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/UnknownFieldSet;

    if-eqz v5, :cond_9

    move v5, v4

    :goto_b
    const-string v7, "{"

    invoke-virtual {p2, v7}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, p2}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat;->printUnknownFields(Lcom/google/protobuf/UnknownFieldSet;Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;)V

    const-string v0, "}"

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_9
    const-string v7, ", "

    invoke-virtual {p2, v7}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_a
    const-string v0, "]"

    invoke-virtual {p2, v0}, Lcom/xiaomi/hy/dj/pbformat/JsonFormat$JsonGenerator;->print(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    return-void
.end method
