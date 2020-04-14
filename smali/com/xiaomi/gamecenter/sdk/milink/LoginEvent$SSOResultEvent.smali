.class public Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$SSOResultEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSOResultEvent"
.end annotation


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$SSOResultEvent;->a:I

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$SSOResultEvent;->b:J

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$SSOResultEvent;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$SSOResultEvent;->d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    return-void
.end method
