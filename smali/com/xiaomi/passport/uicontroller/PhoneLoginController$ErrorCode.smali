.class public final enum Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/uicontroller/PhoneLoginController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR_ACCESS_DENIED:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum ERROR_AUTH_FAIL:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum ERROR_INVALID_PARAM:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum ERROR_NETWORK:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum ERROR_NON_EXIST_USER:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum ERROR_NO_PHONE:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum ERROR_PASSWORD:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum ERROR_SERVER:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum ERROR_USER_ACTION_OVER_LIMIT:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field public static final enum NONE:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

.field private static final synthetic a:[Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->NONE:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_AUTH_FAIL"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_AUTH_FAIL:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_NETWORK"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_NETWORK:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_SERVER"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_SERVER:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_ACCESS_DENIED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_ACCESS_DENIED:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_INVALID_PARAM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_INVALID_PARAM:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_USER_ACTION_OVER_LIMIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_USER_ACTION_OVER_LIMIT:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_PASSWORD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_PASSWORD:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_NON_EXIST_USER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_NON_EXIST_USER:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    new-instance v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const-string v1, "ERROR_NO_PHONE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_NO_PHONE:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->NONE:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_AUTH_FAIL:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_NETWORK:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_SERVER:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_ACCESS_DENIED:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_INVALID_PARAM:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_USER_ACTION_OVER_LIMIT:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_PASSWORD:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_NON_EXIST_USER:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->ERROR_NO_PHONE:Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->a:[Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->a:[Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/uicontroller/PhoneLoginController$ErrorCode;

    return-object v0
.end method
