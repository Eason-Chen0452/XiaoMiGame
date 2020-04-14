.class public Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionLoginEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;
    }
.end annotation


# instance fields
.field public mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

.field public mRetCode:I

.field public mSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    iput-object p2, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;->mSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iput p3, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;->mRetCode:I

    return-void
.end method
