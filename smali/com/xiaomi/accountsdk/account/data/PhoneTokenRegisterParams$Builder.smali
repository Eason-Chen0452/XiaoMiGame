.class public Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a()Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->e:Z

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;B)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams$Builder;->g:Ljava/lang/String;

    return-object p0
.end method
