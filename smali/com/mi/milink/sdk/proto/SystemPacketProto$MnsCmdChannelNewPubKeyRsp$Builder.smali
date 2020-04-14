.class public final Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;",
        ">;",
        "Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRspOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private pubInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$25100()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->create()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePubInfoIsMutable()V
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$24800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getPubInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    iget v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->getPubInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllPubInfo(Ljava/lang/Iterable;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            ">;)",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->ensurePubInfoIsMutable()V

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addPubInfo(ILcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->ensurePubInfoIsMutable()V

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addPubInfo(ILcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->ensurePubInfoIsMutable()V

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addPubInfo(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->ensurePubInfoIsMutable()V

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addPubInfo(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->ensurePubInfoIsMutable()V

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addPubInfoBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->getPubInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    return-object v0
.end method

.method public final addPubInfoBuilder(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->getPubInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 3

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25502(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;Ljava/util/List;)Ljava/util/List;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onBuilt()V

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25502(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public final clearPubInfo()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->create()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->clone()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$24800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getPubInfo(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    goto :goto_0
.end method

.method public final getPubInfoBuilder(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->getPubInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    return-object v0
.end method

.method public final getPubInfoBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->getPubInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPubInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getPubInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPubInfoOrBuilder(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;

    goto :goto_0
.end method

.method public final getPubInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$24900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    const-class v2, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
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

    invoke-virtual {p0, v2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25500(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25500(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    :goto_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->ensurePubInfoIsMutable()V

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-static {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25500(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25500(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25500(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25600()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->getPubInfoFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->access$25500(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public final removePubInfo(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->ensurePubInfoIsMutable()V

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public final setPubInfo(ILcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->ensurePubInfoIsMutable()V

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final setPubInfo(ILcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->ensurePubInfoIsMutable()V

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->pubInfoBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
