.class public final Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5600()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$5300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->access$5800()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;
    .locals 4

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/i;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_0

    :goto_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->code_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->access$6002(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;I)I

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->access$6102(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->onBuilt()V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->code_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearCode()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->code_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->code_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$5300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final hasCode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$5400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->hasCode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->setCode(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public final setCode(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->code_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse$Builder;->onChanged()V

    return-object p0
.end method
