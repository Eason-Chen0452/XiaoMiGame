.class public abstract Lcom/google/protobuf/GeneratedMessageLite;
.super Lcom/google/protobuf/AbstractMessageLite;
.source "GeneratedMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageLite$1;,
        Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;,
        Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;,
        Lcom/google/protobuf/GeneratedMessageLite$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessageLite;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/FieldSet;
    .param p1, "x1"    # Lcom/google/protobuf/MessageLite;
    .param p2, "x2"    # Lcom/google/protobuf/CodedInputStream;
    .param p3, "x3"    # Lcom/google/protobuf/CodedOutputStream;
    .param p4, "x4"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p5, "x5"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static/range {p0 .. p5}, Lcom/google/protobuf/GeneratedMessageLite;->parseUnknownField(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    return v0
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Class;

    .prologue
    .line 735
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Generated message class \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\" missing method \""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    .line 746
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 747
    :catch_0
    move-exception v1

    .line 748
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 751
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 752
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 753
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 754
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 755
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_1

    .line 756
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 758
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception thrown by generated accessor method."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static newRepeatedGeneratedExtension(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZLjava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 9
    .param p1, "messageDefaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p3, "number"    # I
    .param p4, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p5, "isPacked"    # Z
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TContainingType;TType;>;"
        }
    .end annotation

    .prologue
    .line 661
    .local p0, "containingTypeDefaultInstance":Lcom/google/protobuf/MessageLite;, "TContainingType;"
    .local p2, "enumTypeMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 662
    .local v7, "emptyList":Ljava/util/List;, "TType;"
    new-instance v8, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    const/4 v4, 0x1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V

    move-object v1, v8

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move-object v5, v0

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v8
.end method

.method public static newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 8
    .param p2, "messageDefaultInstance"    # Lcom/google/protobuf/MessageLite;
    .param p4, "number"    # I
    .param p5, "type"    # Lcom/google/protobuf/WireFormat$FieldType;
    .param p6, "singularType"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/MessageLite;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class;",
            ")",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TContainingType;TType;>;"
        }
    .end annotation

    .prologue
    .local p0, "containingTypeDefaultInstance":Lcom/google/protobuf/MessageLite;, "TContainingType;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TType;"
    .local p3, "enumTypeMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    const/4 v4, 0x0

    .line 639
    new-instance v7, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V

    return-object v7
.end method

