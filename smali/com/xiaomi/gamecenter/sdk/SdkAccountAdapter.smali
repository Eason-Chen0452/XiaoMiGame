.class Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

.field private c:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->LOCAL:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->NOTYPE:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->c:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->LOCAL:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->LOCALPAY:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->c:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->SERVICE:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->SERVICEPAY:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->c:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->LOCAL:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->SERVICE:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->c:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;->LOCALPAY:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter$PaymentType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
