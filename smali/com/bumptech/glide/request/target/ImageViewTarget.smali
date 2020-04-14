.class public abstract Lcom/bumptech/glide/request/target/ImageViewTarget;
.super Lcom/bumptech/glide/request/target/ViewTarget;
.source "ImageViewTarget.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/ViewTarget",
        "<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;"
    }
.end annotation


# instance fields
.field private animatable:Landroid/graphics/drawable/Animatable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 23
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    .line 24
    return-void
.end method

.method private maybeUpdateAnimatable(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Landroid/graphics/drawable/Animatable;

    .end local p1    # "resource":Ljava/lang/Object;, "TZ;"
    iput-object p1, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 121
    :goto_0
    return-void

    .line 119
    .restart local p1    # "resource":Ljava/lang/Object;, "TZ;"
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    goto :goto_0
.end method

.method private setResourceInternal(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->maybeUpdateAnimatable(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResource(Ljava/lang/Object;)V

    .line 112
    return-void
.end method


# virtual methods
.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResourceInternal(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResourceInternal(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    invoke-super {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResourceInternal(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 1
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/bumptech/glide/request/transition/Transition",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    .local p1, "resource":Ljava/lang/Object;, "TZ;"
    .local p2, "transition":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<-TZ;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/request/transition/Transition;->transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->setResourceInternal(Ljava/lang/Object;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;->maybeUpdateAnimatable(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 100
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->animatable:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 107
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 44
    .local p0, "this":Lcom/bumptech/glide/request/target/ImageViewTarget;, "Lcom/bumptech/glide/request/target/ImageViewTarget<TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method protected abstract setResource(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method
