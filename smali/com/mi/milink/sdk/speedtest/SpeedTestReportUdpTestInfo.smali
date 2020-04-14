.class public Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final KEY_U_APN:Ljava/lang/String; = "u_apn"

.field private static final KEY_U_B_RTT:Ljava/lang/String; = "u_b_rtt"

.field private static final KEY_U_B_STATUS:Ljava/lang/String; = "u_b_status"

.field private static final KEY_U_CLIENT_IP:Ljava/lang/String; = "u_cip"

.field private static final KEY_U_CLIENT_ISP:Ljava/lang/String; = "u_net_type"

.field private static final KEY_U_PORT:Ljava/lang/String; = "u_port"

.field private static final KEY_U_READ_TIMEOUT:Ljava/lang/String; = "u_read_timeout"

.field private static final KEY_U_SERVER_IP:Ljava/lang/String; = "u_sip"

.field private static final KEY_U_S_RTT:Ljava/lang/String; = "u_s_rtt"

.field private static final KEY_U_S_STATUS:Ljava/lang/String; = "u_s_status"

.field private static final serialVersionUID:J = -0x67ef852fcba65bc2L


# instance fields
.field public apn:Ljava/lang/String;

.field public bigRtt:J

.field public bigStatus:I

.field public clientIp:Ljava/lang/String;

.field public clientIsp:Ljava/lang/String;

.field public port:I

.field public readTimeout:I

.field public serverIp:Ljava/lang/String;

.field public smallRtt:J

.field public smallStatus:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->readTimeout:I

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->port:I

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigStatus:I

    iput-wide v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigRtt:J

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallStatus:I

    iput-wide v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallRtt:J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->clientIp:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientIsp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->clientIsp:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->getApnName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->apn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "u_cip"

    iget-object v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->clientIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "u_read_timeout"

    iget v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->readTimeout:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "u_net_type"

    iget-object v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->clientIsp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "u_apn"

    iget-object v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "u_sip"

    iget-object v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->serverIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "u_port"

    iget v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->port:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "u_b_status"

    iget v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "u_b_rtt"

    iget-wide v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->bigRtt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "u_s_status"

    iget v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "u_s_rtt"

    iget-wide v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->smallRtt:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/speedtest/SpeedTestReportUdpTestInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
