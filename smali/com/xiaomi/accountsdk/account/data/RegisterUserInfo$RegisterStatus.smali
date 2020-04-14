.class public final enum Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegisterStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum STATUS_NOT_REGISTERED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

.field public static final enum STATUS_REGISTERED_NOT_RECYCLED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

.field public static final enum STATUS_USED_POSSIBLY_RECYCLED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

.field private static final synthetic a:[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    const-string v1, "STATUS_NOT_REGISTERED"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->STATUS_NOT_REGISTERED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    const-string v1, "STATUS_USED_POSSIBLY_RECYCLED"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->STATUS_USED_POSSIBLY_RECYCLED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    const-string v1, "STATUS_REGISTERED_NOT_RECYCLED"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->STATUS_REGISTERED_NOT_RECYCLED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->STATUS_NOT_REGISTERED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->STATUS_USED_POSSIBLY_RECYCLED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->STATUS_REGISTERED_NOT_RECYCLED:Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->a:[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->value:I

    return-void
.end method

.method public static getInstance(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
    .locals 5

    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->values()[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->value:I

    if-ne p0, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "RegisterStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "has not this status value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->g(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->a:[Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$RegisterStatus;

    return-object v0
.end method
