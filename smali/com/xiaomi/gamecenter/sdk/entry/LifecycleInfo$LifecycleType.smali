.class public final enum Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifecycleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

.field public static final enum onActivityCreated:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

.field public static final enum onActivityDestroyed:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

.field public static final enum onActivityPaused:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

.field public static final enum onActivityResumed:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

.field public static final enum onActivitySaveInstanceState:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

.field public static final enum onActivityStarted:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

.field public static final enum onActivityStopped:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    const-string v1, "onActivityCreated"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityCreated:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    const-string v1, "onActivityStarted"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityStarted:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    const-string v1, "onActivityResumed"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityResumed:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    const-string v1, "onActivityPaused"

    invoke-direct {v0, v1, v6}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityPaused:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    const-string v1, "onActivityStopped"

    invoke-direct {v0, v1, v7}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityStopped:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    const-string v1, "onActivityDestroyed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityDestroyed:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    const-string v1, "onActivitySaveInstanceState"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivitySaveInstanceState:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityCreated:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityStarted:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityResumed:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityPaused:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityStopped:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityDestroyed:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivitySaveInstanceState:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;
    .locals 1

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->$VALUES:[Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-virtual {v0}, [Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    return-object v0
.end method
