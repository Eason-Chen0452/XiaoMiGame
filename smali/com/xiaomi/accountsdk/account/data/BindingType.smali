.class public final enum Lcom/xiaomi/accountsdk/account/data/BindingType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/accountsdk/account/data/BindingType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field public static final enum ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field public static final enum DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field public static final enum REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field public static final enum REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

.field private static final synthetic a:[Lcom/xiaomi/accountsdk/account/data/BindingType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    const-string v1, "ADD_SAFE_EMAIL"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    const-string v1, "REPLACE_SAFE_EMAIL"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    const-string v1, "ADD_PHONE"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    const-string v1, "REPLACE_PHONE"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    const-string v1, "DELETE_PHONE"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/accountsdk/account/data/BindingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/BindingType;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/BindingType;->DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->a:[Lcom/xiaomi/accountsdk/account/data/BindingType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/BindingType;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/account/data/BindingType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/BindingType;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->a:[Lcom/xiaomi/accountsdk/account/data/BindingType;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/BindingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/BindingType;

    return-object v0
.end method


# virtual methods
.method public final isBindingEmail()Z
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_SAFE_EMAIL:Lcom/xiaomi/accountsdk/account/data/BindingType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBindingPhone()Z
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->ADD_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->REPLACE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/BindingType;->DELETE_PHONE:Lcom/xiaomi/accountsdk/account/data/BindingType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
