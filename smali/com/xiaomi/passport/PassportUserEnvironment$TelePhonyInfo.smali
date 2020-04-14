.class public final enum Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/PassportUserEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TelePhonyInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEVICE_ID_LIST:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum LINE1_NUMBER:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum OPERATOR:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum SERIAL_NUMBER:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field public static final enum SUBSCRIBE_ID:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

.field private static final synthetic b:[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const-string v1, "SUBSCRIBE_ID"

    const-string v2, "getSubscriberIdForSlot"

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->SUBSCRIBE_ID:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const-string v1, "SERIAL_NUMBER"

    const-string v2, "getSimSerialNumberForSlot"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->SERIAL_NUMBER:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const-string v1, "LINE1_NUMBER"

    const-string v2, "getLine1NumberForSlot"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->LINE1_NUMBER:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const-string v1, "OPERATOR"

    const-string v2, "getSimOperatorForSlot"

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->OPERATOR:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    new-instance v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const-string v1, "DEVICE_ID_LIST"

    const-string v2, "getDeviceIdList"

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->DEVICE_ID_LIST:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    sget-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->SUBSCRIBE_ID:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->SERIAL_NUMBER:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->LINE1_NUMBER:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->OPERATOR:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->DEVICE_ID_LIST:Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->b:[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

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

    iput-object p3, p0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;
    .locals 1

    const-class v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->b:[Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    invoke-virtual {v0}, [Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/passport/PassportUserEnvironment$TelePhonyInfo;

    return-object v0
.end method
