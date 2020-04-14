.class public Lcom/mi/milink/sdk/base/os/info/DeviceDash;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/base/os/info/NetworkStateListener;


# static fields
.field private static final instance:Lcom/mi/milink/sdk/base/os/info/DeviceDash;


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mDeviceInfo:Ljava/lang/String;

.field private mDeviceSimplifiedInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;

    invoke-direct {v0}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->instance:Lcom/mi/milink/sdk/base/os/info/DeviceDash;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;

    invoke-static {p0}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->addListener(Lcom/mi/milink/sdk/base/os/info/NetworkStateListener;)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/base/os/info/DeviceDash;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->instance:Lcom/mi/milink/sdk/base/os/info/DeviceDash;

    return-object v0
.end method

.method private static getMacDefault(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const-string v1, "02:00:00:00:00:00"

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMacFromFile()Ljava/lang/String;
    .locals 5

    const-string v0, "02:00:00:00:00:00"

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/net/wlan0/address"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getMacFromHardware()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wlan0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-byte v1, v2, v0

    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const-string v0, "02:00:00:00:00:00"

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "phone"

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->updateDeviceInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDeviceSimplifiedInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->updateDeviceInfo()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x18

    const/16 v2, 0x17

    const-string v0, "02:00:00:00:00:00"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getMacDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getMacFromFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getMacFromHardware()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onNetworkStateChanged(Lcom/mi/milink/sdk/base/os/info/NetworkState;Lcom/mi/milink/sdk/base/os/info/NetworkState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->updateDeviceInfo()Ljava/lang/String;

    return-void
.end method

.method public updateDeviceInfo()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x26

    const-string v0, "window"

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const-string v1, "phone"

    invoke-static {v1}, Lcom/mi/milink/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    :try_start_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "wifi"

    :goto_2
    const-string v4, "imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "model="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "os="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "apilevel="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "macaddress="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "network="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "display="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "manu="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "gv="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getGv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "versioncode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-static {}, Lcom/miui/deviceid/IdentifierManager;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/deviceid/IdentifierManager;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "oaid="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_2
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.miui.ui.version.name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "miui="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.build.version.incremental"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, ""

    aput-object v5, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "subversion="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceSimplifiedInfo:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "wifi="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/WifiDash;->getWifiInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "cell="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->getCellLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DnsDash;->getLocalDns()Lcom/mi/milink/sdk/base/os/info/DnsInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DnsDash;->updateLocalDns()Lcom/mi/milink/sdk/base/os/info/DnsInfo;

    move-result-object v0

    :cond_1
    const-string v1, "dns="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_6

    const-string v0, "N/A"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->mDeviceInfo:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v0, "N/A"

    goto/16 :goto_1

    :cond_2
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->is2G()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "2G"

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->is3G()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "3G"

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isEthernet()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ethernet"

    goto/16 :goto_2

    :cond_5
    const-string v1, "wan"

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/os/info/DnsInfo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method
