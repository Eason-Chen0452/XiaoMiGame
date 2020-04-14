.class public Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ShowTipDialogEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowTipDialogEvent"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ShowTipDialogEvent;->a:I

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ShowTipDialogEvent;->b:Ljava/lang/String;

    return-void
.end method
