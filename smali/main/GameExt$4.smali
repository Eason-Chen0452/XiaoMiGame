.class final Lmain/GameExt$4;
.super Ljava/lang/Object;
.source "GameExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmain/GameExt;->showNewsView(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$height:I

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lmain/GameExt$4;->val$width:I

    iput p2, p0, Lmain/GameExt$4;->val$height:I

    iput-object p3, p0, Lmain/GameExt$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 127
    sget-object v4, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 166
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    sget-object v5, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sput-object v4, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    .line 131
    sget-object v4, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 132
    sget-object v4, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 133
    sget-object v4, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    sget-object v5, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5, v6}, Lorg/cocos2dx/lib/Cocos2dxActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v4, Landroid/webkit/WebView;

    sget-object v5, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-direct {v4, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    .line 137
    sget-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 138
    sget-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 139
    sget-object v4, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    sget-object v5, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    sget-object v4, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    invoke-virtual {v4}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 142
    .local v1, "mDisplay":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 143
    .local v3, "screenWidth_":I
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 145
    .local v2, "screenHeight_":I
    sget-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    .line 146
    invoke-virtual {v4}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 147
    .local v0, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lmain/GameExt$4;->val$width:I

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 148
    iget v4, p0, Lmain/GameExt$4;->val$height:I

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 149
    iget v4, p0, Lmain/GameExt$4;->val$width:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 150
    iget v4, p0, Lmain/GameExt$4;->val$height:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 151
    sget-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    iget-object v5, p0, Lmain/GameExt$4;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 153
    sget-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 154
    sget-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 155
    sget-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 156
    sget-object v4, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    new-instance v5, Lmain/GameExt$4$1;

    invoke-direct {v5, p0}, Lmain/GameExt$4$1;-><init>(Lmain/GameExt$4;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_0
.end method
