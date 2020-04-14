.class public final enum Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/wali/basetool/log/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

.field public static final enum ERROR:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

.field public static final enum INFO:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

.field public static final enum NONE:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

.field public static final enum WARN:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

.field private static final synthetic a:[Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->NONE:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    new-instance v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->ERROR:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    new-instance v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->INFO:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    new-instance v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v5}, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->DEBUG:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    new-instance v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v6}, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->WARN:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    const/4 v0, 0x5

    new-array v0, v0, [Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    sget-object v1, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->NONE:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->ERROR:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->INFO:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->DEBUG:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->WARN:Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    aput-object v1, v0, v6

    sput-object v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->a:[Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;
    .locals 1

    const-class v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    return-object v0
.end method

.method public static values()[Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;
    .locals 1

    sget-object v0, Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->a:[Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    invoke-virtual {v0}, [Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/com/wali/basetool/log/Logger$LOG_LEVEL;

    return-object v0
.end method
