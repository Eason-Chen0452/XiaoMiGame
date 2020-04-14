.class public final enum Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SchemeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GAMECENTER:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

.field public static final enum HTTP:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

.field public static final enum MIBICENTER:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

.field public static final enum MIGAMESDK:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

.field public static final enum MISERVICESDK:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

.field public static final enum UNKNOW:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

.field private static final synthetic a:[Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    const-string v1, "GAMECENTER"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->GAMECENTER:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    const-string v1, "MIBICENTER"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->MIBICENTER:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->HTTP:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->UNKNOW:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    const-string v1, "MIGAMESDK"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->MIGAMESDK:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    const-string v1, "MISERVICESDK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->MISERVICESDK:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->GAMECENTER:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->MIBICENTER:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->HTTP:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->UNKNOW:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->MIGAMESDK:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->MISERVICESDK:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->a:[Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;
    .locals 1

    const-class v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->a:[Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    return-object v0
.end method
