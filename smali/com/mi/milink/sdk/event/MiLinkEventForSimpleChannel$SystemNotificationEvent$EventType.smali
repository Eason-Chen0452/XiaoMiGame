.class public final enum Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

.field public static final enum NetWorkChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

.field public static final enum ScreenOn:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    const-string v1, "ScreenOn"

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->ScreenOn:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    const-string v1, "NetWorkChange"

    invoke-direct {v0, v1, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->NetWorkChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->ScreenOn:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->NetWorkChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->$VALUES:[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;
    .locals 1

    const-class v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->$VALUES:[Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    invoke-virtual {v0}, [Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    return-object v0
.end method
