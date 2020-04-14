.class public Lcom/aonesoft/lib/AoneConfigManager;
.super Ljava/lang/Object;
.source "AoneConfigManager.java"


# static fields
.field private static final IAP_SDKS:Ljava/lang/String; = "iap_sdks"

.field private static final IS_SMARTSPACE:Ljava/lang/String; = "is_smartspace"

.field private static final USER_SDKS:Ljava/lang/String; = "user_sdks"

.field private static final WEB_CARD_PAY_PAGE:Ljava/lang/String; = "web_card_pay_page"

.field private static final WEB_PAY_PORT:Ljava/lang/String; = "web_pay_port"

.field private static final WEB_PRODUCT_PAY_PAGE:Ljava/lang/String; = "web_product_pay_page"

.field private static isSmartspace:Ljava/lang/String;

.field private static mClassNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefaultIapSdk:Lcom/aonesoft/lib/IapInfo;

.field private static mIapSdkMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mIapSdkNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUserSdkNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWebPayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static webCardPayPage:Ljava/lang/String;

.field private static webPayPort:Ljava/lang/String;

.field private static webProductPayPage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mUserSdkNames:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mIapSdkNames:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mIapSdkMaps:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mTypeMap:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mClassNameMap:Ljava/util/HashMap;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mWebPayMap:Ljava/util/HashMap;

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->webPayPort:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->webCardPayPage:Ljava/lang/String;

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->webProductPayPage:Ljava/lang/String;

    .line 37
    const-string v0, "false"

    sput-object v0, Lcom/aonesoft/lib/AoneConfigManager;->isSmartspace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitAfterPay(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sdkName"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-object v1, Lcom/aonesoft/lib/AoneConfigManager;->mIapSdkMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aonesoft/lib/IapInfo;

    .line 184
    .local v0, "iapInfo":Lcom/aonesoft/lib/IapInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/aonesoft/lib/IapInfo;->commitAfterPay:Z

    goto :goto_0
.end method

.method public static getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sdkName"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mClassNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultIapInfo()Lcom/aonesoft/lib/IapInfo;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mDefaultIapSdk:Lcom/aonesoft/lib/IapInfo;

    return-object v0
.end method

.method public static getDefaultPaySdkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mDefaultIapSdk:Lcom/aonesoft/lib/IapInfo;

    iget-object v0, v0, Lcom/aonesoft/lib/IapInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public static getIapSdkNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mIapSdkNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getIsSmartspace()Z
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->isSmartspace:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getTypeByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getUserSdkNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->mUserSdkNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getWebCardPayPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->webCardPayPage:Ljava/lang/String;

    return-object v0
.end method

.method public static getWebPayPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->webPayPort:Ljava/lang/String;

    return-object v0
.end method

.method public static getWebProductPayPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/aonesoft/lib/AoneConfigManager;->webProductPayPage:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sput-object p0, Lcom/aonesoft/lib/AoneConfigManager;->sContext:Landroid/content/Context;

    .line 41
    invoke-static {}, Lcom/aonesoft/lib/AoneConfigManager;->loadPluginNames()V

    .line 42
    return-void
.end method

.method public static isDefaultPaySdk(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sdkName"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-static {}, Lcom/aonesoft/lib/AoneConfigManager;->getDefaultIapInfo()Lcom/aonesoft/lib/IapInfo;

    move-result-object v0

    .line 171
    .local v0, "iapInfo":Lcom/aonesoft/lib/IapInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/aonesoft/lib/IapInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 172
    :cond_0
    const/4 v1, 0x0

    .line 174
    :goto_0
    return v1

    :cond_1
    iget-object v1, v0, Lcom/aonesoft/lib/IapInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method private static loadIapConfigs(Ljava/lang/String;)V
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 86
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, "jsonObj":Lorg/json/JSONObject;
    const-string v6, "iap_sdks"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    const-string v6, "iap_sdks"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 89
    .local v3, "jsonArray":Lorg/json/JSONArray;
    sget-object v6, Lcom/aonesoft/lib/AoneConfigManager;->mIapSdkMaps:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 119
    .end local v1    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 91
    .restart local v1    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "jsonObj":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 92
    .local v5, "obj":Lorg/json/JSONObject;
    new-instance v2, Lcom/aonesoft/lib/IapInfo;

    invoke-direct {v2}, Lcom/aonesoft/lib/IapInfo;-><init>()V

    .line 93
    .local v2, "iapInfo":Lcom/aonesoft/lib/IapInfo;
    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v2, Lcom/aonesoft/lib/IapInfo;->name:Ljava/lang/String;

    .line 94
    const-string v6, "class_name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/aonesoft/lib/IapInfo;->className:Ljava/lang/String;

    .line 95
    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/aonesoft/lib/IapInfo;->type:Ljava/lang/String;

    .line 96
    sget-object v6, Lcom/aonesoft/lib/AoneConfigManager;->mTypeMap:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/aonesoft/lib/IapInfo;->name:Ljava/lang/String;

    iget-object v8, v2, Lcom/aonesoft/lib/IapInfo;->type:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v6, "always_show"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    const-string v6, "always_show"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/aonesoft/lib/IapInfo;->alwaysShow:Z

    .line 100
    :cond_2
    const-string v6, "defalut"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 101
    const-string v6, "defalut"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/aonesoft/lib/IapInfo;->isDefaultSdk:Z

    .line 102
    sput-object v2, Lcom/aonesoft/lib/AoneConfigManager;->mDefaultIapSdk:Lcom/aonesoft/lib/IapInfo;

    .line 104
    :cond_3
    const-string v6, "no_product_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 105
    const-string v6, "no_product_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/aonesoft/lib/IapInfo;->noNeedProdcutId:Z

    .line 107
    :cond_4
    const-string v6, "commit_after_pay"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 108
    const-string v6, "commit_after_pay"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v2, Lcom/aonesoft/lib/IapInfo;->commitAfterPay:Z

    .line 110
    :cond_5
    sget-object v6, Lcom/aonesoft/lib/AoneConfigManager;->mIapSdkMaps:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/aonesoft/lib/IapInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v6, Lcom/aonesoft/lib/AoneConfigManager;->mClassNameMap:Ljava/util/HashMap;

    iget-object v7, v2, Lcom/aonesoft/lib/IapInfo;->name:Ljava/lang/String;

    iget-object v8, v2, Lcom/aonesoft/lib/IapInfo;->className:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v6, Lcom/aonesoft/lib/AoneConfigManager;->mIapSdkNames:Ljava/util/ArrayList;

    iget-object v7, v2, Lcom/aonesoft/lib/IapInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 115
    .end local v1    # "i":I
    .end local v2    # "iapInfo":Lcom/aonesoft/lib/IapInfo;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private static loadPluginNames()V
    .locals 6

    .prologue
    .line 45
    const-string v4, "AoneConfigManager"

    const-string v5, "loadPluginNames begin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :try_start_0
    sget-object v4, Lcom/aonesoft/lib/AoneConfigManager;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "aoneconfig.json"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 48
    .local v2, "is":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 49
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 50
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 51
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 53
    invoke-static {v3}, Lcom/aonesoft/lib/AoneConfigManager;->loadUserConfigs(Ljava/lang/String;)V

    .line 54
    invoke-static {v3}, Lcom/aonesoft/lib/AoneConfigManager;->loadIapConfigs(Ljava/lang/String;)V

    .line 55
    invoke-static {v3}, Lcom/aonesoft/lib/AoneConfigManager;->loadWebPayConfigs(Ljava/lang/String;)V

    .line 56
    invoke-static {v3}, Lcom/aonesoft/lib/AoneConfigManager;->loadSmartSpace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v0    # "buffer":[B
    .end local v3    # "jsonStr":Ljava/lang/String;
    :goto_0
    const-string v4, "AoneConfigManager"

    const-string v5, "loadPluginNames end"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadSmartSpace(Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 142
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "is_smartspace"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "is_smartspace"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/aonesoft/lib/AoneConfigManager;->isSmartspace:Ljava/lang/String;

    .line 151
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 146
    .restart local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "false"

    sput-object v2, Lcom/aonesoft/lib/AoneConfigManager;->isSmartspace:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static loadUserConfigs(Ljava/lang/String;)V
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 65
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, "jsonObj":Lorg/json/JSONObject;
    const-string v8, "user_sdks"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    const-string v8, "user_sdks"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 68
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_1

    .line 82
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-void

    .line 69
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v4    # "jsonObj":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 70
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 71
    .local v5, "name":Ljava/lang/String;
    const-string v8, "class_name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "className":Ljava/lang/String;
    const-string v8, "type"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 73
    .local v7, "type":Ljava/lang/String;
    sget-object v8, Lcom/aonesoft/lib/AoneConfigManager;->mTypeMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v8, Lcom/aonesoft/lib/AoneConfigManager;->mClassNameMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v8, Lcom/aonesoft/lib/AoneConfigManager;->mUserSdkNames:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "className":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static loadWebPayConfigs(Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "jsonObj":Lorg/json/JSONObject;
    const-string v2, "web_pay_port"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "web_pay_port"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/aonesoft/lib/AoneConfigManager;->webPayPort:Ljava/lang/String;

    .line 127
    :cond_0
    const-string v2, "web_card_pay_page"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    const-string v2, "web_card_pay_page"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/aonesoft/lib/AoneConfigManager;->webCardPayPage:Ljava/lang/String;

    .line 130
    :cond_1
    const-string v2, "web_product_pay_page"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    const-string v2, "web_product_pay_page"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/aonesoft/lib/AoneConfigManager;->webProductPayPage:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static notNeedProductId(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sdkName"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v1, Lcom/aonesoft/lib/AoneConfigManager;->mIapSdkMaps:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aonesoft/lib/IapInfo;

    .line 179
    .local v0, "iapInfo":Lcom/aonesoft/lib/IapInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/aonesoft/lib/IapInfo;->noNeedProdcutId:Z

    goto :goto_0
.end method
