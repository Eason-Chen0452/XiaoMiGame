.class public Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionManagerStateChangeEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;
    }
.end annotation


# instance fields
.field public mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;

.field public mNewState:I

.field public mOldState:I


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;

    iput p2, p0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mOldState:I

    iput p3, p0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mNewState:I

    return-void
.end method
