.class public final enum Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Income"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BETWEEN_2K_4K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum BETWEEN_4K_6K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum BETWEEN_6K_8K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum BETWEEN_8K_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum LESS_2K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum OVER_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field private static final synthetic a:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;


# instance fields
.field public final level:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "LESS_2K"

    const-string v2, "less2000"

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->LESS_2K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "BETWEEN_2K_4K"

    const-string v2, "less4000"

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_2K_4K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "BETWEEN_4K_6K"

    const-string v2, "less6000"

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_4K_6K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "BETWEEN_6K_8K"

    const-string v2, "less8000"

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_6K_8K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "BETWEEN_8K_12K"

    const-string v2, "less12000"

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_8K_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const-string v1, "OVER_12K"

    const/4 v2, 0x5

    const-string v3, "over12000"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->OVER_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->LESS_2K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_2K_4K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_4K_6K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_6K_8K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_8K_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->OVER_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->a:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

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

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->level:Ljava/lang/String;

    return-void
.end method

.method public static getIncomeTypeByName(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    iget-object v5, v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->level:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->a:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    return-object v0
.end method
