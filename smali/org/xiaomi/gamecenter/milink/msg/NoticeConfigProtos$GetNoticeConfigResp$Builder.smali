.class public final Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigRespOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigRespOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfigOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private noticeConfig_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private retCode_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$10700()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;-><init>()V

    return-object v0
.end method

.method private ensureNoticeConfigIsMutable()V
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$10400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNoticeConfigFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfigOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$10900()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getNoticeConfigFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllNoticeConfig(Ljava/lang/Iterable;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;",
            ">;)",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->ensureNoticeConfigIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addNoticeConfig(ILorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->ensureNoticeConfigIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addNoticeConfig(ILorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->ensureNoticeConfigIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addNoticeConfig(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->ensureNoticeConfigIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addNoticeConfig(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->ensureNoticeConfigIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addNoticeConfigBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;
    .locals 2

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getNoticeConfigFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;

    return-object v0
.end method

.method public final addNoticeConfigBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;
    .locals 2

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getNoticeConfigFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;
    .locals 4

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/ah;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_2

    :goto_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->retCode_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11102(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;I)I

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;Ljava/util/List;)Ljava/util/List;

    :goto_1
    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11302(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onBuilt()V

    return-object v2

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->retCode_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public final clearNoticeConfig()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public final clearRetCode()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$10400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNoticeConfig(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    goto :goto_0
.end method

.method public final getNoticeConfigBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;
    .locals 1

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getNoticeConfigFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;

    return-object v0
.end method

.method public final getNoticeConfigBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getNoticeConfigFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getNoticeConfigCount()I
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getNoticeConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getNoticeConfigOrBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfigOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfigOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfigOrBuilder;

    goto :goto_0
.end method

.method public final getNoticeConfigOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfigOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->retCode_:I

    return v0
.end method

.method public final hasRetCode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$10500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->hasRetCode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getNoticeConfigCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getNoticeConfig(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;

    move-result-object v1

    if-ne p1, v1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->hasRetCode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getRetCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    :goto_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->ensureNoticeConfigIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11400()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->getNoticeConfigFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;->access$11200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public final removeNoticeConfig(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->ensureNoticeConfigIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public final setNoticeConfig(ILorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->ensureNoticeConfigIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final setNoticeConfig(ILorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->ensureNoticeConfigIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfig_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->noticeConfigBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp$Builder;->onChanged()V

    return-object p0
.end method
