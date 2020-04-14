.class public Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient;
.super Ljava/lang/Object;
.source "AoneAdvertisingIdClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;,
        Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingConnection;,
        Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingInterface;
    }
.end annotation


# static fields
.field private static adId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-string v0, ""

    sput-object v0, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient;->adId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    sput-object p0, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient;->adId:Ljava/lang/String;

    return-void
.end method

.method public static getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient;->adId:Ljava/lang/String;

    return-object v0
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 37
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 38
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 39
    const-string v8, "Cannot be called from the main thread"

    .line 38
    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 42
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 43
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const-string v7, "com.android.vending"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    new-instance v2, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingConnection;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingConnection;-><init>(Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingConnection;)V

    .line 49
    .local v2, "connection":Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingConnection;
    new-instance v5, Landroid/content/Intent;

    .line 50
    const-string v7, "com.google.android.gms.ads.identifier.service.START"

    .line 49
    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "com.google.android.gms"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v5, v2, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 54
    :try_start_1
    new-instance v1, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingInterface;

    .line 55
    invoke-virtual {v2}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 54
    invoke-direct {v1, v7}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 56
    .local v1, "adInterface":Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingInterface;
    new-instance v0, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;

    invoke-virtual {v1}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v7

    .line 57
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingInterface;->isLimitAdTrackingEnabled(Z)Z

    move-result v8

    .line 56
    invoke-direct {v0, v7, v8}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .local v0, "adInfo":Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    return-object v0

    .line 44
    .end local v0    # "adInfo":Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdInfo;
    .end local v1    # "adInterface":Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingInterface;
    .end local v2    # "connection":Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingConnection;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 45
    .local v3, "e":Ljava/lang/Exception;
    throw v3

    .line 59
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "connection":Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$AdvertisingConnection;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v4

    .line 60
    .local v4, "exception":Ljava/lang/Exception;
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .end local v4    # "exception":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 62
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 63
    throw v7

    .line 65
    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Google Play connection failed"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static initAdId(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$1;

    invoke-direct {v1, p0}, Lcom/aonesoft/lib/utils/AoneAdvertisingIdClient$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 153
    return-void
.end method
