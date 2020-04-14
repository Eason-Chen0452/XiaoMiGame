.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;
.super Ljava/lang/Object;
.source "DrawableCrossFadeTransition.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/Transition",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final defaultAnimation:Lcom/bumptech/glide/request/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/transition/Transition",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final duration:I

.field private final isCrossFadeEnabled:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/transition/Transition;IZ)V
    .locals 0
    .param p2, "duration"    # I
    .param p3, "isCrossFadeEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/Transition",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "defaultAnimation":Lcom/bumptech/glide/request/transition/Transition;, "Lcom/bumptech/glide/request/transition/Transition<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->defaultAnimation:Lcom/bumptech/glide/request/transition/Transition;

    .line 36
    iput p2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->duration:I

    .line 37
    iput-boolean p3, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->isCrossFadeEnabled:Z

    .line 38
    return-void
.end method


# virtual methods
.method public transition(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 5
    .param p1, "current"    # Landroid/graphics/drawable/Drawable;
    .param p2, "adapter"    # Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 53
    invoke-interface {p2}, Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    .local v0, "previous":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v4, v3

    aput-object p1, v4, v2

    invoke-direct {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 57
    .local v1, "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    iget-boolean v3, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->isCrossFadeEnabled:Z

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 58
    iget v3, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->duration:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 59
    invoke-interface {p2, v1}, Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    .end local v1    # "transitionDrawable":Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return v2

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->defaultAnimation:Lcom/bumptech/glide/request/transition/Transition;

    invoke-interface {v2, p1, p2}, Lcom/bumptech/glide/request/transition/Transition;->transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z

    move v2, v3

    .line 63
    goto :goto_0
.end method

.method public bridge synthetic transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 1

    .prologue
    .line 13
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->transition(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z

    move-result v0

    return v0
.end method
