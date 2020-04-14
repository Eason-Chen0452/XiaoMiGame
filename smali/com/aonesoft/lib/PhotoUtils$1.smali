.class Lcom/aonesoft/lib/PhotoUtils$1;
.super Ljava/lang/Object;
.source "PhotoUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/PhotoUtils;->cropImageUri(Landroid/app/Activity;Landroid/net/Uri;Landroid/net/Uri;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$aspectX:I

.field private final synthetic val$aspectY:I

.field private final synthetic val$desUri:Landroid/net/Uri;

.field private final synthetic val$height:I

.field private final synthetic val$orgUri:Landroid/net/Uri;

.field private final synthetic val$requestCode:I

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(IILandroid/net/Uri;IILandroid/net/Uri;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$width:I

    iput p2, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$height:I

    iput-object p3, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$orgUri:Landroid/net/Uri;

    iput p4, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$aspectX:I

    iput p5, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$aspectY:I

    iput-object p6, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$desUri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$activity:Landroid/app/Activity;

    iput p8, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$requestCode:I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "desUri  width==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "desUri  height==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$orgUri:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "aspectX"

    iget v2, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$aspectX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v1, "aspectY"

    iget v2, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$aspectY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v1, "outputX"

    iget v2, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$width:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v1, "outputY"

    iget v2, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$height:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v1, "scale"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const-string v1, "scaleUpIfNeeded"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const-string v1, "output"

    iget-object v2, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$desUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    const-string v1, "return-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    const-string v1, "outputFormat"

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cropImageUri===="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$desUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/aonesoft/lib/PhotoUtils$1;->val$requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 85
    return-void
.end method
