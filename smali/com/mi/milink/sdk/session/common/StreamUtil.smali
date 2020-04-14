.class public Lcom/mi/milink/sdk/session/common/StreamUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/session/common/StreamUtil$GetAccountAdapter;
    }
.end annotation


# static fields
.field private static final B2K_FOR_HS:Ljava/lang/String; = "4N9FcL47REBDdCHL"

.field private static final B2_FOR_HS:Ljava/lang/String; = "bsJ0RccDL4JvKAR660A6wzHXxRKRXWPBMowLR4m7mWg="

.field private static final BUSI_CONTROL_NO_COMPRESS:I = 0x0

.field private static final BUSI_CONTROL_ZLIB_COMPRESS:I = 0x1

.field private static final CLASSTAG:Ljava/lang/String; = "StreamUtil"

.field private static final DEFAULT_COMPRESS_LEN:I = 0x200

.field private static final GLOBAL_PUSH_FLAG_MASK:I = 0x1000

.field public static final MNS:[B

.field public static final MNS_ENCODE_ANONYMOUS_B2_TOKEN:B = 0x8t

.field public static final MNS_ENCODE_ANONYMOUS_FAST_LOGIN:B = 0x7t

.field public static final MNS_ENCODE_B2_TOKEN:B = 0x2t

.field public static final MNS_ENCODE_B2_TOKEN_FOR_HS:B = 0x5t

.field public static final MNS_ENCODE_CHANNEL_B2_TOKEN:B = 0xat

.field public static final MNS_ENCODE_CHANNEL_FAST_LOGIN:B = 0x9t

.field public static final MNS_ENCODE_FAST_LOGIN:B = 0x3t

.field public static final MNS_ENCODE_NONE:B = 0x0t

.field private static final NEED_PUSH_ACK_MASK:I = 0x1

.field private static final NO_NEED_RESPONSE_MASK:I = 0x10

.field private static final PING_MASK:I = 0x100

.field private static final QUA_HEAD:Ljava/lang/String; = "v1-"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mi/milink/sdk/session/common/StreamUtil;->MNS:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6dt
        0x6ct
        0x70t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decrypt([B[BBLcom/mi/milink/sdk/account/IAccount;)[B
    .locals 5

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    :try_start_0
    instance-of v0, p3, Lcom/mi/milink/sdk/account/MiAccount;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getSSecurity()Ljava/lang/String;

    move-result-object v1

    const-string v0, "utf-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isMiliaoApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isForumApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isGameCenterApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isXiaoMiPushApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isSupportApp()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :cond_2
    const-string v2, "StreamUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MNS_ENCODE_FAST_LOGIN ssecurity key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->decrypt([B[B)[B

    move-result-object p0

    goto :goto_0

    :pswitch_2
    instance-of v0, p3, Lcom/mi/milink/sdk/account/AnonymousAccount;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getPrivacyKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->decrypt([B[B)[B

    move-result-object p0

    goto :goto_0

    :pswitch_3
    instance-of v0, p3, Lcom/mi/milink/sdk/account/ChannelAccount;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getPrivacyKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->decrypt([B[B)[B

    move-result-object p0

    goto :goto_0

    :pswitch_4
    new-instance v1, Ljava/lang/String;

    const-string v0, "UTF-8"

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getOldB2Token()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getB2Token()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getB2Security()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :cond_3
    :goto_1
    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->decrypt([B[B)[B

    move-result-object p0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getOldB2Security()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    :pswitch_5
    const-string v0, "4N9FcL47REBDdCHL"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->decrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static encrypt([BBLcom/mi/milink/sdk/account/IAccount;)[B
    .locals 4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    :try_start_0
    instance-of v0, p2, Lcom/mi/milink/sdk/account/MiAccount;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mi/milink/sdk/account/IAccount;->getSSecurity()Ljava/lang/String;

    move-result-object v1

    const-string v0, "utf-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isMiliaoApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isForumApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isGameCenterApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isXiaoMiPushApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isSupportApp()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    :cond_2
    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->encrypt([B[B)[B

    move-result-object p0

    goto :goto_0

    :pswitch_2
    instance-of v0, p2, Lcom/mi/milink/sdk/account/AnonymousAccount;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/mi/milink/sdk/account/IAccount;->getSSecurity()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->encryptRSA([BLjava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_3
    :pswitch_3
    instance-of v0, p2, Lcom/mi/milink/sdk/account/ChannelAccount;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mi/milink/sdk/account/IAccount;->getSSecurity()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreamUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ssecurity = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->encryptRSA([BLjava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/mi/milink/sdk/account/IAccount;->getB2Security()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StreamUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "b2Security = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->encrypt([B[B)[B

    move-result-object p0

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "4N9FcL47REBDdCHL"

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mi/milink/sdk/util/crypt/Cryptor;->encrypt([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getDownPacket(Ljava/lang/String;[BLcom/mi/milink/sdk/session/common/StreamUtil$GetAccountAdapter;)Lcom/mi/milink/sdk/aidl/PacketData;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "StreamUtil"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recv data: len="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/base/data/Convert;->readByte(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    sget-object v4, Lcom/mi/milink/sdk/session/common/StreamUtil;->MNS:[B

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/base/data/Convert;->compare([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/base/data/Convert;->readByte(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToInt([B)I

    move-result v10

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    int-to-byte v5, v3

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/base/data/Convert;->readByte(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToInt([B)I

    move-result v11

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/base/data/Convert;->readByte(Ljava/io/ByteArrayInputStream;I)[B

    const/16 v3, 0x8

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v6, 0x8

    invoke-static {v2, v3, v4, v6}, Lcom/mi/milink/sdk/base/data/Convert;->readBytes(Ljava/io/ByteArrayInputStream;[BII)V

    invoke-static {v3}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToLong([B)J

    const/4 v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v2, v3, v4, v6}, Lcom/mi/milink/sdk/base/data/Convert;->readBytes(Ljava/io/ByteArrayInputStream;[BII)V

    invoke-static {v3}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToUshort([B)I

    move-result v3

    new-array v6, v3, [B

    const/4 v4, 0x0

    invoke-static {v2, v6, v4, v3}, Lcom/mi/milink/sdk/base/data/Convert;->readBytes(Ljava/io/ByteArrayInputStream;[BII)V

    add-int/lit8 v3, v3, 0x1c

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/mi/milink/sdk/base/data/Convert;->readByte(Ljava/io/ByteArrayInputStream;I)[B

    add-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/mi/milink/sdk/base/data/Convert;->readByte(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    add-int/lit8 v4, v3, 0x4

    invoke-static {v2}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToInt([B)I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "down stream packet: seq="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", encodeType="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ", flag="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/mi/milink/sdk/session/common/StreamUtil$GetAccountAdapter;->getAccount(I)Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v2

    and-int/lit16 v7, v11, 0x100

    const/16 v8, 0x100

    if-ne v7, v8, :cond_2

    new-instance v2, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    const-string v3, "milink.ping"

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    sub-int v7, v10, v4

    new-array v7, v7, [B

    const/4 v8, 0x0

    sub-int v12, v10, v4

    move-object/from16 v0, p1

    invoke-static {v0, v4, v7, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v7, v6, v5, v2}, Lcom/mi/milink/sdk/session/common/StreamUtil;->decrypt([B[BBLcom/mi/milink/sdk/account/IAccount;)[B

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->parseFrom([B)Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;

    move-result-object v2

    move-object v8, v2

    :goto_1
    if-nez v8, :cond_4

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    const-string v2, "decrypt error, down == null !!!"

    invoke-static {v9, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "decrypt error stream:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v5, 0x1f4000

    invoke-static {v7, v5}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToHexStr([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v4

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v5, "parser downstream error"

    invoke-static {v9, v5, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "error stream:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v5, 0x1f4000

    invoke-static {v7, v5}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToHexStr([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getServiceCmd()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mnscode:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMnsCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", busicode:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getBusiCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", cmd="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v4}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getExtra()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo;->hasHasClientInfo()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cmd="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasClientInfo ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo;->getHasClientInfo()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$ExtraInfo;->getHasClientInfo()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setHasClientInfo(Z)V

    :goto_2
    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getBusiBuff()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->hasBusiControl()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getBusiControl()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;->getCompFlag()I

    move-result v6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "hasBusiContro, compFlag= "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    if-ne v6, v12, :cond_5

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/mi/milink/sdk/util/compress/CompressionFactory;->createCompression(I)Lcom/mi/milink/sdk/util/compress/ICompression;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v12

    invoke-interface {v6, v12}, Lcom/mi/milink/sdk/util/compress/ICompression;->decompress([B)[B

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "len of decompress is "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    array-length v12, v6

    int-to-long v12, v12

    invoke-virtual {v5}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;->getLenBeforeComp()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_7

    invoke-static {v6}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    :cond_5
    :goto_3
    const-string v5, "milink.push"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setHasClientInfo(Z)V

    goto :goto_2

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "len of decompress is not equal origin len, origin len="

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;->getLenBeforeComp()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v5, "hasBusiContro = false"

    invoke-static {v9, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v5}, Lcom/mi/milink/sdk/aidl/PacketData;->setIsPushPacket(Z)V

    invoke-static {v2}, Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;->getPushdata()Lcom/google/protobuf/ByteString;
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :try_start_2
    invoke-virtual {v5}, Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;->getCmd()Ljava/lang/String;

    move-result-object v7

    and-int/lit8 v2, v11, 0x1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_b

    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getSeq()I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    :goto_4
    move v3, v2

    :goto_5
    if-nez v6, :cond_a

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v4, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v4, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v4, v7}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getMnsCode()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setMnsCode(I)V

    invoke-virtual {v8}, Lcom/mi/milink/sdk/proto/DownstreamPacketProto$DownstreamPacket;->getBusiCode()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setBusiCode(I)V

    invoke-virtual {v4, v10}, Lcom/mi/milink/sdk/aidl/PacketData;->setResponseSize(I)V

    move-object v2, v4

    goto/16 :goto_0

    :catch_1
    move-exception v5

    move-object v6, v2

    :goto_7
    const-string v2, "parser pushdata error"

    invoke-static {v9, v2, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    goto :goto_6

    :catch_2
    move-exception v2

    move-object v5, v2

    goto :goto_7

    :cond_b
    move v2, v3

    goto :goto_4

    :cond_c
    move-object v6, v2

    goto :goto_5
.end method

.method public static getQua(Lcom/mi/milink/sdk/account/IAccount;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v1-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getAppId()I

    move-result v1

    invoke-static {v1}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getPlatformName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getAppId()I

    move-result v1

    invoke-static {v1}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getAppId()I

    move-result v1

    invoke-static {v1}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getAppId()I

    move-result v1

    invoke-static {v1}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/account/IAccount;->getAppId()I

    move-result v1

    invoke-static {v1}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLanguageCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomString(I)Ljava/lang/String;
    .locals 5

    const-string v1, "abcdefghijklmnopqrstuvwxyz0123456789"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUpStream(Ljava/lang/String;Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/account/IAccount;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;
    .locals 8

    const/4 v7, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "StreamUtil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->newBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setSeq(I)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getAppId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setAppId(I)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->needClientInfo()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Lcom/mi/milink/sdk/session/common/StreamUtil;->getQua(Lcom/mi/milink/sdk/account/IAccount;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send packet, cmd="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " qua="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " encodeType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getInstance()Lcom/mi/milink/sdk/base/os/info/DeviceDash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getDeviceSimplifiedInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setDeviceInfo(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_0
    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setUa(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :goto_0
    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setServiceCmd(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mi/milink/sdk/data/Const;->isMnsCmd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;->newBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    move-result-object v3

    array-length v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "origin busibuff.size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x200

    if-le v4, v5, :cond_1

    invoke-static {v7}, Lcom/mi/milink/sdk/util/compress/CompressionFactory;->createCompression(I)Lcom/mi/milink/sdk/util/compress/ICompression;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/mi/milink/sdk/util/compress/ICompression;->compress([B)[B

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "after zlib compress, busibuff.size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->setCompFlag(I)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->setLenBeforeComp(J)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    :cond_1
    invoke-virtual {v3, v7}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->setIsSupportComp(Z)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl$Builder;->build()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setBusiControl(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$BusiControl;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_2
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setBusiBuff(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setMiUid(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setMiUin(J)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->needClientInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;->newBuilder()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/mi/milink/sdk/account/IAccount;->getServiceToken()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    new-array v0, v0, [B

    :try_start_0
    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->setKey(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->setType(I)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo$Builder;->build()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setToken(Lcom/mi/milink/sdk/proto/UpstreamPacketProto$TokenInfo;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->build()Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "send packet don\'t need qua and deviceInfo, seq="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cmd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setMiUin(J)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    const-string v0, "0"

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;->setMiUid(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket$Builder;

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static isNoNeedResponseFlag(I)Z
    .locals 2

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPingFlag(I)Z
    .locals 2

    and-int/lit16 v0, p0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toUpBytes(Ljava/lang/String;Lcom/mi/milink/sdk/aidl/PacketData;ZBLcom/mi/milink/sdk/account/IAccount;)[B
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "StreamUtil"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Lcom/mi/milink/sdk/session/common/StreamUtil;->MNS:[B

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMiLinkProtocolVersion()B

    move-result v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v6, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-static {v1}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToInt([B)I

    move-result v1

    if-eqz p2, :cond_0

    or-int/lit16 v1, v1, 0x100

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->needResponse()Z

    move-result v2

    if-nez v2, :cond_1

    or-int/lit8 v1, v1, 0x10

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getGlobalPushFlag()Z

    move-result v2

    if-eqz v2, :cond_9

    or-int/lit16 v1, v1, 0x1000

    move v4, v1

    :goto_0
    invoke-static {v4}, Lcom/mi/milink/sdk/base/data/Convert;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p4}, Lcom/mi/milink/sdk/account/IAccount;->getAppId()I

    move-result v1

    invoke-static {v1}, Lcom/mi/milink/sdk/base/data/Convert;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-wide/16 v2, 0x0

    invoke-virtual {p4}, Lcom/mi/milink/sdk/account/IAccount;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p4}, Lcom/mi/milink/sdk/account/IAccount;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_2
    invoke-static {v2, v3}, Lcom/mi/milink/sdk/base/data/Convert;->longToBytes(J)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    packed-switch p3, :pswitch_data_0

    :cond_3
    :pswitch_0
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_8

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    array-length v2, v1

    int-to-short v2, v2

    invoke-static {v2}, Lcom/mi/milink/sdk/base/data/Convert;->shortToBytes(S)[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_3
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mi/milink/sdk/base/data/Convert;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v1

    invoke-static {v1}, Lcom/mi/milink/sdk/base/data/Convert;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_4

    if-nez p2, :cond_7

    invoke-static {p0, p1, p3, p4}, Lcom/mi/milink/sdk/session/common/StreamUtil;->getUpStream(Ljava/lang/String;Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/account/IAccount;)Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/UpstreamPacketProto$UpstreamPacket;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, p3, p4}, Lcom/mi/milink/sdk/session/common/StreamUtil;->encrypt([BBLcom/mi/milink/sdk/account/IAccount;)[B

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_4
    :goto_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v2}, Lcom/mi/milink/sdk/base/data/Convert;->intToBytes(I)[B

    move-result-object v2

    const/4 v3, 0x4

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    aput-byte v6, v1, v3

    const/4 v3, 0x5

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    aput-byte v6, v1, v3

    const/4 v3, 0x6

    const/4 v6, 0x2

    aget-byte v6, v2, v6

    aput-byte v6, v1, v3

    const/4 v3, 0x7

    const/4 v6, 0x3

    aget-byte v2, v2, v6

    aput-byte v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "up stream packet: seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isPing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    :goto_5
    return-object v0

    :pswitch_1
    invoke-virtual {p4}, Lcom/mi/milink/sdk/account/IAccount;->getServiceToken()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->needClientInfo()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p4}, Lcom/mi/milink/sdk/account/IAccount;->getB2Token()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_3
    const-string v1, "bsJ0RccDL4JvKAR660A6wzHXxRKRXWPBMowLR4m7mWg="

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mi/milink/sdk/base/data/Convert;->shortToBytes(S)[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const-string v2, "byte error"

    invoke-static {v5, v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    const/4 v1, 0x4

    :try_start_1
    invoke-static {v1}, Lcom/mi/milink/sdk/session/common/StreamUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_8
    move-object v1, v0

    goto/16 :goto_2

    :cond_9
    move v4, v1

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
