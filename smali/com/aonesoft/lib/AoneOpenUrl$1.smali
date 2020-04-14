.class Lcom/aonesoft/lib/AoneOpenUrl$1;
.super Landroid/webkit/WebChromeClient;
.source "AoneOpenUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aonesoft/lib/AoneOpenUrl;
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
    iput-object p1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    .line 123
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 3
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$0(Lcom/aonesoft/lib/AoneOpenUrl;)Landroid/webkit/ValueCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 176
    :goto_0
    return v1

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$1(Lcom/aonesoft/lib/AoneOpenUrl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hhh onShowFileChooser"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    iput-object p2, v1, Lcom/aonesoft/lib/AoneOpenUrl;->mUploadMessages:Landroid/webkit/ValueCallback;

    .line 171
    new-instance v0, Landroid/content/Intent;

    .line 172
    const-string v1, "android.intent.action.PICK"

    .line 173
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 171
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/aonesoft/lib/AoneOpenUrl;->access$3()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 176
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$0(Lcom/aonesoft/lib/AoneOpenUrl;)Landroid/webkit/ValueCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$1(Lcom/aonesoft/lib/AoneOpenUrl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hhh openFileChooser < 3.0"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1, p1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$2(Lcom/aonesoft/lib/AoneOpenUrl;Landroid/webkit/ValueCallback;)V

    .line 132
    new-instance v0, Landroid/content/Intent;

    .line 133
    const-string v1, "android.intent.action.PICK"

    .line 134
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 132
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/aonesoft/lib/AoneOpenUrl;->access$3()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "filePathCallback"    # Landroid/webkit/ValueCallback;
    .param p2, "acceptType"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$0(Lcom/aonesoft/lib/AoneOpenUrl;)Landroid/webkit/ValueCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$1(Lcom/aonesoft/lib/AoneOpenUrl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hhh openFileChooser 3.0+"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1, p1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$2(Lcom/aonesoft/lib/AoneOpenUrl;Landroid/webkit/ValueCallback;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    .line 146
    const-string v1, "android.intent.action.PICK"

    .line 147
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 145
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/aonesoft/lib/AoneOpenUrl;->access$3()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "filePathCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$0(Lcom/aonesoft/lib/AoneOpenUrl;)Landroid/webkit/ValueCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$1(Lcom/aonesoft/lib/AoneOpenUrl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hhh openFileChooser > 4.1.1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v1, p0, Lcom/aonesoft/lib/AoneOpenUrl$1;->this$0:Lcom/aonesoft/lib/AoneOpenUrl;

    invoke-static {v1, p1}, Lcom/aonesoft/lib/AoneOpenUrl;->access$2(Lcom/aonesoft/lib/AoneOpenUrl;Landroid/webkit/ValueCallback;)V

    .line 158
    new-instance v0, Landroid/content/Intent;

    .line 159
    const-string v1, "android.intent.action.PICK"

    .line 160
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 158
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/aonesoft/lib/AoneOpenUrl;->access$3()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
