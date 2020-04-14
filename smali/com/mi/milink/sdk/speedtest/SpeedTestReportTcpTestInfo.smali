.class public Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final KEY_T_APN:Ljava/lang/String; = "t_apn"

.field private static final KEY_T_CLIENT_IP:Ljava/lang/String; = "t_cip"

.field private static final KEY_T_CLIENT_ISP:Ljava/lang/String; = "t_net_type"

.field private static final KEY_T_CONNECT_TIME:Ljava/lang/String; = "t_connect_time"

.field private static final KEY_T_CONNECT_TIMEOUT:Ljava/lang/String; = "t_connect_timeout"

.field private static final KEY_T_PORT:Ljava/lang/String; = "t_port"

.field private static final KEY_T_READ_TIMEOUT:Ljava/lang/String; = "t_read_timeout"

.field private static final KEY_T_RTT:Ljava/lang/String; = "t_rtt"

.field private static final KEY_T_SERVER_IP:Ljava/lang/String; = "t_sip"

.field private static final KEY_T_STATUS:Ljava/lang/String; = "t_status"

.field private static final serialVersionUID:J = -0x6f170cc4fcf15901L


# instance fields
.field public apn:Ljava/lang/String;

.field public clientIp:Ljava/lang/String;

.field public clientIsp:Ljava/lang/String;

.field public connectTime:J

.field public connectTimeout:I

.field public port:I

.field public readTimeout:I

.field public rtt:J

.field public serverIp:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->connectTimeout:I

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->readTimeout:I

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->port:I

    iput-wide v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->connectTime:J

    iput v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->status:I

    iput-wide v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->rtt:J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientIp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->clientIp:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientIsp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->clientIsp:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->getApnName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->apn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "t_cip"

    iget-object v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->clientIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "t_connect_timeout"

    iget v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->connectTimeout:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "t_read_timeout"

    iget v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->readTimeout:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "t_net_type"

    iget-object v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->clientIsp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "t_apn"

    iget-object v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "t_sip"

    iget-object v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->serverIp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "t_port"

    iget v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->port:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "t_connect_time"

    iget-wide v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->connectTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "t_status"

    iget v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "t_rtt"

    iget-wide v2, p0, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->rtt:J

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

    invoke-virtual {p0}, Lcom/mi/milink/sdk/speedtest/SpeedTestReportTcpTestInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
