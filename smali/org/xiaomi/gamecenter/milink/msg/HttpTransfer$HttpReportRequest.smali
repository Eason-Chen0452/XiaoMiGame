.class public final Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpReportRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLIENTIP_FIELD_NUMBER:I = 0x4

.field public static final CODE_FIELD_NUMBER:I = 0x2

.field public static final COSTTIME_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUESTINFO_FIELD_NUMBER:I = 0x6

.field public static final RESPONSEINFO_FIELD_NUMBER:I = 0x7

.field public static final SERVERIP_FIELD_NUMBER:I = 0x5

.field public static final USERID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientIp_:I

.field private code_:I

.field private costTime_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

.field private responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

.field private serverIp_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private userId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/j;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/j;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;-><init>(Z)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedSerializedSize:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    const/4 v0, 0x0

    move v3, v0

    :cond_0
    :goto_0
    if-nez v3, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v5, p2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_0
    move v3, v4

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->userId_:J
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->code_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    :try_start_4
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->costTime_:J

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->clientIp_:I

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->serverIp_:I

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    :cond_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    goto/16 :goto_0

    :sswitch_7
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_2
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    :cond_2
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->makeExtensionsImmutable()V

    return-void

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$4300()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4502(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;J)J
    .locals 1

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->userId_:J

    return-wide p1
.end method

.method static synthetic access$4602(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->code_:I

    return p1
.end method

.method static synthetic access$4702(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;J)J
    .locals 1

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->costTime_:J

    return-wide p1
.end method

.method static synthetic access$4802(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->clientIp_:I

    return p1
.end method

.method static synthetic access$4902(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->serverIp_:I

    return p1
.end method

.method static synthetic access$5002(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    return-object p1
.end method

.method static synthetic access$5102(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    return-object p1
.end method

.method static synthetic access$5202(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$3800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->userId_:J

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->code_:I

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->costTime_:J

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->clientIp_:I

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->serverIp_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    return-void
.end method

.method public static newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->access$4100()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method


# virtual methods
.method public final getClientIp()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->clientIp_:I

    return v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->code_:I

    return v0
.end method

.method public final getCostTime()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->costTime_:J

    return-wide v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getRequestInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public final getRequestInfoOrBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public final getResponseInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    return-object v0
.end method

.method public final getResponseInfoOrBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->userId_:J

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->code_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->costTime_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->clientIp_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->serverIp_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getServerIp()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->serverIp_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUserId()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->userId_:J

    return-wide v0
.end method

.method public final hasClientIp()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

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

.method public final hasCode()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

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

.method public final hasCostTime()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

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

.method public final hasRequestInfo()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

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

.method public final hasResponseInfo()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

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

.method public final hasServerIp()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

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

.method public final hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$3900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasUserId()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasCode()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasCostTime()Z

    move-result v2

    if-nez v2, :cond_4

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasClientIp()Z

    move-result v2

    if-nez v2, :cond_5

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasServerIp()Z

    move-result v2

    if-nez v2, :cond_6

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasRequestInfo()Z

    move-result v2

    if-nez v2, :cond_7

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getRequestInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_8

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasResponseInfo()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getResponseInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_9

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_9
    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/i;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    invoke-static {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getSerializedSize()I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->userId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->code_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->costTime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_2
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->clientIp_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->serverIp_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_5
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_6
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
