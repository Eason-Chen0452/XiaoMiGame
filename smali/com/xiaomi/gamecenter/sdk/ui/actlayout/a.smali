.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 13

    const/16 v6, 0x902

    const/16 v5, 0x80f

    const/16 v4, 0x80d

    const/16 v2, 0x80c

    const/16 v3, 0xb

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->r(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f02\u5e38\u4fe1\u606f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\u5f53\u524d\u65f6\u95f4:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f02\u5e38\u4ee3\u7801:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\u5f02\u5e38\u4fe1\u606f:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\u5f53\u524d\u65f6\u95f4:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "uid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "openId"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v0, "openSession"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "accountType"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v0, "isAuto"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "serviceToken"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "nickname"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "sex"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "img"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v12

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/b;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v12, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    const/16 v4, 0x4e21

    const-string v5, "\u6b63\u5728\u68c0\u67e5\u5b9e\u540d\u8ba4\u8bc1..."

    invoke-virtual {v1, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->g(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "login"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;->login:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

    move-object v2, v5

    move-object v3, v7

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;)V

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;

    move-object v3, p0

    move-wide v4, v8

    move-object v6, v10

    move v7, v11

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/c;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;JLjava/lang/String;I)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->a(Lcom/xiaomi/gamecenter/sdk/web/h;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "MIO-showTipToast"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "message"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    const v1, 0x9c41

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    const-string v1, "\u8f7d\u5165\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-direct {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;-><init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const/4 v5, 0x4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/c;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;I)V

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;->a(Lcom/xiaomi/gamecenter/sdk/web/i;)V

    goto/16 :goto_0

    :cond_3
    const v1, 0x9c42

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    const-string v1, "\u8f7d\u5165\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-direct {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;-><init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    const/16 v5, 0xc9

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/c;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;I)V

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/weblogin/WebLogin;->a(Lcom/xiaomi/gamecenter/sdk/web/i;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "common"

    const-string v2, "base"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x9c43

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sWxCpCallBack:Lcom/xiaomi/gamecenter/sdk/WxCpCallback;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x9c40

    const-string v3, "\u5fae\u4fe1\u767b\u5f55\u672a\u6ce8\u518c"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    const-string v1, "\u6b63\u5728\u767b\u5f55..."

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sWxCpCallBack:Lcom/xiaomi/gamecenter/sdk/WxCpCallback;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/WxCpCallback;->WxLogin(Lcom/xiaomi/gamecenter/sdk/WxCallBack;Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_6
    if-ne v0, v3, :cond_7

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_7
    const v1, 0xc353

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->f(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    const v1, 0xc354

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->g(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->m(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->n(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/j;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x9c40

    const-string v3, "\u6ca1\u6709\u7f51\u7edc,\u767b\u5f55\u5931\u8d25"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->i(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->o(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x7531

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    const-string v1, "\u8f7d\u5165\u4e2d..."

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->p(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    :cond_c
    :goto_1
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/ui/c;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    goto/16 :goto_0

    :cond_d
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto :goto_1

    :cond_e
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_c

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto :goto_1

    :cond_f
    const/16 v1, 0x7532

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->q(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4e20 -> :sswitch_0
        0x4e21 -> :sswitch_2
        0x4e22 -> :sswitch_3
        0x4e23 -> :sswitch_1
        0x7531 -> :sswitch_4
        0x9c40 -> :sswitch_5
        0xc350 -> :sswitch_6
        0xc351 -> :sswitch_7
    .end sparse-switch
.end method
