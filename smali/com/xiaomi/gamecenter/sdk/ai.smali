.class final Lcom/xiaomi/gamecenter/sdk/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ai;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ai;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ai;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    const-string v0, "MiGameSDK.MiCommplatform"

    const-string v1, "onPageClose"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ai;->c:Z

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->d()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v1

    const-string v0, "MiGameSDK.MiFloatHelper"

    const-string v2, "requestRedPoint"

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->e()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->e()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/utils/a;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.xiaomi.gamecenter.sdk.mifloat.redpoint"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.xiaomi.gamecenter.sdk.service"

    const-string v6, "com.xiaomi.gamecenter.sdk.service.MiFloatPointReceiver"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "appInfo"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "pkgName"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "st"

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "milink"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "lastLoginTime"

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->h()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget-object v5, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v3, v5, :cond_2

    const-string v5, "accountType"

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const-string v5, "session"

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "MiGameSDK.MiFloatHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appInfo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MiGameSDK.MiFloatHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pkgName "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MiGameSDK.MiFloatHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "st "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "MiGameSDK.MiFloatHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "milink "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "lastLoginTime "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->h()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "accountType "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "intent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v5, "accountType"

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MiGameSDK.MiFloatHelper"

    const-string v2, "reqRedPoint error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;)V
    .locals 3

    const-string v0, "MiGameSDK.MiCommplatform"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;->getMarqueeMsg()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ai;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->b()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;->getMarqueeMsg()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;->isMifloatPoint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->g()V

    :goto_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    const-string v2, "onReceive error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->h()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    const-string v0, "MiGameSDK.MiCommplatform"

    const-string v1, "onPageOpen"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ai;->c:Z

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->i()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
