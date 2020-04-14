.class public Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionLoginEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;
    }
.end annotation


# instance fields
.field public mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

.field public mRetCode:I

.field public mSession:Lcom/mi/milink/sdk/session/persistent/Session;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    iput-object p2, p0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    iput p3, p0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;->mRetCode:I

    return-void
.end method
