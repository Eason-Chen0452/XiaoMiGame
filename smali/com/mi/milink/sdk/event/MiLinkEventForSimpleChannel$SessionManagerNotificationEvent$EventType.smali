.class public final enum Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

.field public static final enum GetServiceToken:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

.field public static final enum RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    const-string v1, "GetServiceToken"

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->GetServiceToken:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    const-string v1, "RecvInvalidPacket"

    invoke-direct {v0, v1, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->GetServiceToken:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->$VALUES:[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;
    .locals 1

    const-class v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->$VALUES:[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    invoke-virtual {v0}, [Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    return-object v0
.end method
