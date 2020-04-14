.class public final enum Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

.field public static final enum B2tokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

.field public static final enum ChannelPubKeyUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

.field public static final enum KickByServer:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

.field public static final enum ServerLineBroken:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

.field public static final enum ServiceTokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

.field public static final enum ShouldUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

.field public static final enum requireChannelLogLevel:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

.field public static final enum requireUploadLog:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    const-string v1, "ServerLineBroken"

    invoke-direct {v0, v1, v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServerLineBroken:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    const-string v1, "B2tokenExpired"

    invoke-direct {v0, v1, v4}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->B2tokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    const-string v1, "ServiceTokenExpired"

    invoke-direct {v0, v1, v5}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServiceTokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    const-string v1, "ShouldUpdate"

    invoke-direct {v0, v1, v6}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ShouldUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    const-string v1, "KickByServer"

    invoke-direct {v0, v1, v7}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->KickByServer:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    const-string v1, "requireUploadLog"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->requireUploadLog:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    const-string v1, "ChannelPubKeyUpdate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ChannelPubKeyUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    new-instance v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    const-string v1, "requireChannelLogLevel"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->requireChannelLogLevel:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServerLineBroken:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->B2tokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServiceTokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ShouldUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->KickByServer:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->requireUploadLog:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ChannelPubKeyUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->requireChannelLogLevel:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->$VALUES:[Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;
    .locals 1

    const-class v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    return-object v0
.end method

.method public static values()[Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->$VALUES:[Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v0}, [Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    return-object v0
.end method
