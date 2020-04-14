.class public Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionOtherEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;
    }
.end annotation


# instance fields
.field public mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

.field public mSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

.field public obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    iput-object p2, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;->mSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    return-void
.end method
