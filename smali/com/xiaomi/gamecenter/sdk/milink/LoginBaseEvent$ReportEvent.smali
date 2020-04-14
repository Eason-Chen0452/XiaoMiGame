.class public Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ReportEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportEvent"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ReportEvent;->a:I

    iput p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ReportEvent;->b:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ReportEvent;->a:I

    iput p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ReportEvent;->b:I

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ReportEvent;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$ReportEvent;->d:Ljava/lang/String;

    return-void
.end method
