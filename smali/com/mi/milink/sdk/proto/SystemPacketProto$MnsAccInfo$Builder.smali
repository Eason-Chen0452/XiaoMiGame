.class public final Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;",
        ">;",
        "Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private accFlag_:I

.field private accId_:J

.field private accIp_:I

.field private accPort_:I

.field private bitField0_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10100()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->create()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$9800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->access$10300()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V

    iget v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget-wide v4, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accId_:J

    invoke-static {v2, v4, v5}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->access$10502(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accIp_:I

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->access$10602(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accPort_:I

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->access$10702(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accFlag_:I

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->access$10802(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;I)I

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->access$10902(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;I)I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->onBuilt()V

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accId_:J

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    iput v2, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accIp_:I

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    iput v2, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accPort_:I

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    iput v2, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accFlag_:I

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearAccFlag()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accFlag_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearAccId()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accId_:J

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearAccIp()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accIp_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearAccPort()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accPort_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->create()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAccFlag()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accFlag_:I

    return v0
.end method

.method public final getAccId()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accId_:J

    return-wide v0
.end method

.method public final getAccIp()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accIp_:I

    return v0
.end method

.method public final getAccPort()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accPort_:I

    return v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$9800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final hasAccFlag()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

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

.method public final hasAccId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasAccIp()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

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

.method public final hasAccPort()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

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

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$9900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    const-class v2, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->hasAccId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->hasAccIp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->hasAccPort()Z

    move-result v1

    if-eqz v1, :cond_0

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;
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

    invoke-virtual {p0, v2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->hasAccId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->getAccId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->setAccId(J)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->hasAccIp()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->getAccIp()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->setAccIp(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->hasAccPort()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->getAccPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->setAccPort(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->hasAccFlag()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->getAccFlag()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->setAccFlag(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public final setAccFlag(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accFlag_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAccId(J)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accId_:J

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAccIp(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accIp_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAccPort(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->accPort_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsAccInfo$Builder;->onChanged()V

    return-object p0
.end method
