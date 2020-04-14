.class public final enum Lcom/xiaomi/greendao/identityscope/IdentityScopeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/greendao/identityscope/IdentityScopeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum None:Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

.field public static final enum Session:Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

.field private static final synthetic a:[Lcom/xiaomi/greendao/identityscope/IdentityScopeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    const-string v1, "Session"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->Session:Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    new-instance v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->None:Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    sget-object v1, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->Session:Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->None:Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->a:[Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/greendao/identityscope/IdentityScopeType;
    .locals 1

    const-class v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/greendao/identityscope/IdentityScopeType;
    .locals 1

    sget-object v0, Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->a:[Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    invoke-virtual {v0}, [Lcom/xiaomi/greendao/identityscope/IdentityScopeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/greendao/identityscope/IdentityScopeType;

    return-object v0
.end method
