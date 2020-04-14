.class public final Lcn/com/wali/basetool/utils/SystemConfig;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;

.field private static c:Landroid/net/ConnectivityManager;

.field private static d:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v4, v6, [Ljava/lang/String;

    const-string v0, "cmwap"

    aput-object v0, v4, v1

    const-string v0, "uniwap"

    aput-object v0, v4, v2

    const/4 v0, 0x2

    const-string v3, "3gwap"

    aput-object v3, v4, v0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_4

    aget-object v5, v4, v0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x5

    const/4 v0, -0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    const/4 v1, 0x3

    :goto_1
    sub-int v1, v2, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string v3, "ctwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->g(Landroid/content/Context;)V

    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->d:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_0
    :goto_0
    invoke-static {v0}, Lcn/com/wali/basetool/utils/SystemConfig;->b(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v2, v0, :cond_1

    const/4 v2, 0x7

    if-ne v2, v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lcn/com/wali/basetool/utils/SystemConfig;->a:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->g(Landroid/content/Context;)V

    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->d:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/Boolean;

    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "46006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v1, Lcn/com/wali/basetool/utils/SystemConfig;->b:Ljava/lang/Boolean;

    :cond_2
    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->h(Landroid/content/Context;)V

    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->h(Landroid/content/Context;)V

    sget-object v2, Lcn/com/wali/basetool/utils/SystemConfig;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v3, v1, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->d:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->d:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method private static h(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcn/com/wali/basetool/utils/SystemConfig;->c:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method