.method private static parseUnknownField(Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 16
    .param p2, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p3, "unknownFieldsCodedOutput"    # Lcom/google/protobuf/CodedOutputStream;
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p5, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(",
            "Lcom/google/protobuf/FieldSet",
            "<",
            "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TMessageType;",
            "Lcom/google/protobuf/CodedInputStream;",
            "Lcom/google/protobuf/CodedOutputStream;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    .local p0, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p1, "defaultInstance":Lcom/google/protobuf/MessageLite;, "TMessageType;"
    invoke-static/range {p5 .. p5}, Lcom/google/protobuf/WireFormat;->getTagWireType(I)I

    move-result v13

    .line 515
    .local v13, "wireType":I
    invoke-static/range {p5 .. p5}, Lcom/google/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v5

    .line 517
    .local v5, "fieldNumber":I
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/google/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v4

    .line 521
    .local v4, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<TMessageType;*>;"
    const/4 v11, 0x0

    .line 522
    .local v11, "unknown":Z
    const/4 v8, 0x0

    .line 523
    .local v8, "packed":Z
    if-nez v4, :cond_0

    .line 524
    const/4 v11, 0x1

    .line 539
    :goto_0
    if-eqz v11, :cond_3

    .line 540
    move-object/from16 v0, p2

    move/from16 v1, p5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/CodedInputStream;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v14

    .line 623
    :goto_1
    return v14

    .line 525
    :cond_0
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v14

    if-ne v13, v14, :cond_1

    .line 528
    const/4 v8, 0x0

    goto :goto_0

    .line 529
    :cond_1
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-boolean v14, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    if-eqz v14, :cond_2

    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    iget-object v14, v14, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v14}, Lcom/google/protobuf/WireFormat$FieldType;->isPackable()Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v14

    if-ne v13, v14, :cond_2

    .line 534
    const/4 v8, 0x1

    goto :goto_0

    .line 536
    :cond_2
    const/4 v11, 0x1

    goto :goto_0

    .line 543
    :cond_3
    if-eqz v8, :cond_7

    .line 544
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    .line 545
    .local v6, "length":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v7

    .line 546
    .local v7, "limit":I
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v14, v15, :cond_5

    .line 547
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_6

    .line 548
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 549
    .local v9, "rawValue":I
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v14

    invoke-interface {v14, v9}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v12

    .line 551
    .local v12, "value":Lcom/google/protobuf/Internal$EnumLite;
    if-nez v12, :cond_4

    .line 554
    const/4 v14, 0x1

    goto :goto_1

    .line 556
    :cond_4
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v4, v12}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2

    .line 560
    .end local v9    # "rawValue":I
    .end local v12    # "value":Lcom/google/protobuf/Internal$EnumLite;
    :cond_5
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_6

    .line 561
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v12

    .line 565
    .local v12, "value":Ljava/lang/Object;
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 568
    .end local v12    # "value":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    .line 623
    .end local v6    # "length":I
    .end local v7    # "limit":I
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 571
    :cond_7
    sget-object v14, Lcom/google/protobuf/GeneratedMessageLite$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    iget-object v15, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v15}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 608
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Lcom/google/protobuf/FieldSet;->readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;

    move-result-object v12

    .line 614
    :cond_8
    :goto_5
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 615
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v4, v12}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/protobuf/FieldSet;->addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_4

    .line 573
    :pswitch_0
    const/4 v10, 0x0

    .line 574
    .local v10, "subBuilder":Lcom/google/protobuf/MessageLite$Builder;
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v14

    if-nez v14, :cond_9

    .line 575
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    .line 577
    .local v3, "existingValue":Lcom/google/protobuf/MessageLite;
    if-eqz v3, :cond_9

    .line 578
    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v10

    .line 581
    .end local v3    # "existingValue":Lcom/google/protobuf/MessageLite;
    :cond_9
    if-nez v10, :cond_a

    .line 582
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v14

    invoke-interface {v14}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v10

    .line 585
    :cond_a
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v14

    sget-object v15, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne v14, v15, :cond_b

    .line 587
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v14

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v14, v10, v1}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 592
    :goto_6
    invoke-interface {v10}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v12

    .line 593
    .local v12, "value":Lcom/google/protobuf/MessageLite;
    goto :goto_5

    .line 590
    .end local v12    # "value":Lcom/google/protobuf/MessageLite;
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v10, v1}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_6

    .line 596
    .end local v10    # "subBuilder":Lcom/google/protobuf/MessageLite$Builder;
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v9

    .line 597
    .restart local v9    # "rawValue":I
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v14}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;

    move-result-object v14

    invoke-interface {v14, v9}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v12

    .line 601
    .local v12, "value":Lcom/google/protobuf/Internal$EnumLite;
    if-nez v12, :cond_8

    .line 602
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 603
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 604
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 618
    .end local v9    # "rawValue":I
    .end local v12    # "value":Lcom/google/protobuf/Internal$EnumLite;
    :cond_c
    iget-object v14, v4, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v4, v12}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 571
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<+",
            "Lcom/google/protobuf/MessageLite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected makeExtensionsImmutable()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "unknownFieldsCodedOutput"    # Lcom/google/protobuf/CodedOutputStream;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p4, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/CodedInputStream;->skipField(ILcom/google/protobuf/CodedOutputStream;)Z

    move-result v0

    return v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 947
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/google/protobuf/MessageLite;)V

    return-object v0
.end method
