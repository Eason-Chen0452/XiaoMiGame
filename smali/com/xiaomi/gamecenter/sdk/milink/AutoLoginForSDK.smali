.class public Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field private e:Landroid/content/Context;

.field private f:Lcom/xiaomi/gamecenter/sdk/ui/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MiGameSDK.AutoLoginForSDK"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/ui/c;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v7, 0xc8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "appInfo\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getNewAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "appId\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "AccountType\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_NOACCOUNT:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "AccountType is NOACCOUNT"

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "MilinkAccount\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a(J)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->setFuid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->a(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;

    move-result-object v1

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GameLastLoginInfo "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "\u767b\u5f55\u4fe1\u606f\u4e3a\u7a7a"

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a()I

    move-result v4

    if-eq v4, v7, :cond_6

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v2, "\u767b\u5f55\u4fe1\u606f\u5f02\u5e38"

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->a()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v4, v2, v3, v0, v5}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->b(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;->getRetCode()I

    move-result v5

    if-eq v5, v7, :cond_7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v1, "\u767b\u5f55\u4fe1\u606f\u5f02\u5e38\uff0c\u53ef\u80fd\u9700\u8981\u91cd\u65b0\u767b\u5f55\uff0c\u751a\u81f3\u6e05\u9664\u7f13\u5b58\u3002"

    invoke-interface {v0, v1, v5}, Lcom/xiaomi/gamecenter/sdk/ui/c;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    sget-object v5, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "milink service token "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;->getServiceToken()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GetServiceToken "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    move-result-object v0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "uid"

    invoke-virtual {v4, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "openId"

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b()J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "openSession"

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "accountType"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->d:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "isAuto"

    const/4 v3, 0x1

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->e:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/GameLastLoginInfo;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/c;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/AutoLoginForSDK;->f:Lcom/xiaomi/gamecenter/sdk/ui/c;

    const-string v2, "JSONException"

    invoke-interface {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/c;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
