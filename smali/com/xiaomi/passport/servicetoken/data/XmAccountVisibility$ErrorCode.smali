.class public final enum Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_EXECUTION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_NONE:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_NOT_SUPPORT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_NO_ACCOUNT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_NO_PERMISSION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_PRE_ANDROID_O:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field private static final synthetic b:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_NONE"

    const-string v2, "successful"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_NOT_SUPPORT"

    const-string v2, "no support account service"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NOT_SUPPORT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_PRE_ANDROID_O"

    const-string v2, "no support account service, and pre o version"

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_PRE_ANDROID_O:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_NO_ACCOUNT"

    const-string v2, "no account"

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NO_ACCOUNT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_NO_PERMISSION"

    const-string v2, "no access account service permission"

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NO_PERMISSION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_CANCELLED"

    const/4 v2, 0x5

    const-string v3, "task cancelled"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_EXECUTION"

    const/4 v2, 0x6

    const-string v3, "execution error"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_EXECUTION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const-string v1, "ERROR_UNKNOWN"

    const/4 v2, 0x7

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NOT_SUPPORT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_PRE_ANDROID_O:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NO_ACCOUNT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NO_PERMISSION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_EXECUTION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->b:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->b:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    return-object v0
.end method
