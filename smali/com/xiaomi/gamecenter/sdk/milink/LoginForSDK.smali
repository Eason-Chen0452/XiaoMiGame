.class public Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

.field private b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field private c:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/gamecenter/sdk/ui/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/ui/c;Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->a:Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

    invoke-virtual {p3}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->e()Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->c:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->e:Lcom/xiaomi/gamecenter/sdk/ui/c;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v8, 0xc8

    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "login accountType=======>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->a:Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->a()I

    move-result v1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->a:Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->a:Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->a:Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->c:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/milink/AccountUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->e:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "\u767b\u5f55\u8fd4\u56de\u4e3a\u7a7a\u3002"

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getRetCode()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->e:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v2, "\u767b\u5f55\u8fd4\u56de\u5f02\u5e38\u3002"

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getRetCode()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/ui/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "oauth uid=====>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getUuid()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Lcom/google/protobuf/GeneratedMessage;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getUuid()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a(J)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->setFuid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getServiceToken()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->c:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v4, v2, v3, v1, v5}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->a(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->e:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "\u767b\u5f55\u4fe1\u606f\u4e3a\u7a7a\uff0c\u53ef\u80fd\u9700\u8981\u91cd\u65b0\u767b\u5f55\uff0c\u751a\u81f3\u6e05\u9664\u7f13\u5b58\u3002"

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a()I

    move-result v5

    if-eq v5, v8, :cond_5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->e:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "\u767b\u5f55\u4fe1\u606f\u5f02\u5e38\uff0c\u53ef\u80fd\u9700\u8981\u91cd\u65b0\u767b\u5f55\uff0c\u751a\u81f3\u6e05\u9664\u7f13\u5b58\u3002"

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v5

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->d()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(J)V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->c:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v5, v2, v3, v1, v6}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->b(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;->getRetCode()I

    move-result v6

    if-eq v6, v8, :cond_6

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->e:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "\u767b\u5f55\u4fe1\u606f\u5f02\u5e38\uff0c\u53ef\u80fd\u9700\u8981\u91cd\u65b0\u767b\u5f55\uff0c\u751a\u81f3\u6e05\u9664\u7f13\u5b58\u3002"

    invoke-interface {v0, v1, v6}, Lcom/xiaomi/gamecenter/sdk/ui/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    const-string v6, "MiGameSDK.LoginForSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "milink service token "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;->getServiceToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiGameSDK.LoginForSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GetServiceToken "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-static {v6}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-static {v5, v6}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    move-result-object v5

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->c:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v7}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getNewAppId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v7, "uid"

    invoke-virtual {v6, v7, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "openId"

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b()J

    move-result-wide v8

    invoke-virtual {v6, v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "openSession"

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "accountType"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "isAuto"

    const/4 v3, 0x0

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "serviceToken"

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "nickname"

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sex"

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getSex()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "img"

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getHeadimgurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->d:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->e:Lcom/xiaomi/gamecenter/sdk/ui/c;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;->e:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v2, "JSONException"

    invoke-interface {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/c;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
