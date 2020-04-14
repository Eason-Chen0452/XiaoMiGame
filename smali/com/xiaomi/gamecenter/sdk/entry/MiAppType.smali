.class public final enum Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

.field public static final enum offline:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

.field public static final enum online:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    const-string v1, "offline"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->offline:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    const-string v1, "online"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->online:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->offline:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->online:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;
    .locals 1

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    return-object v0
.end method
