.class final Lmain/GameExt$3;
.super Ljava/lang/Object;
.source "GameExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmain/GameExt;->hideNewsView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    sget-object v0, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 110
    :cond_0
    sget-object v0, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 111
    sget-object v0, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    sget-object v1, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 112
    sget-object v0, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 113
    sget-object v0, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    sget-object v0, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFocus()V

    .line 116
    sget-object v0, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 118
    sput-object v2, Lmain/GameExt;->portalayout:Landroid/widget/LinearLayout;

    .line 119
    sput-object v2, Lmain/GameExt;->portalview:Landroid/webkit/WebView;

    goto :goto_0
.end method
