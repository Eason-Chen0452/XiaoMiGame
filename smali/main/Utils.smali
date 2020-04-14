.class public Lmain/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static context_:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "Game Utils"

    sput-object v0, Lmain/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAonedefChannelID(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, Lmain/Utils;->metaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "aonedef.channel.id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAvailableSpace()J
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 239
    sget-object v8, Lmain/Utils;->context_:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    .line 240
    .local v6, "fd":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 241
    .local v7, "sf":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v4, v8

    .line 243
    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 246
    .local v0, "availCount":J
    mul-long v8, v4, v0

    const-wide/16 v10, 0x400

    div-long v2, v8, v10

    .line 248
    .local v2, "availspace":J
    const-string v8, "utils"

    const-string v9, "msg: block size = %d"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v8, "utils"

    const-string v9, "msg: avail count= %d"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v8, "utils"

    const-string v9, "msg: avail size = %d"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-wide v2
.end method

.method public static getBolMetaData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    :try_start_0
    invoke-static {p0}, Lmain/Utils;->metaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    sget-object v2, Lmain/Utils;->context_:Landroid/content/Context;

    const-string v3, "phone"

    .line 141
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 142
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "deviceId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 145
    sget-object v2, Lmain/Utils;->context_:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    return-object v0
.end method

.method public static getIPAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 227
    sget-object v4, Lmain/Utils;->context_:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 228
    .local v3, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 229
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    .line 231
    .local v1, "ip":I
    invoke-static {v1}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v2

    .line 234
    .end local v1    # "ip":I
    :goto_1
    return-object v2

    .line 228
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0

    .line 234
    .restart local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    const-string v2, "0.0.0.0"

    goto :goto_1
.end method

.method public static getIntMetaData(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Lmain/Utils;->metaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLocaleLanguage()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "tmp":Ljava/lang/String;
    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 155
    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    sget-object v2, Lmain/Utils;->context_:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 218
    .local v1, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 219
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 222
    :goto_1
    return-object v2

    .line 218
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    goto :goto_0

    .line 222
    .restart local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    const-string v2, "null"

    goto :goto_1
.end method

.method public static getManufactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "info"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 47
    .local v4, "info_get":Ljava/lang/String;
    :try_start_0
    sget-object v8, Lmain/Utils;->context_:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 48
    .local v0, "am":Landroid/content/res/AssetManager;
    const-string v8, "aonesdk.json"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 49
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v1, v8, [B

    .line 50
    .local v1, "buffer":[B
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    .line 51
    new-instance v6, Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-direct {v6, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 52
    .local v6, "json":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v7, "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {v7, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    const-string v8, "Utils.getPackageinfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InfoGet:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "json":Ljava/lang/String;
    .end local v7    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 71
    .end local v4    # "info_get":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 58
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v4    # "info_get":Ljava/lang/String;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "json":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e1":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 63
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v3    # "e1":Lorg/json/JSONException;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "json":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 65
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    const-string v4, "info-get-null"

    goto :goto_1
.end method

.method public static getPushId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "JPush.getToken()"

    .line 212
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public static getStrMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    invoke-static {p0}, Lmain/Utils;->metaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 112
    const-string v1, ""

    goto :goto_0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalMemory()D
    .locals 10

    .prologue
    .line 121
    const-wide/16 v4, 0x0

    .line 123
    .local v4, "total":D
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v6, "/proc/meminfo"

    invoke-direct {v1, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "fr":Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v6, 0x2000

    invoke-direct {v2, v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 125
    .local v2, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\s+"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "strs":[Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 128
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-double v6, v6

    const-wide v8, 0x408ff80000000000L    # 1023.0

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double v4, v6, v8

    .line 134
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v2    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "strs":[Ljava/lang/String;
    :goto_0
    sget-object v6, Lmain/Utils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total memory is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MB."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-wide v4

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sput-object p0, Lmain/Utils;->context_:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0}, Lmain/Utils;->initAssetsManager(Landroid/content/res/AssetManager;)V

    .line 40
    return-void
.end method

.method public static native initAssetsManager(Landroid/content/res/AssetManager;)V
.end method

.method public static metaData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 83
    .local v2, "pkgMngr":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    .line 84
    .local v1, "infType":I
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 85
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object v4
.end method

.method public static mobileConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 198
    :try_start_0
    sget-object v4, Lmain/Utils;->context_:Landroid/content/Context;

    const-string v5, "connectivity"

    .line 199
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 200
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    .line 201
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 202
    .local v2, "mNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 206
    .end local v2    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static networkConnected()Z
    .locals 5

    .prologue
    .line 172
    :try_start_0
    sget-object v3, Lmain/Utils;->context_:Landroid/content/Context;

    const-string v4, "connectivity"

    .line 173
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 175
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 176
    .local v2, "mNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 180
    .end local v2    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static wifiConnected()Z
    .locals 5

    .prologue
    .line 185
    :try_start_0
    sget-object v3, Lmain/Utils;->context_:Landroid/content/Context;

    const-string v4, "connectivity"

    .line 186
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 187
    .local v1, "mConnectivityManager":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    .line 188
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 189
    .local v2, "mNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 193
    .end local v2    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    const/4 v3, 0x0

    goto :goto_0
.end method
