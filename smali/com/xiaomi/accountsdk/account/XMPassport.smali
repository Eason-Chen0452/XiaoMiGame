.class public Lcom/xiaomi/accountsdk/account/XMPassport;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final g:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final h:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static j:Z

.field private static final k:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/xiaomi/accountsdk/account/URLs;->a:Z

    sput-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->a:Z

    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->b:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->b:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->e:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->c:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->g:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->d:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->h:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->e:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->i:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->f:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->j:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->g:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->k:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->h:Ljava/lang/String;

    sget-object v0, Lcom/xiaomi/accountsdk/account/URLs;->l:Ljava/lang/String;

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassport;->k:Ljava/lang/Integer;

    sput-boolean v1, Lcom/xiaomi/accountsdk/account/XMPassport;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
