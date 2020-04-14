.class public Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/accounts/Account;

.field private e:I

.field private f:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->e:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->a:Ljava/lang/String;

    :cond_0
    iput-object p2, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->a:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->c:Z

    return v0
.end method

.method static synthetic d(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->d:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->e:I

    return v0
.end method

.method static synthetic f(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->f:Landroid/content/Intent;

    return-object v0
.end method
