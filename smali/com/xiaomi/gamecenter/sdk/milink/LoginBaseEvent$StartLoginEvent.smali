.class public Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$StartLoginEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartLoginEvent"
.end annotation


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$StartLoginEvent;->b:Z

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$StartLoginEvent;->a:I

    iput-boolean p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginBaseEvent$StartLoginEvent;->b:Z

    return-void
.end method
