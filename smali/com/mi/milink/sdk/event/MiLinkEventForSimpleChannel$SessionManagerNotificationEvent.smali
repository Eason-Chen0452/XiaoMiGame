.class public Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionManagerNotificationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;
    }
.end annotation


# instance fields
.field public mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

.field public mObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    return-void
.end method

.method public constructor <init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    iput-object p2, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;->mObject:Ljava/lang/Object;

    return-void
.end method
