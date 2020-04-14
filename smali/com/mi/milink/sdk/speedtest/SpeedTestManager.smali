.class public Lcom/mi/milink/sdk/speedtest/SpeedTestManager;
.super Ljava/lang/Object;


# static fields
.field private static final BIG_UDP_CONTENT_LENGTH:S = 0x400s

.field private static final SMALL_UDP_CONTENT_LENGTH:S = 0x100s

.field private static final SOCKET_RETRY_TIMES:I = 0x3

.field private static final STATE_DONE:I = 0x2

.field private static final STATE_IN_PROGRESS:I = 0x1

.field private static final STATE_NOT_DONE:I = 0x0

.field private static final STATUS_FAILURE:I = 0x1

.field private static final STATUS_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SpeedTestManager"

.field private static final TCP_PING_LENGTH:I = 0x24

.field private static final UDP_PACKAGE_HEAD_LENGTH:I = 0x8

.field private static sInstance:Lcom/mi/milink/sdk/speedtest/SpeedTestManager;


# instance fields
.field private volatile mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->sInstance:Lcom/mi/milink/sdk/speedtest/SpeedTestManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milink/sdk/speedtest/SpeedTestManager;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->testServerForTcp(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/milink/sdk/speedtest/SpeedTestManager;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->testServerForUdp(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mi/milink/sdk/speedtest/SpeedTestManager;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->doPostData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private buildTcpPingPackage(I)[B
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v0}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v1, "milink.ping"

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    const-string v1, "[%s]"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "SpeedTestManager"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v2

    invoke-static {v1, v0, v5, v4, v2}, Lcom/mi/milink/sdk/session/common/StreamUtil;->toUpBytes(Ljava/lang/String;Lcom/mi/milink/sdk/aidl/PacketData;ZBLcom/mi/milink/sdk/account/IAccount;)[B

    move-result-object v0

    return-object v0
.end method

.method private buildUdpPingPackage(SS)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    const-string v0, "png\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {p1}, Lcom/mi/milink/sdk/base/data/Convert;->shortToBytes(S)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {p2}, Lcom/mi/milink/sdk/base/data/Convert;->shortToBytes(S)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v2, p1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    rem-int/lit16 v3, v0, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private doPostData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->toJson(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v6}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "SpeedTestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ThreadId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", SpeedTest doPostData: data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "data"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isTestChannel()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;

    invoke-direct {v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;-><init>()V

    const-string v2, "http://d.g.mi.com/tr.do\u200b"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4, v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;)Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;

    move-result-object v2

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v3

    const-string v4, "tr.do"

    iget v0, v0, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;->compressLength:I

    invoke-virtual {v3, v4, v0}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    if-eqz v2, :cond_1

    const-string v0, "SpeedTestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SpeedTest doPostData use host report succeed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->mState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "SpeedTestManager"

    const-string v2, "SpeedTest doPostData use host report failed"

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->mState:I

    :cond_1
    :try_start_1
    new-instance v5, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;

    invoke-direct {v5}, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;-><init>()V

    const-string v0, "http://120.92.24.141/tr.do\u200b"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "d.g.mi.com"

    invoke-static/range {v0 .. v5}, Lcom/mi/milink/sdk/base/os/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;)Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v1

    const-string v2, "tr.do"

    iget v3, v5, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;->compressLength:I

    invoke-virtual {v1, v2, v3}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    const-string v1, "SpeedTestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SpeedTest doPostData use ip report succeed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->mState:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "SpeedTestManager"

    const-string v1, "SpeedTest doPostData use ip report failed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->mState:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/mi/milink/sdk/speedtest/SpeedTestManager;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->sInstance:Lcom/mi/milink/sdk/speedtest/SpeedTestManager;

    return-object v0
.end method

.method private getSpeedTestAppId()I
    .locals 2

    const v0, 0x13880

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private testServerForTcp(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "SpeedTestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start speed test tcp, ips="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-direct {p0, v4, v5}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->testServerForTcpByIpPort(Ljava/lang/String;I)Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private testServerForTcpByIpPort(Ljava/lang/String;I)Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;
    .locals 12

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->buildTcpPingPackage(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "SpeedTestManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "speed test tcp, IP = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;

    invoke-direct {v0}, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;-><init>()V

    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    :try_start_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-direct {v3, v5, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/config/ConfigManager;->getConnetionTimeout()I

    move-result v5

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/milink/sdk/config/ConfigManager;->getRequestTimeout()I

    move-result v6

    iput v5, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->connectTimeout:I

    iput v6, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->readTimeout:I

    iput-object p1, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->serverIp:Ljava/lang/String;

    iput p2, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->port:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v3, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    iput-wide v8, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->connectTime:J

    const-string v3, "SpeedTestManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "tcp connectTime="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->connectTime:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    const/16 v1, 0x100

    new-array v5, v1, [B

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    move v1, v2

    move v3, v2

    :goto_0
    rsub-int/lit8 v2, v3, 0x24

    invoke-virtual {v8, v5, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v3

    const/16 v3, 0x24

    if-ge v2, v3, :cond_0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_4

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->status:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    iput-wide v2, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->rtt:J
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "SpeedTestManager"

    const-string v2, "testServerForTcpByIpPort , close socket fail"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v1, 0x1

    :try_start_2
    iput v1, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->status:I

    const-string v1, "SpeedTestManager"

    const-string v2, "testServerForTcpByIpPort UnknownHostException"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v1, "SpeedTestManager"

    const-string v2, "testServerForTcpByIpPort , close socket fail"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v1

    const/4 v1, 0x1

    :try_start_4
    iput v1, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->status:I

    const-string v1, "SpeedTestManager"

    const-string v2, "testServerForTcpByIpPort SocketTimeoutException"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    const-string v1, "SpeedTestManager"

    const-string v2, "testServerForTcpByIpPort , close socket fail"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v1

    const/4 v2, 0x1

    :try_start_6
    iput v2, v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->status:I

    const-string v2, "SpeedTestManager"

    const-string v3, "testServerForTcpByIpPort"

    invoke-static {v2, v3, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    :catch_6
    move-exception v1

    const-string v1, "SpeedTestManager"

    const-string v2, "testServerForTcpByIpPort , close socket fail"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :goto_2
    throw v0

    :catch_7
    move-exception v1

    const-string v1, "SpeedTestManager"

    const-string v2, "testServerForTcpByIpPort , close socket fail"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "SpeedTestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "speed test tcp, ping = null, IP = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "SpeedTestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "speed test tcp, network.is unavailable, IP = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move v3, v2

    goto/16 :goto_0
.end method

.method private testServerForUdp(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "SpeedTestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start speed test udp, ips="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :try_start_0
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-direct {p0, v4, v5}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->testServerForUdpByIpPort(Ljava/lang/String;I)Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private testServerForUdpByIpPort(Ljava/lang/String;I)Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;
    .locals 12

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-lez p2, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x100

    invoke-direct {p0, v1, v2}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->buildUdpPingPackage(SS)[B

    move-result-object v3

    const/16 v1, 0x400

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->buildUdpPingPackage(SS)[B

    move-result-object v4

    if-nez v3, :cond_0

    if-eqz v4, :cond_6

    :cond_0
    const-string v1, "SpeedTestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "speed test udp, IP = "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " port = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;

    invoke-direct {v1}, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;-><init>()V

    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    invoke-direct {v2}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    iput-object p1, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->serverIp:Ljava/lang/String;

    iput p2, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->port:I

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/ConfigManager;->getRequestTimeout()I

    move-result v0

    iput v0, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->readTimeout:I

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v0, 0x408

    new-array v6, v0, [B

    new-instance v7, Ljava/net/DatagramPacket;

    const/4 v0, 0x0

    const/16 v8, 0x108

    invoke-direct {v7, v6, v0, v8}, Ljava/net/DatagramPacket;-><init>([BII)V

    if-eqz v3, :cond_1

    new-instance v0, Ljava/net/DatagramPacket;

    array-length v8, v3

    invoke-direct {v0, v3, v8, v5, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/4 v0, 0x0

    iput v0, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallStatus:I

    invoke-virtual {v2, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    iput-wide v8, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallRtt:J
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    :try_start_3
    new-instance v0, Ljava/net/DatagramPacket;

    array-length v3, v4

    invoke-direct {v0, v4, v3, v5, p2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/4 v3, 0x0

    const/16 v4, 0x408

    invoke-virtual {v7, v6, v3, v4}, Ljava/net/DatagramPacket;->setData([BII)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    const/4 v0, 0x0

    iput v0, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigStatus:I

    invoke-virtual {v2, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    iput-wide v4, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigRtt:J
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    move-object v0, v1

    :cond_3
    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_5
    iput v0, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallStatus:I

    const-string v0, "SpeedTestManager"

    const-string v3, "testServerForUdpByIpPort small SocketTimeoutException"

    invoke-static {v0, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    :goto_3
    const/4 v2, 0x1

    :try_start_6
    iput v2, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallStatus:I

    const/4 v2, 0x1

    iput v2, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigStatus:I

    const-string v2, "SpeedTestManager"

    const-string v3, "testServerForUdpByIpPort UnknownHostException"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v3, 0x1

    :try_start_7
    iput v3, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallStatus:I

    const-string v3, "SpeedTestManager"

    const-string v8, "testServerForUdpByIpPort small"

    invoke-static {v3, v8, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_3
    move-exception v0

    :goto_4
    const/4 v0, 0x1

    :try_start_8
    iput v0, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallStatus:I

    const/4 v0, 0x1

    iput v0, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigStatus:I

    const-string v0, "SpeedTestManager"

    const-string v3, "testServerForUdpByIpPort SocketException"

    invoke-static {v0, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    move-object v0, v1

    goto :goto_2

    :catch_4
    move-exception v0

    const/4 v0, 0x1

    :try_start_9
    iput v0, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigStatus:I

    const-string v0, "SpeedTestManager"

    const-string v3, "testServerForUdpByIpPort big SocketTimeoutException"

    invoke-static {v0, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_5
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_4
    throw v1

    :catch_5
    move-exception v0

    const/4 v3, 0x1

    :try_start_a
    iput v3, v1, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigStatus:I

    const-string v3, "SpeedTestManager"

    const-string v4, "testServerForUdpByIpPort big"

    invoke-static {v3, v4, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    const-string v1, "SpeedTestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "speed test udp, package = null, IP = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const-string v1, "SpeedTestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "speed test udp, network is unavailable, IP = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " port = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v2, v0

    goto :goto_4

    :catch_7
    move-exception v2

    goto/16 :goto_3
.end method

.method private toJson(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v1, ""

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "appid"

    invoke-direct {p0}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->getSpeedTestAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "vid"

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cversion"

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mversion"

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMiLinkVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sversion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Android"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "did"

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getInstance()Lcom/mi/milink/sdk/base/os/info/DeviceDash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mi/milink/sdk/util/CommonUtils;->miuiSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dinfo"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "channel"

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "data"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "SpeedTestManager"

    const-string v3, "toJson"

    invoke-static {v2, v3, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SpeedTestManager"

    const-string v1, "speed test start, app not login"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "SpeedTestManager"

    const-string v1, "speed test start"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->mState:I

    if-ne v0, v2, :cond_1

    const-string v0, "SpeedTestManager"

    const-string v1, "speed test is in progress"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestManager;->mState:I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mi/milink/sdk/speedtest/SpeedTestManager$1;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/speedtest/SpeedTestManager$1;-><init>(Lcom/mi/milink/sdk/speedtest/SpeedTestManager;)V

    const-string v2, "MilinkSpeedTest"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
