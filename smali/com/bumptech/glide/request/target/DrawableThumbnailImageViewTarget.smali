.class public Lcom/bumptech/glide/request/target/DrawableThumbnailImageViewTarget;
.super Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;
.source "DrawableThumbnailImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "resource"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 16
    return-object p1
.end method

.method protected bridge synthetic getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/DrawableThumbnailImageViewTarget;->getDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
