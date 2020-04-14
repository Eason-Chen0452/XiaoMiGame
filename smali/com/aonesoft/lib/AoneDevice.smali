.class public Lcom/aonesoft/lib/AoneDevice;
.super Ljava/lang/Object;
.source "AoneDevice.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static s_androidId:Ljava/lang/String;

.field private static s_context:Landroid/content/Context;

.field private static s_country:Ljava/lang/String;

.field private static s_imei:Ljava/lang/String;

.field private static s_ip:Ljava/lang/String;

.field private static s_language:Ljava/lang/String;

.field private static s_mac:Ljava/lang/String;

.field private static s_model:Ljava/lang/String;

.field private static s_os:Ljava/lang/String;

.field private static s_uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_context:Landroid/content/Context;

    .line 22
    const-string v0, "aonesdk info AoneDevice"

    sput-object v0, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    .line 24
    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_androidId:Ljava/lang/String;

    .line 25
    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_country:Ljava/lang/String;

    .line 26
    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_language:Ljava/lang/String;

    .line 27
    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_model:Ljava/lang/String;

    .line 28
    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_os:Ljava/lang/String;

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/aonesoft/lib/AoneDevice;->s_imei:Ljava/lang/String;

    .line 30
    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_ip:Ljava/lang/String;

    .line 31
    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_mac:Ljava/lang/String;

    .line 32
    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_country:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    .line 85
    :goto_0
    return-object v0

    .line 77
    :cond_0
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_androidId:Ljava/lang/String;

    sput-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    :cond_1
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_imei:Ljava/lang/String;

    sput-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 81
    :cond_2
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/aonesoft/lib/AoneInstallation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    .line 84
    :cond_3
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get device id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_uniqueId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_imei:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_imei:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 114
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/aonesoft/lib/AoneInstallation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aonesoft/lib/AoneDevice;->s_imei:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIMEI1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/aonesoft/lib/AoneDevice;->s_imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIMEI2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/aonesoft/lib/AoneDevice;->s_imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_imei:Ljava/lang/String;

    return-object v0
.end method

.method public static getIdfa()Ljava/lang/String;
    .locals 4

    .prologue
    .line 154
    invoke-static {}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient;->getAdId()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "idfa":Ljava/lang/String;
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "idfa:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v0
.end method

.method public static getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_ip:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_language:Ljava/lang/String;

    return-object v0
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_mac:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_model:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    sget-object v2, Lcom/aonesoft/lib/AoneDevice;->s_context:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 131
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 132
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 133
    sget-object v2, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    const-string v3, " network type is null, may be no network now!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v2, ""

    .line 139
    :goto_0
    return-object v2

    .line 136
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 137
    const-string v2, "wifi"

    goto :goto_0

    .line 139
    :cond_1
    const-string v2, "mobile"

    goto :goto_0
.end method

.method public static getOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/aonesoft/lib/AoneDevice;->s_os:Ljava/lang/String;

    return-object v0
.end method

.method public static getOpertorCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    sget-object v2, Lcom/aonesoft/lib/AoneDevice;->s_context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 146
    .local v1, "tmManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "code":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 148
    const-string v0, ""

    .line 150
    :cond_0
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sput-object p0, Lcom/aonesoft/lib/AoneDevice;->s_context:Landroid/content/Context;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_androidId:Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " deviceId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aonesoft/lib/AoneDevice;->s_androidId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_country:Ljava/lang/String;

    .line 41
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " country:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aonesoft/lib/AoneDevice;->s_country:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_language:Ljava/lang/String;

    .line 44
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " language:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aonesoft/lib/AoneDevice;->s_language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_model:Ljava/lang/String;

    .line 47
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " model:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aonesoft/lib/AoneDevice;->s_model:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_os:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " os:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aonesoft/lib/AoneDevice;->s_os:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " imei:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aonesoft/lib/AoneDevice;->s_imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 62
    .local v0, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_ip:Ljava/lang/String;

    .line 63
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ip:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aonesoft/lib/AoneDevice;->s_ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/aonesoft/lib/AoneDevice;->s_mac:Ljava/lang/String;

    .line 66
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " mac:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/aonesoft/lib/AoneDevice;->s_mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public static openUrl(Ljava/lang/String;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->s_context:Landroid/content/Context;

    const-class v2, Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    sget-object v1, Lcom/aonesoft/lib/AoneDevice;->s_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method
