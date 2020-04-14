.class public final Lcom/google/protobuf/DescriptorProtos$FileOptions;
.super Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;,
        Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage",
        "<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CC_GENERIC_SERVICES_FIELD_NUMBER:I = 0x10

.field public static final DEPRECATED_FIELD_NUMBER:I = 0x17

.field public static final GO_PACKAGE_FIELD_NUMBER:I = 0xb

.field public static final JAVA_GENERATE_EQUALS_AND_HASH_FIELD_NUMBER:I = 0x14

.field public static final JAVA_GENERIC_SERVICES_FIELD_NUMBER:I = 0x11

.field public static final JAVA_MULTIPLE_FILES_FIELD_NUMBER:I = 0xa

.field public static final JAVA_OUTER_CLASSNAME_FIELD_NUMBER:I = 0x8

.field public static final JAVA_PACKAGE_FIELD_NUMBER:I = 0x1

.field public static final JAVA_STRING_CHECK_UTF8_FIELD_NUMBER:I = 0x1b

.field public static final OPTIMIZE_FOR_FIELD_NUMBER:I = 0x9

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final PY_GENERIC_SERVICES_FIELD_NUMBER:I = 0x12

.field public static final UNINTERPRETED_OPTION_FIELD_NUMBER:I = 0x3e7

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ccGenericServices_:Z

.field private deprecated_:Z

.field private goPackage_:Ljava/lang/Object;

.field private javaGenerateEqualsAndHash_:Z

.field private javaGenericServices_:Z

.field private javaMultipleFiles_:Z

.field private javaOuterClassname_:Ljava/lang/Object;

.field private javaPackage_:Ljava/lang/Object;

.field private javaStringCheckUtf8_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

.field private pyGenericServices_:Z

