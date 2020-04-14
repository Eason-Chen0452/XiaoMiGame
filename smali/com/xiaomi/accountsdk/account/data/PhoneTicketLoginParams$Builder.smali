.class public Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams;
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

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->h:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-object p0
.end method

.method public final a(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->c:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->h:Z

    return-object p0
.end method

.method public final a([Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->g:[Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/PhoneTicketLoginParams$Builder;->f:Ljava/lang/String;

    return-object p0
.end method
