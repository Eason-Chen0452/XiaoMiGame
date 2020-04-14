.class public Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$DefaultEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultEvent"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$DefaultEvent;->c:I

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$DefaultEvent;->a:I

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$DefaultEvent;->b:Ljava/lang/String;

    return-void
.end method
