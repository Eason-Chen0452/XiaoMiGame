.class public Lcom/aonesoft/lib/AoneUpdateWithAppVersion;
.super Ljava/lang/Object;
.source "AoneUpdateWithAppVersion.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AoneUpdateWithAppVersion"

.field private static mAnnounceDialog:Landroid/app/Dialog;

.field private static mAnnounceDialogView:Landroid/view/View;

.field private static mContext:Landroid/content/Context;

.field private static mUpdateDialog:Landroid/app/Dialog;

.field private static mUpdateDialogView:Landroid/view/View;

.field private static mWebview:Landroid/webkit/WebView;

.field private static wcc:Landroid/webkit/WebChromeClient;

.field private static webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$1;

    invoke-direct {v0}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$1;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->webViewClient:Landroid/webkit/WebViewClient;

    .line 258
    new-instance v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$2;

    invoke-direct {v0}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$2;-><init>()V

    sput-object v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->wcc:Landroid/webkit/WebChromeClient;

    .line 272
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 32
    sput-object p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mUpdateDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$3()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mUpdateDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$4(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mUpdateDialogView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$5()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mUpdateDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 123
    invoke-static {p0, p1}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->bindUpdateDialogEvent(Ljava/lang/String;I)V

    return-void
.end method

.method private static bindUpdateDialogEvent(Ljava/lang/String;I)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "updateType"    # I

    .prologue
    .line 125
    sget-object v2, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mUpdateDialogView:Landroid/view/View;

    .line 126
    sget-object v3, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "aonesdk_button_cancel"

    invoke-static {v3, v4, v5}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 127
    .local v0, "cancelButton":Landroid/widget/Button;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateType=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    sget-object v2, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mUpdateDialogView:Landroid/view/View;

    .line 135
    sget-object v3, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    const-string v4, "id"

    const-string v5, "aonesdk_button_confirm"

    invoke-static {v3, v4, v5}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 141
    .local v1, "confirmButton":Landroid/widget/Button;
    new-instance v2, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;

    invoke-direct {v2, p1}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    new-instance v2, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$5;

    invoke-direct {v2, p0}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 44
    :try_start_0
    sget-object v8, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 45
    .local v4, "pm":Landroid/content/pm/PackageManager;
    sget-object v8, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 46
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 47
    .local v7, "versionName":Ljava/lang/String;
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 48
    .local v6, "versionCode":I
    const-string v8, "AoneUpdateWithAppVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getAppVersion=1=versionName="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v8, "AoneUpdateWithAppVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getAppVersion=1=versionCode="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "subVersionNames":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v5

    if-lt v1, v8, :cond_0

    .line 59
    array-length v8, v5

    add-int/lit8 v2, v8, -0x1

    .line 60
    .local v2, "num":I
    const-string v8, "AoneUpdateWithAppVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "num=="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-ne v2, v12, :cond_1

    .line 62
    const-string v8, "AoneUpdateWithAppVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getAppVersion=2=versionName=="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .end local v1    # "i":I
    .end local v2    # "num":I
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "subVersionNames":[Ljava/lang/String;
    .end local v6    # "versionCode":I
    .end local v7    # "versionName":Ljava/lang/String;
    :goto_1
    return-object v7

    .line 53
    .restart local v1    # "i":I
    .restart local v3    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v5    # "subVersionNames":[Ljava/lang/String;
    .restart local v6    # "versionCode":I
    .restart local v7    # "versionName":Ljava/lang/String;
    :cond_0
    :try_start_1
    aget-object v8, v5, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "AoneUpdateWithAppVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getAppVersion=6=versionName=="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    const-string v7, "0.0.0"

    goto :goto_1

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "num":I
    :cond_1
    if-ne v2, v11, :cond_2

    .line 65
    :try_start_3
    const-string v8, "AoneUpdateWithAppVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getAppVersion=3=versionName=="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 67
    :cond_2
    if-nez v2, :cond_3

    .line 68
    const-string v8, "AoneUpdateWithAppVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getAppVersion=4=versionName=="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".0.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 70
    :cond_3
    const/4 v8, 0x3

    if-lt v2, v8, :cond_4

    .line 71
    const-string v8, "AoneUpdateWithAppVersion"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getAppVersion=5=versionName=="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v7

    .line 73
    goto/16 :goto_1

    .line 75
    .end local v1    # "i":I
    .end local v2    # "num":I
    .end local v3    # "pi":Landroid/content/pm/PackageInfo;
    .end local v5    # "subVersionNames":[Ljava/lang/String;
    .end local v6    # "versionCode":I
    .end local v7    # "versionName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 76
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 78
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const-string v7, "1.0.0"

    goto/16 :goto_1
.end method

.method private static getDialogLayoutParams(Landroid/app/Dialog;)Landroid/view/WindowManager$LayoutParams;
    .locals 5
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 174
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 176
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v4, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 177
    sget-object v4, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 178
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 179
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 180
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 181
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 182
    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 183
    return-object v2
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sput-object p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private static initUpdateWebView(Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 210
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialogView:Landroid/view/View;

    sget-object v2, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "announce_webview"

    invoke-static {v2, v3, v4}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sput-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    .line 211
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 212
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 214
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 215
    .local v0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 216
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 217
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 218
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    sget-object v2, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 219
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    sget-object v2, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->wcc:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 220
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 221
    sget-object v1, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static showAnnounceDialog(Ljava/lang/String;)V
    .locals 11
    .param p0, "announceURL"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 187
    new-instance v5, Landroid/app/AlertDialog$Builder;

    sget-object v6, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    sput-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialog:Landroid/app/Dialog;

    .line 188
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 189
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 190
    sget-object v6, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    const-string v7, "layout"

    const-string v8, "aonesdk_announce_dialog"

    invoke-static {v6, v7, v8}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 189
    invoke-static {v5, v6, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    sput-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialogView:Landroid/view/View;

    .line 191
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 192
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialogView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 194
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 196
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 198
    .local v1, "dm":Landroid/util/DisplayMetrics;
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 199
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    .line 200
    .local v4, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 201
    .local v0, "display":Landroid/view/Display;
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 202
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 203
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 204
    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 205
    sget-object v5, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->mAnnounceDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 206
    invoke-static {p0}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->initUpdateWebView(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static showUpdateDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "updateUrl"    # Ljava/lang/String;
    .param p1, "updateText"    # Ljava/lang/String;
    .param p2, "updateType"    # I

    .prologue
    .line 88
    new-instance v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$3;

    invoke-direct {v0, p1, p0, p2}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$3;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method
