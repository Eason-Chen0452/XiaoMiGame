.class public final Lcom/mi/milink/sdk/data/Const;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/data/Const$Push;,
        Lcom/mi/milink/sdk/data/Const$Event;,
        Lcom/mi/milink/sdk/data/Const$Protection;,
        Lcom/mi/milink/sdk/data/Const$IPC;,
        Lcom/mi/milink/sdk/data/Const$Tag;,
        Lcom/mi/milink/sdk/data/Const$LoginState;,
        Lcom/mi/milink/sdk/data/Const$SessionState;,
        Lcom/mi/milink/sdk/data/Const$Debug;,
        Lcom/mi/milink/sdk/data/Const$Access;,
        Lcom/mi/milink/sdk/data/Const$Extra;,
        Lcom/mi/milink/sdk/data/Const$Service;,
        Lcom/mi/milink/sdk/data/Const$ServerPort;,
        Lcom/mi/milink/sdk/data/Const$PushLogType;,
        Lcom/mi/milink/sdk/data/Const$MnsCmd;,
        Lcom/mi/milink/sdk/data/Const$InternalErrorCode;,
        Lcom/mi/milink/sdk/data/Const$MiLinkCode;
    }
.end annotation


# static fields
.field public static final DATA_ANONYMOUSWID_EXTRA_CMD:Ljava/lang/String; = "data.anonymouswid"

.field public static final DATA_CHANNEL_ANONYMOUSWID_EXTRA_CMD:Ljava/lang/String; = "data.channel.anonymouswid"

.field public static final DATA_CLIENTIP_EXTRA_CMD:Ljava/lang/String; = "data.clientip"

.field public static final DATA_EXTRA_CMD:Ljava/lang/String; = "data.extra"

.field public static final DATA_LOGLEVEL_CMD:Ljava/lang/String; = "data.loglevel"

.field public static final NONE:I = -0x80000000

.field public static final PARAM_APP_ID:Ljava/lang/String; = "appid"

.field public static final PARAM_CHANNEL:Ljava/lang/String; = "channel"

.field public static final PARAM_CLIENT_VERSION:Ljava/lang/String; = "cversion"

.field public static final PARAM_DATA:Ljava/lang/String; = "data"

.field public static final PARAM_DEVICE_ID:Ljava/lang/String; = "did"

.field public static final PARAM_DEVICE_INFO:Ljava/lang/String; = "dinfo"

.field public static final PARAM_FREQ:Ljava/lang/String; = "freq"

.field public static final PARAM_MI_LINK_VERSION:Ljava/lang/String; = "mversion"

.field public static final PARAM_PACKET_VID:Ljava/lang/String; = "vid"

.field public static final PARAM_SYSTEM_VERSION:Ljava/lang/String; = "sversion"

.field public static final SPEED_TEST_SERVER_ADDR:Ljava/lang/String; = "http://d.g.mi.com/tr.do\u200b"

.field public static final SPEED_TEST_SERVER_ADDR_IP:Ljava/lang/String; = "http://120.92.24.141/tr.do\u200b"

.field public static final STASTIC_SERVER_ADDR:Ljava/lang/String; = "https://d.g.mi.com/c.do\u200b"

.field public static final STASTIC_SERVER_ADDR_IP:Ljava/lang/String; = "http://120.92.24.141/c.do\u200b"

.field public static final STASTIC_SERVER_HOST:Ljava/lang/String; = "d.g.mi.com"

.field public static final STASTIC_ZHIBO_SERVER_ADDR:Ljava/lang/String; = "http://dzb.g.mi.com/c.do"

.field public static final STASTIC_ZHIBO_SERVER_ADDR_IP:Ljava/lang/String; = "http://dzb.g.mi.com/c.do"

.field public static final STASTIC_ZHIBO_SERVER_HOST:Ljava/lang/String; = "dzb.g.mi.com"

.field public static final TRACE_AC:Ljava/lang/String; = "ac"

.field public static final TRACE_AC_VALUE:Ljava/lang/String; = "mlink_cmd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMnsCmd(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "milink"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
