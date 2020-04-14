.class Lcom/aonesoft/lib/AoneOpenUrl$3;
.super Landroid/webkit/WebViewClient;
.source "AoneOpenUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneOpenUrl;->loadUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aonesoft/lib/AoneOpenUrl;


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/AoneOpenUrl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/AoneOpenUrl$3;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    .line 88
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 102
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/aonesoft/lib/AoneOpenUrl$3;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v2}, Lcom/aonesoft/lib/AoneOpenUrl;->access$1(Lcom/aonesoft/lib/AoneOpenUrl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "title is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_0

    const-string v2, "www."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 109
    :cond_0
    const-string v0, ""

    .line 111
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    invoke-static {}, Lcom/aonesoft/lib/AoneOpenUrl;->access$3()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/aonesoft/lib/AoneOpenUrl;->access$3()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "urlopen_title"

    invoke-static {v3, v4, v5}, Lcom/aonesoft/lib/AoneUiUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, "titleText":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .end local v1    # "titleText":Landroid/widget/TextView;
    :cond_2
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$3;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$1(Lcom/aonesoft/lib/AoneOpenUrl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AoneOpenUrl shouldOverrideUrlLoading  url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v1, "https://pay.ipaynow.cn/wxpay"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://mclient.alipay.com"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$3;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-virtual {v1, v0}, Lcom/aonesoft/lib/AoneOpenUrl;->startActivity(Landroid/content/Intent;)V

    .line 96
    const/4 v1, 0x1

    .line 98
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
