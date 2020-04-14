.class public final Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacketOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/UpstreamPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpstreamPacket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    }
.end annotation


# static fields
.field public static final APPID_FIELD_NUMBER:I = 0x2

.field public static final BUSIBUFF_FIELD_NUMBER:I = 0x9

.field public static final BUSICONTROL_FIELD_NUMBER:I = 0xe

.field public static final DEVICEINFO_FIELD_NUMBER:I = 0x6

.field public static final EXTRA_FIELD_NUMBER:I = 0xa

.field public static final FLAG_FIELD_NUMBER:I = 0xb

.field public static final IPINFO_FIELD_NUMBER:I = 0x8

.field public static final MIUID_FIELD_NUMBER:I = 0xf

.field public static final MIUIN_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETRYINFO_FIELD_NUMBER:I = 0xd

.field public static final SEQ_FIELD_NUMBER:I = 0x1

.field public static final SERVICECMD_FIELD_NUMBER:I = 0x5

.field public static final SESSIONID_FIELD_NUMBER:I = 0xc

.field public static final TOKEN_FIELD_NUMBER:I = 0x7

.field public static final UA_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

.field private static final serialVersionUID:J


# instance fields
.field private appId_:I

.field private bitField0_:I

.field private busiBuff_:Lcom/google/protobuf/ByteString;

.field private busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

.field private deviceInfo_:Lcom/google/protobuf/ByteString;

.field private extra_:Lcom/google/protobuf/ByteString;

.field private flag_:I

.field private ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private miUid_:Ljava/lang/Object;

.field private miUin_:J

.field private retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

.field private seq_:I

.field private serviceCmd_:Ljava/lang/Object;

.field private sessionId_:I

.field private token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

.field private ua_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$1;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$1;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;-><init>(Z)V

    sput-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->defaultInstance:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    const/4 v0, 0x0

    move v3, v0

    :cond_0
    :goto_0
    if-nez v3, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v5, p2, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_0
    move v3, v4

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->seq_:I
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

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->appId_:I
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
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUin_:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ua_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->serviceCmd_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->deviceInfo_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    :sswitch_7
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;->toBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    :cond_1
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    goto/16 :goto_0

    :sswitch_8
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;->toBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_2
    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    :cond_2
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    goto/16 :goto_0

    :sswitch_9
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_0

    :sswitch_b
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->flag_:I

    goto/16 :goto_0

    :sswitch_c
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->sessionId_:I

    goto/16 :goto_0

    :sswitch_d
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;->toBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_3
    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    :cond_3
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    goto/16 :goto_0

    :sswitch_e
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;->toBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_4
    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    :cond_4
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUid_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->makeExtensionsImmutable()V

    return-void

    :cond_6
    move-object v1, v2

    goto :goto_4

    :cond_7
    move-object v1, v2

    goto :goto_3

    :cond_8
    move-object v1, v2

    goto/16 :goto_2

    :cond_9
    move-object v1, v2

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/milink/sdk/proto/UpstreamPacketProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/UpstreamPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ua_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ua_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->serviceCmd_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->serviceCmd_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->deviceInfo_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->flag_:I

    return p1
.end method

.method static synthetic access$1802(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->sessionId_:I

    return p1
.end method

.method static synthetic access$1902(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->seq_:I

    return p1
.end method

.method static synthetic access$802(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->appId_:I

    return p1
.end method

.method static synthetic access$902(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUin_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->defaultInstance:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->seq_:I

    iput v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->appId_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUin_:J

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ua_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->serviceCmd_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->deviceInfo_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    iput v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->flag_:I

    iput v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->sessionId_:I

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;->getDefaultInstance()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;->getDefaultInstance()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUid_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->access$300()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->newBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method


# virtual methods
.method public final getAppId()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->appId_:I

    return v0
.end method

.method public final getBusiBuff()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getBusiControl()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    return-object v0
.end method

.method public final getBusiControlOrBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControlOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->defaultInstance:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    return-object v0
.end method

.method public final getDeviceInfo()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->deviceInfo_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getExtra()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getFlag()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->flag_:I

    return v0
.end method

.method public final getIpInfo()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public final getIpInfoOrBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    return-object v0
.end method

.method public final getMiUid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getMiUidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getMiUin()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUin_:J

    return-wide v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getRetryInfo()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    return-object v0
.end method

.method public final getRetryInfoOrBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    return-object v0
.end method

.method public final getSeq()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->seq_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->seq_:I

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->appId_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUin_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getUaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getServiceCmdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->deviceInfo_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    iget v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->flag_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    iget v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->sessionId_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    const/16 v1, 0xf

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getMiUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public final getServiceCmd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->serviceCmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->serviceCmd_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getServiceCmdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->serviceCmd_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->serviceCmd_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSessionId()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->sessionId_:I

    return v0
.end method

.method public final getToken()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    return-object v0
.end method

.method public final getTokenOrBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    return-object v0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ua_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ua_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getUaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ua_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ua_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasAppId()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method public final hasBusiBuff()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method public final hasBusiControl()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasDeviceInfo()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method public final hasExtra()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method public final hasFlag()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method public final hasIpInfo()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method public final hasMiUid()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMiUin()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method public final hasRetryInfo()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSeq()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasServiceCmd()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method public final hasSessionId()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasToken()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method public final hasUa()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

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

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    const-class v2, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->newBuilderForType()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->newBuilderForType()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->newBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/UpstreamPacketProto$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->toBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->toBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->newBuilder(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getSerializedSize()I

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->seq_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->appId_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->miUin_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_2
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getUaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getServiceCmdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->deviceInfo_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->token_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_6
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->ipInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$ClientIpInfo;

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_7
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiBuff_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_8
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->extra_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_9
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->flag_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_a
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    iget v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->sessionId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_b
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->retryInfo_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$RetryInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_c
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->busiControl_:Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_d
    iget v0, p0, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    const/16 v0, 0xf

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getMiUidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_e
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
