.class public Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaomi/gamecenter/sdk/web/h;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->g:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Lcom/xiaomi/gamecenter/sdk/web/h;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->d:Lcom/xiaomi/gamecenter/sdk/web/h;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/web/h;)V
    .locals 4

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->d:Lcom/xiaomi/gamecenter/sdk/web/h;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->g:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;-><init>(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
