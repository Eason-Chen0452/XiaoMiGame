.class public final Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoleDataReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;
    }
.end annotation


# static fields
.field public static final DEVAPPID_FIELD_NUMBER:I = 0x8

.field public static final FUID_FIELD_NUMBER:I = 0x9

.field public static final LEVEL_FIELD_NUMBER:I = 0x7

.field public static final OPENID_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROLEID_FIELD_NUMBER:I = 0x1

.field public static final ROLENAME_FIELD_NUMBER:I = 0x2

.field public static final SERVERID_FIELD_NUMBER:I = 0x3

.field public static final SERVERNAME_FIELD_NUMBER:I = 0x4

.field public static final ZONEID_FIELD_NUMBER:I = 0x5

.field public static final ZONENAME_FIELD_NUMBER:I = 0x6

.field private static final defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private devAppId_:Ljava/lang/Object;

.field private fuid_:J

.field private level_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private openId_:J

.field private roleId_:Ljava/lang/Object;

.field private roleName_:Ljava/lang/Object;

.field private serverId_:Ljava/lang/Object;

.field private serverName_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private zoneId_:Ljava/lang/Object;

.field private zoneName_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/g;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/g;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;-><init>(Z)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedSerializedSize:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v3}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleId_:Ljava/lang/Object;
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

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleName_:Ljava/lang/Object;
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
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverId_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverName_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneId_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneName_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->level_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->devAppId_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->fuid_:J

    goto/16 :goto_0

    :sswitch_a
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->openId_:J
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1102(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->level_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->level_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->devAppId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->devAppId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;J)J
    .locals 1

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->fuid_:J

    return-wide p1
.end method

.method static synthetic access$1602(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;J)J
    .locals 1

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->openId_:J

    return-wide p1
.end method

.method static synthetic access$1702(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->level_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->devAppId_:Ljava/lang/Object;

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->fuid_:J

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->openId_:J

    return-void
.end method

.method public static newBuilder()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->access$300()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    return-object v0
.end method

.method public final getDevAppId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->devAppId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->devAppId_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getDevAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->devAppId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->devAppId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getFuid()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->fuid_:J

    return-wide v0
.end method

.method public final getLevel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->level_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->level_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getLevelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->level_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->level_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getOpenId()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->openId_:J

    return-wide v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getRoleId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleId_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getRoleIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getRoleName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleName_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleName_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getRoleNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->roleName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getRoleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getRoleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getServerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getServerNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getZoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getZoneNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getLevelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getDevAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->fuid_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->openId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public final getServerId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverId_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getServerIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getServerName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverName_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverName_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getServerNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->serverName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getZoneId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneId_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getZoneIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getZoneName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneName_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneName_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getZoneNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->zoneName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final hasDevAppId()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

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

.method public final hasFuid()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

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

.method public final hasLevel()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

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

.method public final hasOpenId()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

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

.method public final hasRoleId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRoleName()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

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

.method public final hasServerId()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

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

.method public final hasServerName()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

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

.method public final hasZoneId()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

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

.method public final hasZoneName()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

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

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/f;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;
    .locals 1

    invoke-static {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

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

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getSerializedSize()I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getRoleIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getRoleNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getServerIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getServerNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getZoneIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getZoneNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getLevelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_6
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getDevAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_7
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->fuid_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_8
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->openId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_9
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
