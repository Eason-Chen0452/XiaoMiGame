.class public Lcom/aonesoft/lib/SaveImageInBackgroundData;
.super Ljava/lang/Object;
.source "SaveImageInBackgroundData.java"


# instance fields
.field context:Landroid/content/Context;

.field finisher:Ljava/lang/Runnable;

.field iconSize:I

.field image:Landroid/graphics/Bitmap;

.field imageUri:Landroid/net/Uri;

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearContext()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aonesoft/lib/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method clearImage()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/aonesoft/lib/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 20
    iput-object v0, p0, Lcom/aonesoft/lib/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/aonesoft/lib/SaveImageInBackgroundData;->iconSize:I

    .line 22
    return-void
.end method
