.class public Lcom/tencent/bugly/cocos/Cocos2dxAgent;
.super Ljava/lang/Object;
.source "Cocos2dxAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cocos2dxAgent"

.field private static final VERSION:Ljava/lang/String; = "1.2.0"

.field private static isDebug:Z

.field private static mHandler:Landroid/os/Handler;

.field private static sAppChannel:Ljava/lang/String;

.field private static sAppVersion:Ljava/lang/String;

.field private static sDelayTime:J

.field public static sdkPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-string v0, "com.tencent.bugly"

    sput-object v0, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sdkPackageName:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->isDebug:Z

    .line 21
    sput-object v1, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->mHandler:Landroid/os/Handler;

    .line 23
    sput-object v1, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sAppVersion:Ljava/lang/String;

    .line 24
    sput-object v1, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sAppChannel:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sDelayTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v1, 0x2

    const-string v2, "[cocos2d-x] Get the main looper handler Failed."

    invoke-static {v1, v2}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->printLog(ILjava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    sget-object v1, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sdkPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 375
    const-string v1, "com.tencent.bugly"

    sput-object v1, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sdkPackageName:Ljava/lang/String;

    .line 377
    :cond_0
    sget-object v1, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sdkPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static delayExit(J)V
    .locals 4

    .prologue
    .line 339
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 341
    sget-object v2, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 342
    sget-object v2, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/tencent/bugly/cocos/Cocos2dxAgent$1;

    invoke-direct {v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$1;-><init>()V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    :goto_0
    return-void

    .line 351
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 353
    invoke-static {}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->exitApplication()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static exitApplication()V
    .locals 6

    .prologue
    .line 365
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 367
    const/4 v1, 0x2

    const-string v2, "Exit application by kill process[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->printLog(ILjava/lang/String;)V

    .line 369
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 370
    return-void
.end method

.method public static initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 55
    sget-object v3, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sAppChannel:Ljava/lang/String;

    sget-object v4, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sAppVersion:Ljava/lang/String;

    const/4 v5, 0x0

    sget-wide v6, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sDelayTime:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 56
    return-void
.end method

.method private static initCrashReport(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x3

    const-string v1, "context is null. bugly initialize terminated."

    invoke-static {v0, v1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->printLog(ILjava/lang/String;)V

    .line 63
    :cond_0
    sput-boolean p2, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->isDebug:Z

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x2

    const-string v1, "Please input appid when initCrashReport."

    invoke-static {v0, v1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->printLog(ILjava/lang/String;)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    :cond_3
    const-string v0, "Cocos2dxAgent"

    const-string v1, "Fail to init the crash report"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 73
    :cond_4
    const/4 v1, 0x0

    .line 75
    invoke-static {p0, p3, p4, p6, p7}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->newStrategy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v3

    .line 77
    if-eqz v3, :cond_6

    .line 78
    const/4 v2, 0x0

    .line 80
    :try_start_0
    const-string v0, "crashreport.CrashReport$UserStrategy"

    invoke-static {v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 88
    :goto_1
    if-eqz v0, :cond_6

    .line 89
    const-string v1, "crashreport.CrashReport"

    invoke-static {v1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "initCrashReport"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    aput-object v0, v3, v5

    invoke-static {v1, v2, v4, v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    .line 97
    :goto_2
    if-nez v0, :cond_5

    .line 98
    const-string v0, "crashreport.CrashReport"

    invoke-static {v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initCrashReport"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    :cond_5
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string v0, "crashreport.CrashReport"

    invoke-static {v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUserId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v2

    .line 86
    goto/16 :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private static newStrategy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 134
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 171
    :goto_0
    return-object v0

    .line 138
    :cond_1
    const-string v0, "crashreport.CrashReport$UserStrategy"

    invoke-static {v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->newInstance(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 147
    :try_start_0
    const-string v3, "setAppChannel"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 148
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v3, "setAppVersion"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 151
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v3, "setAppReportDelay"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 154
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_2
    :goto_1
    move-object v0, v1

    .line 171
    goto :goto_0

    .line 159
    :catch_1
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 161
    :catch_2
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 163
    :catch_3
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 165
    :catch_4
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static postException(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 182
    :try_start_0
    const-string v0, "stack traceback"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 183
    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    :goto_0
    :try_start_1
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 187
    if-lez v1, :cond_0

    .line 188
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 193
    if-lez v1, :cond_6

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 197
    :goto_1
    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 198
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 199
    :cond_1
    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 200
    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .line 212
    :cond_2
    :goto_2
    const-string v1, "crashreport.inner.InnerAPI"

    invoke-static {v1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "postCocos2dxCrashAsync"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    aput-object p2, v3, v7

    aput-object v0, v3, v8

    new-array v0, v9, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v7

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v8

    invoke-static {v1, v2, v3, v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 216
    if-eqz p4, :cond_3

    .line 217
    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->delayExit(J)V

    .line 219
    :cond_3
    return-void

    :cond_4
    move-object p1, p2

    .line 202
    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    move-object v0, p3

    .line 207
    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_5
    move-object p1, p2

    .line 208
    goto :goto_2

    .line 205
    :catch_1
    move-exception v1

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto :goto_1

    :cond_7
    move-object v0, p3

    goto :goto_0
.end method

.method public static printLog(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    sget-boolean v0, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->isDebug:Z

    if-eqz v0, :cond_2

    .line 244
    if-nez p0, :cond_2

    .line 246
    const-string v0, "d"

    invoke-static {v0, p1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_2
    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    .line 251
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 255
    const-string v0, "w"

    invoke-static {v0, p1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_4
    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    .line 260
    const-string v0, "e"

    invoke-static {v0, p1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sdkLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static printLog(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 226
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->printLog(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    if-eqz p0, :cond_0

    .line 293
    const-string v0, "crashreport.CrashReport"

    invoke-static {v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "putUserData"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static removeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    if-eqz p0, :cond_0

    .line 304
    const-string v0, "crashreport.CrashReport"

    invoke-static {v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "removeUserData"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static sdkLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    const-string v0, "crashreport.BuglyLog"

    invoke-static {v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, p0, v1, v2}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 267
    return-void
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    sput-object p0, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sAppChannel:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 115
    :cond_0
    sput-object p0, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sAppVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setDelayTime(J)V
    .locals 2

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    sput-wide p0, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sDelayTime:J

    goto :goto_0
.end method

.method public static setLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    const/4 v0, 0x0

    .line 314
    packed-switch p0, :pswitch_data_0

    .line 332
    :goto_1
    if-eqz v0, :cond_0

    .line 333
    const-string v1, "crashreport.BuglyLog"

    invoke-static {v1}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0

    .line 316
    :pswitch_0
    const-string v0, "v"

    goto :goto_1

    .line 319
    :pswitch_1
    const-string v0, "d"

    goto :goto_1

    .line 322
    :pswitch_2
    const-string v0, "i"

    goto :goto_1

    .line 325
    :pswitch_3
    const-string v0, "w"

    goto :goto_1

    .line 328
    :pswitch_4
    const-string v0, "e"

    goto :goto_1

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static setSDKPackagePrefixName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    sput-object p0, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->sdkPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    const-string v0, "crashreport.CrashReport"

    invoke-static {v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUserId"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setUserSceneTag(Landroid/content/Context;I)V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 282
    if-eqz p0, :cond_0

    .line 283
    const-string v0, "crashreport.CrashReport"

    invoke-static {v0}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->convertToCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setUserSceneTag"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/cocos/Cocos2dxAgent$Reflection;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 286
    :cond_0
    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "1.2.0"

    return-object v0
.end method
