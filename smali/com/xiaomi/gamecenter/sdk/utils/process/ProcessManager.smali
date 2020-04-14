.class final Lcom/xiaomi/gamecenter/sdk/utils/process/ProcessManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/utils/process/ProcessManager$ProcessComparator;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput-byte v0, Lcom/xiaomi/gamecenter/sdk/utils/process/ProcessManager;->b:B

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/gamecenter/sdk/utils/process/ProcessManager;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "AndroidProcesses"

    array-length v1, p1

    if-nez v1, :cond_1

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
