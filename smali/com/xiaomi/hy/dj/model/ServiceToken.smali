.class public final Lcom/xiaomi/hy/dj/model/ServiceToken;
.super Ljava/lang/Object;


# instance fields
.field private openId:Ljava/lang/String;

.field private session:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOpenId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/ServiceToken;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/ServiceToken;->session:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/ServiceToken;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final setOpenId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/model/ServiceToken;->openId:Ljava/lang/String;

    return-void
.end method

.method public final setSession(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/model/ServiceToken;->session:Ljava/lang/String;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/model/ServiceToken;->uid:Ljava/lang/String;

    return-void
.end method
