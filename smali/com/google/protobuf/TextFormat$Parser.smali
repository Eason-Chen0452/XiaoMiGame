.class public Lcom/google/protobuf/TextFormat$Parser;
.super Ljava/lang/Object;
.source "TextFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$Parser$Builder;,
        Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final allowUnknownFields:Z

.field private final singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;


# direct methods
.method private constructor <init>(ZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;)V
    .locals 0
    .param p1, "allowUnknownFields"    # Z
    .param p2, "singularOverwritePolicy"    # Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    .prologue
    .line 1194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1195
    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$Parser;->allowUnknownFields:Z

    .line 1196
    iput-object p2, p0, Lcom/google/protobuf/TextFormat$Parser;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    .line 1197
    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;Lcom/google/protobuf/TextFormat$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;
    .param p3, "x2"    # Lcom/google/protobuf/TextFormat$1;

    .prologue
    .line 1171
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormat$Parser;-><init>(ZLcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;)V

    return-void
.end method

.method private consumeFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;)V
    .locals 15
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "target"    # Lcom/google/protobuf/MessageReflection$MergeTarget;
    .param p4, "field"    # Lcom/google/protobuf/Descriptors$FieldDescriptor;
    .param p5, "extension"    # Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 1434
    const/4 v8, 0x0

    .line 1436
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v9

    sget-object v10, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v9, v10, :cond_5

    .line 1438
    const-string v9, "<"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1439
    const-string v2, ">"

    .line 1446
    .local v2, "endToken":Ljava/lang/String;
    :goto_0
    if-nez p5, :cond_1

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v9}, Lcom/google/protobuf/MessageReflection$MergeTarget;->newMergeTargetForField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/Message;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    move-result-object v7

    .line 1449
    .local v7, "subField":Lcom/google/protobuf/MessageReflection$MergeTarget;
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1450
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1451
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0xc

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Expected \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v9

    throw v9

    .line 1441
    .end local v2    # "endToken":Ljava/lang/String;
    .end local v7    # "subField":Lcom/google/protobuf/MessageReflection$MergeTarget;
    :cond_0
    const-string v9, "{"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1442
    const-string v2, "}"

    .restart local v2    # "endToken":Ljava/lang/String;
    goto :goto_0

    .line 1446
    :cond_1
    move-object/from16 v0, p5

    iget-object v9, v0, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->defaultInstance:Lcom/google/protobuf/Message;

    goto :goto_1

    .line 1454
    .restart local v7    # "subField":Lcom/google/protobuf/MessageReflection$MergeTarget;
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v7}, Lcom/google/protobuf/TextFormat$Parser;->mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;)V

    goto :goto_2

    .line 1457
    :cond_3
    invoke-interface {v7}, Lcom/google/protobuf/MessageReflection$MergeTarget;->finish()Ljava/lang/Object;

    move-result-object v8

    .line 1532
    .end local v2    # "endToken":Ljava/lang/String;
    .end local v7    # "subField":Lcom/google/protobuf/MessageReflection$MergeTarget;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_4
    :goto_3
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1533
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v8}, Lcom/google/protobuf/MessageReflection$MergeTarget;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    .line 1551
    :goto_4
    return-void

    .line 1460
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_5
    sget-object v9, Lcom/google/protobuf/TextFormat$3;->$SwitchMap$com$google$protobuf$Descriptors$FieldDescriptor$Type:[I

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_3

    .line 1464
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1465
    .local v8, "value":Ljava/lang/Integer;
    goto :goto_3

    .line 1470
    .local v8, "value":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt64()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1471
    .local v8, "value":Ljava/lang/Long;
    goto :goto_3

    .line 1475
    .local v8, "value":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeUInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1476
    .local v8, "value":Ljava/lang/Integer;
    goto :goto_3

    .line 1480
    .local v8, "value":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeUInt64()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1481
    .local v8, "value":Ljava/lang/Long;
    goto :goto_3

    .line 1484
    .local v8, "value":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeFloat()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 1485
    .local v8, "value":Ljava/lang/Float;
    goto :goto_3

    .line 1488
    .local v8, "value":Ljava/lang/Object;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeDouble()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 1489
    .local v8, "value":Ljava/lang/Double;
    goto :goto_3

    .line 1492
    .local v8, "value":Ljava/lang/Object;
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeBoolean()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1493
    .local v8, "value":Ljava/lang/Boolean;
    goto :goto_3

    .line 1496
    .local v8, "value":Ljava/lang/Object;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeString()Ljava/lang/String;

    move-result-object v8

    .line 1497
    .local v8, "value":Ljava/lang/String;
    goto :goto_3

    .line 1500
    .local v8, "value":Ljava/lang/Object;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    .line 1501
    .local v8, "value":Lcom/google/protobuf/ByteString;
    goto :goto_3

    .line 1504
    .local v8, "value":Ljava/lang/Object;
    :pswitch_9
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/google/protobuf/Descriptors$EnumDescriptor;

    move-result-object v3

    .line 1506
    .local v3, "enumType":Lcom/google/protobuf/Descriptors$EnumDescriptor;
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAtInteger()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1507
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeInt32()I

    move-result v5

    .line 1508
    .local v5, "number":I
    invoke-virtual {v3, v5}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v8

    .line 1509
    .local v8, "value":Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v8, :cond_4

    .line 1510
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x32

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Enum type \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" has no value with number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v9

    throw v9

    .line 1515
    .end local v5    # "number":I
    .local v8, "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 1516
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->findValueByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$EnumValueDescriptor;

    move-result-object v8

    .line 1517
    .local v8, "value":Lcom/google/protobuf/Descriptors$EnumValueDescriptor;
    if-nez v8, :cond_4

    .line 1518
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$EnumDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x23

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Enum type \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\" has no value named \""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v9

    throw v9

    .line 1528
    .end local v3    # "enumType":Lcom/google/protobuf/Descriptors$EnumDescriptor;
    .end local v4    # "id":Ljava/lang/String;
    .local v8, "value":Ljava/lang/Object;
    :pswitch_a
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Can\'t get here."

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1534
    .end local v8    # "value":Ljava/lang/Object;
    :cond_7
    iget-object v9, p0, Lcom/google/protobuf/TextFormat$Parser;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    sget-object v10, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->FORBID_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    if-ne v9, v10, :cond_8

    invoke-interface/range {p3 .. p4}, Lcom/google/protobuf/MessageReflection$MergeTarget;->hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1537
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x2c

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Non-repeated field \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" cannot be overwritten."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v9

    throw v9

    .line 1539
    :cond_8
    iget-object v9, p0, Lcom/google/protobuf/TextFormat$Parser;->singularOverwritePolicy:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    sget-object v10, Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;->FORBID_SINGULAR_OVERWRITES:Lcom/google/protobuf/TextFormat$Parser$SingularOverwritePolicy;

    if-ne v9, v10, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/google/protobuf/Descriptors$OneofDescriptor;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/google/protobuf/Descriptors$OneofDescriptor;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/google/protobuf/MessageReflection$MergeTarget;->hasOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1543
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/google/protobuf/Descriptors$OneofDescriptor;

    move-result-object v6

    .line 1544
    .local v6, "oneof":Lcom/google/protobuf/Descriptors$OneofDescriptor;
    invoke-virtual/range {p4 .. p4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Lcom/google/protobuf/MessageReflection$MergeTarget;->getOneofFieldDescriptor(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getFullName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$OneofDescriptor;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x46

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v13, "Field \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, "\" is specified along with field \""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\", another member of oneof \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\"."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v9

    throw v9

    .line 1549
    .end local v6    # "oneof":Lcom/google/protobuf/Descriptors$OneofDescriptor;
    :cond_9
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v8}, Lcom/google/protobuf/MessageReflection$MergeTarget;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/MessageReflection$MergeTarget;

    goto/16 :goto_4

    .line 1460
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
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

.method private mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;)V
    .locals 11
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "target"    # Lcom/google/protobuf/MessageReflection$MergeTarget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 1314
    const/4 v4, 0x0

    .line 1315
    .local v4, "field":Lcom/google/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {p3}, Lcom/google/protobuf/MessageReflection$MergeTarget;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v8

    .line 1316
    .local v8, "type":Lcom/google/protobuf/Descriptors$Descriptor;
    const/4 v5, 0x0

    .line 1318
    .local v5, "extension":Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;
    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v7, "name":Ljava/lang/StringBuilder;
    :goto_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    const/16 v0, 0x2e

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1327
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lcom/google/protobuf/MessageReflection$MergeTarget;->findExtensionByName(Lcom/google/protobuf/ExtensionRegistry;Ljava/lang/String;)Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;

    move-result-object v5

    .line 1330
    if-nez v5, :cond_4

    .line 1331
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser;->allowUnknownFields:Z

    if-nez v0, :cond_1

    .line 1332
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Extension \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" not found in the ExtensionRegistry."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 1335
    :cond_1
    invoke-static {}, Lcom/google/protobuf/TextFormat;->access$1100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Extension \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" not found in the ExtensionRegistry."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1347
    :goto_1
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1385
    .end local v7    # "name":Ljava/lang/StringBuilder;
    :cond_2
    :goto_2
    if-nez v4, :cond_b

    .line 1392
    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1394
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->skipFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    .line 1421
    :cond_3
    :goto_3
    return-void

    .line 1339
    .restart local v7    # "name":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v0, v5, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    if-eq v0, v8, :cond_5

    .line 1340
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v3, v9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Extension \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" does not extend message type \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 1344
    :cond_5
    iget-object v4, v5, Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;->descriptor:Lcom/google/protobuf/Descriptors$FieldDescriptor;

    goto :goto_1

    .line 1349
    .end local v7    # "name":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 1350
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v8, v7}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v4

    .line 1355
    if-nez v4, :cond_7

    .line 1358
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 1359
    .local v6, "lowerName":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lcom/google/protobuf/Descriptors$Descriptor;->findFieldByName(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v4

    .line 1361
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v0, v1, :cond_7

    .line 1362
    const/4 v4, 0x0

    .line 1366
    .end local v6    # "lowerName":Ljava/lang/String;
    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_8

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1368
    const/4 v4, 0x0

    .line 1371
    :cond_8
    if-nez v4, :cond_2

    .line 1372
    iget-boolean v0, p0, Lcom/google/protobuf/TextFormat$Parser;->allowUnknownFields:Z

    if-nez v0, :cond_9

    .line 1373
    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v3, v9

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Message type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" has no field named \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseExceptionPreviousToken(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    .line 1377
    :cond_9
    invoke-static {}, Lcom/google/protobuf/TextFormat;->access$1100()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v8}, Lcom/google/protobuf/Descriptors$Descriptor;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x26

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Message type \""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" has no field named \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1396
    .end local v7    # "name":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->skipFieldMessage(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    goto/16 :goto_3

    .line 1402
    :cond_b
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_c

    .line 1403
    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    .line 1409
    :goto_4
    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1411
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/TextFormat$Parser;->consumeFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;)V

    .line 1412
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1416
    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    goto :goto_5

    .line 1405
    :cond_c
    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1419
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/TextFormat$Parser;->consumeFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;Lcom/google/protobuf/Descriptors$FieldDescriptor;Lcom/google/protobuf/ExtensionRegistry$ExtensionInfo;)V

    goto/16 :goto_3