.field private uninterpretedOption_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14719
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    .line 16920
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .line 16921
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->initFields()V

    .line 16922
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/16 v10, 0x800

    .line 14600
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 15329
    iput-byte v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 15395
    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 14601
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->initFields()V

    .line 14602
    const/4 v3, 0x0

    .line 14603
    .local v3, "mutable_bitField0_":I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 14606
    .local v6, "unknownFields":Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 14607
    .local v1, "done":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 14608
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 14609
    .local v5, "tag":I
    sparse-switch v5, :sswitch_data_0

    .line 14614
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 14616
    const/4 v1, 0x1

    goto :goto_0

    .line 14611
    :sswitch_0
    const/4 v1, 0x1

    .line 14612
    goto :goto_0

    .line 14621
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14622
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14623
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14694
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v5    # "tag":I
    :catch_0
    move-exception v2

    .line 14695
    .local v2, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14700
    .end local v2    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit16 v9, v3, 0x800

    if-ne v9, v10, :cond_1

    .line 14701
    iget-object v9, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14703
    :cond_1
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14704
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    .line 14700
    throw v8

    .line 14627
    .restart local v5    # "tag":I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14628
    .restart local v0    # "bs":Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14629
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 14696
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    .end local v5    # "tag":I
    :catch_1
    move-exception v2

    .line 14697
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14633
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "tag":I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 14634
    .local v4, "rawValue":I
    invoke-static {v4}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->valueOf(I)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    move-result-object v7

    .line 14635
    .local v7, "value":Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    if-nez v7, :cond_2

    .line 14636
    const/16 v8, 0x9

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 14638
    :cond_2
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14639
    iput-object v7, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    goto :goto_0

    .line 14644
    .end local v4    # "rawValue":I
    .end local v7    # "value":Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    :sswitch_4
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14645
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    goto :goto_0

    .line 14649
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14650
    .restart local v0    # "bs":Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14651
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 14655
    .end local v0    # "bs":Lcom/google/protobuf/ByteString;
    :sswitch_6
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x80

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14656
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    goto/16 :goto_0

    .line 14660
    :sswitch_7
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x100

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14661
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    goto/16 :goto_0

    .line 14665
    :sswitch_8
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x200

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14666
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    goto/16 :goto_0

    .line 14670
    :sswitch_9
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14671
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    goto/16 :goto_0

    .line 14675
    :sswitch_a
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit16 v8, v8, 0x400

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14676
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    goto/16 :goto_0

    .line 14680
    :sswitch_b
    iget v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    .line 14681
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    goto/16 :goto_0

    .line 14685
    :sswitch_c
    and-int/lit16 v8, v3, 0x800

    if-eq v8, v10, :cond_3

    .line 14686
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14687
    or-int/lit16 v3, v3, 0x800

    .line 14689
    :cond_3
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    sget-object v9, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 14700
    .end local v5    # "tag":I
    :cond_4
    and-int/lit16 v8, v3, 0x800

    if-ne v8, v10, :cond_5

    .line 14701
    iget-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 14703
    :cond_5
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14704
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->makeExtensionsImmutable()V

    .line 14706
    return-void

    .line 14609
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x42 -> :sswitch_2
        0x48 -> :sswitch_3
        0x50 -> :sswitch_4
        0x5a -> :sswitch_5
        0x80 -> :sswitch_6
        0x88 -> :sswitch_7
        0x90 -> :sswitch_8
        0xa0 -> :sswitch_9
        0xb8 -> :sswitch_a
        0xd8 -> :sswitch_b
        0x1f3a -> :sswitch_c
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p3, "x2"    # Lcom/google/protobuf/DescriptorProtos$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 14570
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;, "Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder<Lcom/google/protobuf/DescriptorProtos$FileOptions;*>;"
    const/4 v0, -0x1

    .line 14577
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    .line 15329
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 15395
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 14578
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 14579
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;
    .param p2, "x1"    # Lcom/google/protobuf/DescriptorProtos$1;

    .prologue
    .line 14570
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/google/protobuf/GeneratedMessage$ExtendableBuilder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    const/4 v0, -0x1

    .line 14580
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;-><init>()V

    .line 15329
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 15395
    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 14580
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$12000(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .prologue
    .line 14570
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14570
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .prologue
    .line 14570
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14570
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12202(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 14570
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return p1
.end method

.method static synthetic access$12302(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 14570
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return p1
.end method

.method static synthetic access$12402(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 14570
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    return p1
.end method

.method static synthetic access$12502(Lcom/google/protobuf/DescriptorProtos$FileOptions;Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .prologue
    .line 14570
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object p1
.end method

.method static synthetic access$12600(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .prologue
    .line 14570
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$12602(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 14570
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12702(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 14570
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    return p1
.end method

.method static synthetic access$12802(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 14570
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    return p1
.end method

.method static synthetic access$12902(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 14570
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    return p1
.end method

.method static synthetic access$13002(Lcom/google/protobuf/DescriptorProtos$FileOptions;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Z

    .prologue
    .line 14570
    iput-boolean p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    return p1
.end method

.method static synthetic access$13100(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .prologue
    .line 14570
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13102(Lcom/google/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 14570
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13202(Lcom/google/protobuf/DescriptorProtos$FileOptions;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .param p1, "x1"    # I

    .prologue
    .line 14570
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 14584
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 14709
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$11400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15316
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 15317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 15318
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    .line 15319
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    .line 15320
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    .line 15321
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->SPEED:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 15322
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 15323
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    .line 15324
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    .line 15325
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    .line 15326
    iput-boolean v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    .line 15327
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    .line 15328
    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 15515
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->access$11700()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/protobuf/DescriptorProtos$FileOptions;

    .prologue
    .line 15518
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15495
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15501
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15465
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15471
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15506
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15512
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15485
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15491
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15475
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 15481
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method


# virtual methods
.method public getCcGenericServices()Z
    .locals 1

    .prologue
    .line 15198
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .prologue
    .line 14588
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14570
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14570
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDeprecated()Z
    .locals 1

    .prologue
    .line 15257
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    return v0
.end method

.method public getGoPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15127
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 15128
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 15129
    check-cast v1, Ljava/lang/String;

    .line 15137
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 15131
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15133
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15134
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15135
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 15137
    goto :goto_0
.end method

.method public getGoPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15150
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 15151
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15152
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15155
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->goPackage_:Ljava/lang/Object;

    .line 15158
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getJavaGenerateEqualsAndHash()Z
    .locals 1

    .prologue
    .line 15054
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    return v0
.end method

.method public getJavaGenericServices()Z
    .locals 1

    .prologue
    .line 15213
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    return v0
.end method

.method public getJavaMultipleFiles()Z
    .locals 1

    .prologue
    .line 15013
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    return v0
.end method

.method public getJavaOuterClassname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 14945
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 14946
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 14947
    check-cast v1, Ljava/lang/String;

    .line 14955
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 14949
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14951
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14952
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14953
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14955
    goto :goto_0
.end method

.method public getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14971
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 14972
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14973
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14976
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaOuterClassname_:Ljava/lang/Object;

    .line 14979
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getJavaPackage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 14880
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 14881
    .local v1, "ref":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 14882
    check-cast v1, Ljava/lang/String;

    .line 14890
    .end local v1    # "ref":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 14884
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14886
    .local v0, "bs":Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14887
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14888
    iput-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 14890
    goto :goto_0
.end method

.method public getJavaPackageBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 14905
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 14906
    .local v1, "ref":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 14907
    check-cast v1, Ljava/lang/String;

    .end local v1    # "ref":Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 14910
    .local v0, "b":Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaPackage_:Ljava/lang/Object;

    .line 14913
    .end local v0    # "b":Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1    # "ref":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1    # "ref":Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getJavaStringCheckUtf8()Z
    .locals 1

    .prologue
    .line 15087
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    return v0
.end method

.method public getOptimizeFor()Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;
    .locals 1

    .prologue
    .line 15102
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14731
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPyGenericServices()Z
    .locals 1

    .prologue
    .line 15228
    iget-boolean v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 15397
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    .line 15398
    .local v1, "size":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move v2, v1

    .end local v1    # "size":I
    .local v2, "size":I
    move v3, v1

    .line 15452
    .end local v2    # "size":I
    .local v3, "size":I
    :goto_0
    return v3

    .line 15400
    .end local v3    # "size":I
    .restart local v1    # "size":I
    :cond_0
    const/4 v1, 0x0

    .line 15401
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 15402
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v1, v4

    .line 15405
    :cond_1
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 15406
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v1, v4

    .line 15409
    :cond_2
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_3

    .line 15410
    const/16 v4, 0x9

    iget-object v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v5}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v1, v4

    .line 15413
    :cond_3
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 15414
    const/16 v4, 0xa

    iget-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v1, v4

    .line 15417
    :cond_4
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_5

    .line 15418
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v1, v4

    .line 15421
    :cond_5
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_6

    .line 15422
    iget-boolean v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v1, v4

    .line 15425
    :cond_6
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_7

    .line 15426
    const/16 v4, 0x11

    iget-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v1, v4

    .line 15429
    :cond_7
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x200

    const/16 v5, 0x200

    if-ne v4, v5, :cond_8

    .line 15430
    const/16 v4, 0x12

    iget-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v1, v4

    .line 15433
    :cond_8
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v4, v6, :cond_9

    .line 15434
    const/16 v4, 0x14

    iget-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v1, v4

    .line 15437
    :cond_9
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v4, v4, 0x400

    const/16 v5, 0x400

    if-ne v4, v5, :cond_a

    .line 15438
    const/16 v4, 0x17

    iget-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v1, v4

    .line 15441
    :cond_a
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v4, v7, :cond_b

    .line 15442
    const/16 v4, 0x1b

    iget-boolean v5, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v1, v4

    .line 15445
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_c

    .line 15446
    const/16 v5, 0x3e7

    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v1, v4

    .line 15445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15449
    :cond_c
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->extensionsSerializedSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 15450
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v1, v4

    .line 15451
    iput v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedSerializedSize:I

    move v2, v1

    .end local v1    # "size":I
    .restart local v2    # "size":I
    move v3, v1

    .line 15452
    .end local v2    # "size":I
    .restart local v3    # "size":I
    goto/16 :goto_0
.end method

.method public getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 15301
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .prologue
    .line 15291
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15270
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 15312
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;

    return-object v0
.end method

.method public getUninterpretedOptionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15281
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 14595
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCcGenericServices()Z
    .locals 2

    .prologue
    .line 15180
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeprecated()Z
    .locals 2

    .prologue
    .line 15244
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGoPackage()Z
    .locals 2

    .prologue
    .line 15116
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaGenerateEqualsAndHash()Z
    .locals 2

    .prologue
    .line 15035
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaGenericServices()Z
    .locals 2

    .prologue
    .line 15207
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaMultipleFiles()Z
    .locals 2

    .prologue
    .line 14998
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaOuterClassname()Z
    .locals 2

    .prologue
    .line 14931
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaPackage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14867
    iget v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasJavaStringCheckUtf8()Z
    .locals 2

    .prologue
    .line 15072
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOptimizeFor()Z
    .locals 2

    .prologue
    .line 15096
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPyGenericServices()Z
    .locals 2

    .prologue
    .line 15222
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 14714
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$11500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 15331
    iget-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    .line 15332
    .local v1, "isInitialized":B
    if-ne v1, v2, :cond_0

    .line 15346
    :goto_0
    return v2

    .line 15333
    :cond_0
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    .line 15335
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOptionCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 15336
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUninterpretedOption(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_2

    .line 15337
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 15338
    goto :goto_0

    .line 15335
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15341
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->extensionsAreInitialized()Z

    move-result v4

    if-nez v4, :cond_4

    .line 15342
    iput-byte v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    move v2, v3

    .line 15343
    goto :goto_0

    .line 15345
    :cond_4
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 15516
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 2
    .param p1, "parent"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 15525
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 15526
    .local v0, "builder":Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14570
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    .prologue
    .line 14570
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14570
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    .prologue
    .line 15520
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newBuilder(Lcom/google/protobuf/DescriptorProtos$FileOptions;)Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14570
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14570
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->toBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 15459
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 6
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 15351
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getSerializedSize()I

    .line 15353
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 15355
    .local v0, "extensionWriter":Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;, "Lcom/google/protobuf/GeneratedMessage$ExtendableMessage<Lcom/google/protobuf/DescriptorProtos$FileOptions;>.ExtensionWriter;"
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_0

    .line 15356
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15358
    :cond_0
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 15359
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getJavaOuterClassnameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15361
    :cond_1
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 15362
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->optimizeFor_:Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 15364
    :cond_2
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 15365
    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaMultipleFiles_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15367
    :cond_3
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    .line 15368
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getGoPackageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 15370
    :cond_4
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_5

    .line 15371
    iget-boolean v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->ccGenericServices_:Z

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15373
    :cond_5
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_6

    .line 15374
    const/16 v2, 0x11

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenericServices_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15376
    :cond_6
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_7

    .line 15377
    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->pyGenericServices_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15379
    :cond_7
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v4, :cond_8

    .line 15380
    const/16 v2, 0x14

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaGenerateEqualsAndHash_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15382
    :cond_8
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit16 v2, v2, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_9

    .line 15383
    const/16 v2, 0x17

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->deprecated_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15385
    :cond_9
    iget v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-ne v2, v5, :cond_a

    .line 15386
    const/16 v2, 0x1b

    iget-boolean v3, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->javaStringCheckUtf8_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 15388
    :cond_a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 15389
    const/16 v3, 0x3e7

    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->uninterpretedOption_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 15388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15391
    :cond_b
    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2, p1}, Lcom/google/protobuf/GeneratedMessage$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 15392
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 15393
    return-void
.end method
