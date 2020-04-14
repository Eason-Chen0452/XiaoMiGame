.class public final Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;",
        ">;",
        "Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReqOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private ip_:Ljava/lang/Object;

.field private logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;",
            "Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;",
            "Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevelOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

.field private time_:I

.field private type_:I

.field private urgentLevel_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/PushPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2700()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->create()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getLogLevelFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;",
            "Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;",
            "Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevelOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->getLogLevel()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->getLogLevelFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->build()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->build()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/PushPacketProto$1;)V

    iget v3, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_5

    :goto_0
    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->time_:I

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->access$3102(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->access$3202(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->urgentLevel_:I

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->access$3302(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->type_:I

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->access$3402(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    or-int/lit8 v0, v0, 0x10

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->access$3502(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    :goto_2
    invoke-static {v2, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->access$3602(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;I)I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onBuilt()V

    return-object v2

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->access$3502(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clear()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clear()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clear()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clear()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->time_:I

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    iput v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->urgentLevel_:I

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    iput v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->type_:I

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    :goto_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final clearIp()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLogLevel()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final clearTime()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->time_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->type_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUrgentLevel()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->urgentLevel_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clone()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clone()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clone()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clone()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clone()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->create()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->clone()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getIpBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLogLevel()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    goto :goto_0
.end method

.method public final getLogLevelBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->getLogLevelFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;

    return-object v0
.end method

.method public final getLogLevelOrBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevelOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevelOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    goto :goto_0
.end method

.method public final getTime()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->time_:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->type_:I

    return v0
.end method

.method public final getUrgentLevel()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->urgentLevel_:I

    return v0
.end method

.method public final hasIp()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

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

.method public final hasLogLevel()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

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

.method public final hasTime()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasType()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

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

.method public final hasUrgentLevel()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto;->access$2500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    const-class v2, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
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

    invoke-virtual {p0, v2}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    instance-of v0, p1, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->hasTime()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->setTime(I)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->hasIp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->access$3200(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->hasUrgentLevel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getUrgentLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->setUrgentLevel(I)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->hasType()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->setType(I)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    :cond_4
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->hasLogLevel()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getLogLevel()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeLogLevel(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    :cond_5
    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public final mergeLogLevel(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->newBuilder(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public final setIp(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIpBytes(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->ip_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLogLevel(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;->build()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;->build()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final setLogLevel(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->logLevelBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final setTime(I)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->time_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setType(I)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->type_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUrgentLevel(I)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->bitField0_:I

    iput p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->urgentLevel_:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->onChanged()V

    return-object p0
.end method
