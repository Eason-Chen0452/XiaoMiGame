.class public final Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;",
        ">;",
        "Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReqOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

.field private type_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$13300()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->create()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$13000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getMgrInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->getMgrInfo()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->access$13500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->getMgrInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V

    iget v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->type_:I

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->access$13702(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->access$13802(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    :goto_2
    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->access$13902(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;I)I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->onBuilt()V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->access$13802(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    goto :goto_2

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->type_:I

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    :goto_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final clearMgrInfo()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final clearType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->type_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->create()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$13000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getMgrInfo()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    goto :goto_0
.end method

.method public final getMgrInfoBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->getMgrInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;

    return-object v0
.end method

.method public final getMgrInfoOrBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->type_:I

    return v0
.end method

.method public final hasMgrInfo()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

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

.method public final hasType()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$13100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    const-class v2, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->hasType()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;
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

    invoke-virtual {p0, v2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->setType(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->hasMgrInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->getMgrInfo()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeMgrInfo(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public final mergeMgrInfo(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;->newBuilder(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public final setMgrInfo(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final setMgrInfo(Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfo_:Lcom/mi/milink/sdk/proto/SystemPacketProto$SdkConnMgrInfo;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->mgrInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final setType(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->type_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->onChanged()V

    return-object p0
.end method
