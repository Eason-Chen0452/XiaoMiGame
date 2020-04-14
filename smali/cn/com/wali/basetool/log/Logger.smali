.class public final Lcn/com/wali/basetool/log/Logger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;
    }
.end annotation


# static fields
.field public static a:Z

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/com/wali/basetool/log/a;",
            ">;"
        }
    .end annotation
.end field

.field private static c:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    const/4 v0, 0x2

    sput-byte v0, Lcn/com/wali/basetool/log/Logger;->c:B

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcn/com/wali/basetool/log/Logger;->b:Ljava/util/ArrayList;

    new-instance v0, Lcn/com/wali/basetool/log/LogcatAppender;

    invoke-direct {v0}, Lcn/com/wali/basetool/log/LogcatAppender;-><init>()V

    sget-object v1, Lcn/com/wali/basetool/log/Logger;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const-class v1, Lcn/com/wali/basetool/log/Logger;

    monitor-enter v1

    :try_start_0
    sget-byte v0, Lcn/com/wali/basetool/log/Logger;->c:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-byte v0, Lcn/com/wali/basetool/log/Logger;->c:B

    if-gt p0, v0, :cond_0

    sget-object v0, Lcn/com/wali/basetool/log/Logger;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/wali/basetool/log/a;

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-interface {v0, p1, p2, p3}, Lcn/com/wali/basetool/log/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    :try_start_3
    invoke-interface {v0, p1, p2}, Lcn/com/wali/basetool/log/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-interface {v0, p1, p2}, Lcn/com/wali/basetool/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-interface {v0, p1, p2}, Lcn/com/wali/basetool/log/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "null"

    :cond_1
    const/4 v0, 0x2

    const-string v1, "MiGameSDK"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcn/com/wali/basetool/log/Logger;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "null"

    :cond_1
    if-nez p0, :cond_2

    const-string p0, "MiGameSDK"

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcn/com/wali/basetool/log/Logger;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "MiGameSDK"

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcn/com/wali/basetool/log/Logger;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    const/4 v0, 0x1

    const-string v1, "MiGameSDK"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcn/com/wali/basetool/log/Logger;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcn/com/wali/basetool/log/Logger;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    const-string v1, "MiGameSDK"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcn/com/wali/basetool/log/Logger;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcn/com/wali/basetool/log/Logger;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    const/4 v0, 0x0

    const-string v1, "MiGameSDK"

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcn/com/wali/basetool/log/Logger;->a(BLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MiGameSDK"

    invoke-static {v0, p0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
