.class public final enum Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LOCALPAY:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

.field public static final enum NOTYPE:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

.field public static final enum SERVICEPAY:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

.field private static final synthetic a:[Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    const-string v1, "LOCALPAY"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->LOCALPAY:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    const-string v1, "SERVICEPAY"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->SERVICEPAY:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    const-string v1, "NOTYPE"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->NOTYPE:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->LOCALPAY:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->SERVICEPAY:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->NOTYPE:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->a:[Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;
    .locals 1

    const-class v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->a:[Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    return-object v0
.end method
