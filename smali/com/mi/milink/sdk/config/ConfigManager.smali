.class public Lcom/mi/milink/sdk/config/ConfigManager;
.super Ljava/util/Observable;


# static fields
.field private static final DEFAULT_HEART_BEAT_INTERVAL:I = 0x493e0

.field private static final DEFAULT_SPEED_TEST_INTERVAL:I = 0x2932e00

.field private static final JSON_KEY_ENGINE_CONFIG_RATIO:Ljava/lang/String; = "engineConfRatio"

.field private static final JSON_KEY_HB:Ljava/lang/String; = "hb"

.field private static final JSON_KEY_INTL:Ljava/lang/String; = "intl"

.field private static final JSON_KEY_LOG_LEVEL:Ljava/lang/String; = "logLev"

.field private static final JSON_KEY_ST:Ljava/lang/String; = "st"

.field private static final JSON_KEY_STATISTICS_FACTOR:Ljava/lang/String; = "sf"

.field private static final JSON_KEY_TIP:Ljava/lang/String; = "tip"

.field private static final JSON_KEY_UIP:Ljava/lang/String; = "uip"

.field private static final MOBILE_NETWORK_CONNECTION_TIME_OUT:I = 0x4e20

.field private static final MOBILE_NETWORK_DNS_TIME_OUT:I = 0x1770

.field private static final MOBILE_NETWORK_REQUEST_TIME_OUT:I = 0x7530

.field private static final MOBILE_NETWORK_UPLOAD_STASTIC_INTERVAL:I = 0x927c0

.field private static final PREF_KEY_CHANNEL_PUB_KEY:Ljava/lang/String; = "channel_public_key"

.field private static final PREF_KEY_HEART_BEAT_INTERVAL:Ljava/lang/String; = "heart_beat_interval"

.field private static final PREF_KEY_LOG_LEVEL:Ljava/lang/String; = "log_level"

.field private static final PREF_KEY_SAMPLE_STATICTIS_FACTOR:Ljava/lang/String; = "sample_statistics_factor"

.field private static final PREF_KEY_SPEED_TEST_INTERVAL:Ljava/lang/String; = "speed_test_interval"

.field private static final PREF_KEY_SPEED_TEST_TIP:Ljava/lang/String; = "speed_test_tip"

.field private static final PREF_KEY_SPEED_TEST_UIP:Ljava/lang/String; = "speed_test_uip"

.field private static final PREF_KEY_SUID:Ljava/lang/String; = "suid"

.field private static final PREF_KEY_SUID_ANONYMOUS:Ljava/lang/String; = "suid_anonymous"

.field private static final PREF_MNS_SETTINGS_DATA_NAME:Ljava/lang/String; = "mns_settings_data"

.field public static final SERVICE_SUICIDE_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "ConfigManager"

.field private static final WIFI_CONNECTION_TIME_OUT:I = 0x3a98

.field private static final WIFI_DNS_TIME_OUT:I = 0xfa0

.field private static final WIFI_REQUEST_TIME_OUT:I = 0x3a98

.field private static final WIFI_UPLOAD_STASTIC_INTERVAL:I = 0x493e0

.field private static sIntance:Lcom/mi/milink/sdk/config/ConfigManager;


# instance fields
.field private channelPubKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private configTimeStamp:J

.field private context:Landroid/content/Context;

.field private engineConfigRatio:F

.field engineMatch:Lorg/json/JSONObject;

.field private heartBeatInterval:J

.field private logLevel:I

.field private samplingStatisticsFactor:I

.field private speedTestInterval:J

.field private speedTestTip:Ljava/lang/String;

.field private speedTestUip:Ljava/lang/String;

.field private suid:Ljava/lang/String;

.field private suidAnonymous:Ljava/lang/String;

.field private timeoutMultiply:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/config/ConfigManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/config/ConfigManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/config/ConfigManager;->sIntance:Lcom/mi/milink/sdk/config/ConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    iput-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suidAnonymous:Ljava/lang/String;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->engineConfigRatio:F

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->heartBeatInterval:J

    const-wide/32 v0, 0x2932e00

    iput-wide v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestInterval:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->configTimeStamp:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->samplingStatisticsFactor:I

    const/16 v0, 0x3f

    iput v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->logLevel:I

    iput-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->context:Landroid/content/Context;

    iput-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;

    iput-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->channelPubKeySet:Ljava/util/Set;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->timeoutMultiply:F

    iput-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->engineMatch:Lorg/json/JSONObject;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/ConfigManager;->loadConfig()V

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/config/ConfigManager;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/config/ConfigManager;->sIntance:Lcom/mi/milink/sdk/config/ConfigManager;

    return-object v0
.end method

