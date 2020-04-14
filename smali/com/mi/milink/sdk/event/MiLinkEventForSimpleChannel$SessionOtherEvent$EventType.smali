.class public final enum Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

.field public static final enum PackageNeedRetry:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

.field public static final enum RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

.field public static final enum RequestMapIsEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

.field public static final enum RequestMapIsNotEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

.field public static final enum StatisticsTimeoutPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    const-string v1, "RequestMapIsNotEmpty"

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RequestMapIsNotEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    const-string v1, "RequestMapIsEmpty"

    invoke-direct {v0, v1, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RequestMapIsEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    const-string v1, "RecvInvalidPacket"

    invoke-direct {v0, v1, v4}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    const-string v1, "StatisticsTimeoutPacket"

    invoke-direct {v0, v1, v5}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->StatisticsTimeoutPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    const-string v1, "PackageNeedRetry"

    invoke-direct {v0, v1, v6}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->PackageNeedRetry:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RequestMapIsNotEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RequestMapIsEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->StatisticsTimeoutPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->PackageNeedRetry:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->$VALUES:[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;
    .locals 1

    const-class v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->$VALUES:[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-virtual {v0}, [Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    return-object v0
.end method
