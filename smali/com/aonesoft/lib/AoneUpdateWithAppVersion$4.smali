.class Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;
.super Ljava/lang/Object;
.source "AoneUpdateWithAppVersion.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/AoneUpdateWithAppVersion;->bindUpdateDialogEvent(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$updateType:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;->val$updateType:I

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    new-instance v0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4$1;

    iget v1, p0, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;->val$updateType:I

    invoke-direct {v0, p0, v1}, Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4$1;-><init>(Lcom/aonesoft/lib/AoneUpdateWithAppVersion$4;I)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method
