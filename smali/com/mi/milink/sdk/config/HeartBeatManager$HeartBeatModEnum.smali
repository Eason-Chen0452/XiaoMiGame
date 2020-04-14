.class public final enum Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/config/HeartBeatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeartBeatModEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

.field public static final enum DEC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

.field public static final enum INC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    const-string v1, "INC"

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->INC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    new-instance v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    const-string v1, "DEC"

    invoke-direct {v0, v1, v3}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->DEC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    sget-object v1, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->INC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->DEC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->$VALUES:[Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;
    .locals 1

    const-class v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    return-object v0
.end method

.method public static values()[Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->$VALUES:[Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    invoke-virtual {v0}, [Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    return-object v0
.end method
