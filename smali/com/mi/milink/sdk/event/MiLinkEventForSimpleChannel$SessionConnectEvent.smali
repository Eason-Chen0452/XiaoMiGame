.class public Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionConnectEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;
    }
.end annotation


# instance fields
.field public mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

.field public mRetCode:I

.field public mSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    iput-object p2, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;->mSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iput p3, p0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;->mRetCode:I

    return-void
.end method
