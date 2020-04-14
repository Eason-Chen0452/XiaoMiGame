.class Lcom/aonesoft/lib/AoneFixHeadImg$4;
.super Ljava/lang/Object;
.source "AoneFixHeadImg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneFixHeadImg;->bindDialogEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    new-instance v0, Lcom/aonesoft/lib/AoneFixHeadImg$4$1;

    invoke-direct {v0, p0}, Lcom/aonesoft/lib/AoneFixHeadImg$4$1;-><init>(Lcom/aonesoft/lib/AoneFixHeadImg$4;)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 149
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$8()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 150
    return-void
.end method
