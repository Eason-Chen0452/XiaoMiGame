.class public Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemNotificationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;
    }
.end annotation


# instance fields
.field public mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    return-void
.end method
