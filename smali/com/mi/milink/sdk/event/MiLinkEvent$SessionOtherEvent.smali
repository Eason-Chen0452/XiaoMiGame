.class public Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionOtherEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;
    }
.end annotation


# instance fields
.field public mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

.field public mSession:Lcom/mi/milink/sdk/session/persistent/Session;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    iput-object p2, p0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    return-void
.end method
