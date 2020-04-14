.class Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyIDTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->d:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 7

    const-string v6, ""

    :try_start_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->a(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->d:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->b(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->c:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string v1, "verify result====="

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v0, v6

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    const/4 v1, -0x1

    const/4 v2, -0x2

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->c(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Lcom/xiaomi/gamecenter/sdk/web/h;

    move-result-object v3

    invoke-interface {v3}, Lcom/xiaomi/gamecenter/sdk/web/h;->c()V

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x196

    if-eq v0, v1, :cond_0

    const/16 v1, 0x197

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->c(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Lcom/xiaomi/gamecenter/sdk/web/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/h;->b()V

    :goto_1
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "errorCode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "verify errcode====="

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "_url"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://static.g.mi.com/pages/realname/index.html?fuid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&pid=7010"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_code"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->setArguments(Landroid/os/Bundle;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/verifyid/a;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/verifyid/a;-><init>(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/g;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->a(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    const-string v3, "VerifyWebView"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1
.end method
