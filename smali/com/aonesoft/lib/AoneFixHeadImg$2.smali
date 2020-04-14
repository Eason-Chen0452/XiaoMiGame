.class Lcom/aonesoft/lib/AoneFixHeadImg$2;
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
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$14()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$15(Landroid/net/Uri;)V

    .line 126
    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$6()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {}, Lcom/aonesoft/lib/AoneFixHeadImg;->access$16()Landroid/net/Uri;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-static {v0, v1, v2}, Lcom/aonesoft/lib/PhotoUtils;->takePicture(Landroid/app/Activity;Landroid/net/Uri;I)V

    .line 127
    return-void
.end method
