.class public final Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

.field private g:Landroid/content/Intent;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iput-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->g:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->l:Z

    return v0
.end method

.method static synthetic m(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->m:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->k:Z

    return-object p0
.end method

.method public final a(Landroid/content/Intent;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public final a(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->f:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;B)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->d:Ljava/lang/String;

    return-object p0
.end method