.method private declared-synchronized loadConfig()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->context:Landroid/content/Context;

    const-string v1, "mns_settings_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "heart_beat_interval"

    const-wide/32 v2, 0x493e0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->heartBeatInterval:J

    const-string v1, "speed_test_interval"

    const-wide/32 v2, 0x2932e00

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestInterval:J

    const-string v1, "speed_test_tip"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;

    const-string v1, "speed_test_uip"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;

    const-string v1, "sample_statistics_factor"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->samplingStatisticsFactor:I

    const-string v1, "log_level"

    const/16 v2, 0x3f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->logLevel:I

    const-string v1, "suid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    const-string v1, "suid_anonymous"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suidAnonymous:Ljava/lang/String;

    const-string v1, "channel_public_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->channelPubKeySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveConfig()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->context:Landroid/content/Context;

    const-string v1, "mns_settings_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "heart_beat_interval"

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->heartBeatInterval:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "speed_test_interval"

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestInterval:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "speed_test_tip"

    iget-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "speed_test_uip"

    iget-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "sample_statistics_factor"

    iget v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->samplingStatisticsFactor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "log_level"

    iget v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->logLevel:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "suid"

    iget-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "suid_anonymous"

    iget-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suidAnonymous:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "channel_public_key"

    iget-object v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->channelPubKeySet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateHeartBeatInterval(J)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "heartbeat interval from server is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->heartBeatInterval:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-string v2, "ConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update heat beat interval from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mi/milink/sdk/config/ConfigManager;->heartBeatInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->heartBeatInterval:J

    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->resetNextPing()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateLogLevel(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update logLevel ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->logLevel:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->logLevel:I

    iget v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->logLevel:I

    invoke-static {v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->setLogcatTraceLevel(I)V

    iget v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->logLevel:I

    invoke-static {v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->setFileTraceLevel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSamplingStatisticFactor(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update sample statistic factor = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->samplingStatisticsFactor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->samplingStatisticsFactor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSpeedTestInterval(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "speedtest interval from server is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestInterval:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSpeedTestTcpIps(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "speedtest tip is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized updateSpeedTestUdpIps(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "speedtest uip is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public deleteChannelPubKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->channelPubKeySet:Ljava/util/Set;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->channelPubKeySet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized getChannelPubKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->channelPubKeySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->channelPubKeySet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/config/ConfigManager;->loadConfig()V

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->channelPubKeySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConfigTimeStamp()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->configTimeStamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnetionTimeout()I
    .locals 2

    const/16 v0, 0x3a98

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x4e20

    :cond_0
    return v0
.end method

.method public getDnsTimeout()I
    .locals 2

    const/16 v0, 0xfa0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x1770

    :cond_0
    return v0
.end method

.method public declared-synchronized getEngineConfigRatio()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->engineConfigRatio:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEngineMatch()Lorg/json/JSONObject;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->engineMatch:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHeartBeatInterval()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->heartBeatInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequestTimeout()I
    .locals 2

    const/16 v0, 0x3a98

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x7530

    :cond_0
    return v0
.end method

.method public getSamplingStatisticsFactor()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->samplingStatisticsFactor:I

    return v0
.end method

.method public declared-synchronized getSpeedTestInterval()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestInterval:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpeedTestTcpIps()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestTip:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpeedTestUdpIps()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->speedTestUip:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSuid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSuidAnonymous()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suidAnonymous:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTimeoutMultiply()F
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->timeoutMultiply:F

    return v0
.end method

.method public getUploadStasticInterval()I
    .locals 2

    const v0, 0x927c0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x493e0

    :cond_0
    return v0
.end method

.method public declared-synchronized setTimeoutMultiply(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->timeoutMultiply:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateChannelPubKeySet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->channelPubKeySet:Ljava/util/Set;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/ConfigManager;->saveConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateConfig(JLjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v1, "ConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update config from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mi/milink/sdk/config/ConfigManager;->configTimeStamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", jsonConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/ConfigManager;->configTimeStamp:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    iput-wide p1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->configTimeStamp:J

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    const-string v0, "hb"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lcom/mi/milink/sdk/config/ConfigManager;->updateHeartBeatInterval(J)V

    const-string v0, "st"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "intl"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/mi/milink/sdk/config/ConfigManager;->updateSpeedTestInterval(J)V

    const-string v2, "tip"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mi/milink/sdk/config/ConfigManager;->updateSpeedTestTcpIps(Ljava/lang/String;)V

    const-string v2, "uip"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/ConfigManager;->updateSpeedTestUdpIps(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :try_start_3
    const-string v0, "engineConfRatio"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->engineConfigRatio:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    const-string v0, "sf"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/ConfigManager;->updateSamplingStatisticFactor(I)V

    const-string v0, "logLev"

    const/16 v2, 0x3f

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/ConfigManager;->updateLogLevel(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v0, "engine_match"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->engineMatch:Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :goto_2
    :try_start_6
    invoke-direct {p0}, Lcom/mi/milink/sdk/config/ConfigManager;->saveConfig()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "ConfigManager"

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->engineMatch:Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_8
    const-string v1, "ConfigManager"

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized updateSuid(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/ConfigManager;->saveConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateSuidAnonymous(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suidAnonymous:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/config/ConfigManager;->suidAnonymous:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/ConfigManager;->saveConfig()V

    :cond_0
    return-void
.end method