.end method

.method public static newBuilder()Lcom/google/protobuf/TextFormat$Parser$Builder;
    .locals 1

    .prologue
    .line 1203
    new-instance v0, Lcom/google/protobuf/TextFormat$Parser$Builder;

    invoke-direct {v0}, Lcom/google/protobuf/TextFormat$Parser$Builder;-><init>()V

    return-object v0
.end method

.method private skipField(Lcom/google/protobuf/TextFormat$Tokenizer;)V
    .locals 1
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 1557
    const-string v0, "["

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1560
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    .line 1561
    const-string v0, "."

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    const-string v0, "]"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1573
    :goto_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "<"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1575
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->skipFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    .line 1581
    :goto_1
    const-string v0, ";"

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1582
    const-string v0, ","

    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    .line 1584
    :cond_1
    return-void

    .line 1564
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consumeIdentifier()Ljava/lang/String;

    goto :goto_0

    .line 1577
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->skipFieldMessage(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    goto :goto_1
.end method

.method private skipFieldMessage(Lcom/google/protobuf/TextFormat$Tokenizer;)V
    .locals 2
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 1592
    const-string v1, "<"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1593
    const-string v0, ">"

    .line 1598
    .local v0, "delimiter":Ljava/lang/String;
    :goto_0
    const-string v1, ">"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "}"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->lookingAt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1599
    invoke-direct {p0, p1}, Lcom/google/protobuf/TextFormat$Parser;->skipField(Lcom/google/protobuf/TextFormat$Tokenizer;)V

    goto :goto_0

    .line 1595
    .end local v0    # "delimiter":Ljava/lang/String;
    :cond_0
    const-string v1, "{"

    invoke-virtual {p1, v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1596
    const-string v0, "}"

    .restart local v0    # "delimiter":Ljava/lang/String;
    goto :goto_0

    .line 1601
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->consume(Ljava/lang/String;)V

    .line 1602
    return-void
.end method

.method private skipFieldValue(Lcom/google/protobuf/TextFormat$Tokenizer;)V
    .locals 3
    .param p1, "tokenizer"    # Lcom/google/protobuf/TextFormat$Tokenizer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 1608
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeString()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1609
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeString()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1620
    :cond_1
    return-void

    .line 1612
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeIdentifier()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeInt64()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeUInt64()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeDouble()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->tryConsumeFloat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1617
    const-string v1, "Invalid field value: "

    invoke-static {p1}, Lcom/google/protobuf/TextFormat$Tokenizer;->access$1200(Lcom/google/protobuf/TextFormat$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/protobuf/TextFormat$Tokenizer;->parseException(Ljava/lang/String;)Lcom/google/protobuf/TextFormat$ParseException;

    move-result-object v0

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 4
    .param p0, "input"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1275
    .local v2, "text":Ljava/lang/StringBuilder;
    const/16 v3, 0x1000

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1277
    .local v0, "buffer":Ljava/nio/CharBuffer;
    :goto_0
    invoke-interface {p0, v0}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    .line 1278
    .local v1, "n":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1284
    return-object v2

    .line 1281
    :cond_0
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 1282
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 1296
    new-instance v1, Lcom/google/protobuf/TextFormat$Tokenizer;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/protobuf/TextFormat$Tokenizer;-><init>(Ljava/lang/CharSequence;Lcom/google/protobuf/TextFormat$1;)V

    .line 1297
    .local v1, "tokenizer":Lcom/google/protobuf/TextFormat$Tokenizer;
    new-instance v0, Lcom/google/protobuf/MessageReflection$BuilderAdapter;

    invoke-direct {v0, p3}, Lcom/google/protobuf/MessageReflection$BuilderAdapter;-><init>(Lcom/google/protobuf/Message$Builder;)V

    .line 1300
    .local v0, "target":Lcom/google/protobuf/MessageReflection$BuilderAdapter;
    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/TextFormat$Tokenizer;->atEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1301
    invoke-direct {p0, v1, p2, v0}, Lcom/google/protobuf/TextFormat$Parser;->mergeField(Lcom/google/protobuf/TextFormat$Tokenizer;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/MessageReflection$MergeTarget;)V

    goto :goto_0

    .line 1303
    :cond_0
    return-void
.end method

.method public merge(Ljava/lang/CharSequence;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/TextFormat$ParseException;
        }
    .end annotation

    .prologue
    .line 1244
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1245
    return-void
.end method

.method public merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/Readable;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistry;
    .param p3, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1264
    invoke-static {p1}, Lcom/google/protobuf/TextFormat$Parser;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/CharSequence;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1265
    return-void
.end method

.method public merge(Ljava/lang/Readable;Lcom/google/protobuf/Message$Builder;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/Readable;
    .param p2, "builder"    # Lcom/google/protobuf/Message$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistry;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistry;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/protobuf/TextFormat$Parser;->merge(Ljava/lang/Readable;Lcom/google/protobuf/ExtensionRegistry;Lcom/google/protobuf/Message$Builder;)V

    .line 1235
    return-void
.end method
