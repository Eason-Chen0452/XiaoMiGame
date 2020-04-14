.class final Lcom/xiaomi/gamecenter/sdk/q;
.super Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/q;->a:Lcom/xiaomi/gamecenter/sdk/p;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/notice/RequestListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "MiGameSDK.MiCommplatform"

    const-string v1, "request notice success"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MiGameSDK.MiCommplatform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request notice error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
