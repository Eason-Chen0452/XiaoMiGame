.class public Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/accountsdk/account/data/Gender;

.field private d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->b:Ljava/lang/String;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->g:Lcom/xiaomi/accountsdk/account/data/Gender;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->c:Lcom/xiaomi/accountsdk/account/data/Gender;

    iget-object v0, p2, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->h:Ljava/util/Calendar;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->d:Ljava/util/Calendar;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->c:Lcom/xiaomi/accountsdk/account/data/Gender;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserProfile;->d:Ljava/util/Calendar;

    return-void
.end method
