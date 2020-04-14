.class public Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->b:Ljava/lang/String;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->g:Ljava/lang/String;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->c:Ljava/lang/String;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->d:Ljava/lang/String;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->e:Ljava/util/ArrayList;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method
