.class public final enum Lcom/xiaomi/gamecenter/sdk/entry/PayType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/entry/PayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/PayType;

.field public static final enum ALIPAY:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

.field public static final enum QPAY:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

.field public static final enum WXWAP:Lcom/xiaomi/gamecenter/sdk/entry/PayType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    const-string v1, "WXWAP"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->WXWAP:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    const-string v1, "ALIPAY"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/entry/PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->ALIPAY:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    const-string v1, "QPAY"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/gamecenter/sdk/entry/PayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->QPAY:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->WXWAP:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->ALIPAY:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->QPAY:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/PayType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/PayType;
    .locals 1

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/entry/PayType;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/entry/PayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    return-object v0
.end method
