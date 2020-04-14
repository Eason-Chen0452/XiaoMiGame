.class public final Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
.super Lcom/bumptech/glide/TransitionOptions;
.source "DrawableTransitionOptions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/TransitionOptions",
        "<",
        "Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/TransitionOptions;-><init>()V

    return-void
.end method

.method public static with(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/transition/TransitionFactory",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "transitionFactory":Lcom/bumptech/glide/request/transition/TransitionFactory;, "Lcom/bumptech/glide/request/transition/TransitionFactory<Landroid/graphics/drawable/Drawable;>;"
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    return-object v0
.end method

.method public static withCrossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(I)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .param p0, "duration"    # I

    .prologue
    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(I)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(II)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .param p0, "animationId"    # I
    .param p1, "duration"    # I

    .prologue
    .line 38
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(II)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .param p0, "builder"    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    .prologue
    .line 58
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public static withCrossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .param p0, "drawableCrossFadeFactory"    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    .prologue
    .line 48
    new-instance v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public crossFade()Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(I)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 88
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(II)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .param p1, "animationId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 102
    new-instance v0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;-><init>(I)V

    .line 104
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->setDefaultAnimationId(I)Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .param p1, "builder"    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$Builder;->build()Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    move-result-object v0

    return-object v0
.end method

.method public crossFade(Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;)Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;
    .locals 1
    .param p1, "drawableCrossFadeFactory"    # Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;->transition(Lcom/bumptech/glide/request/transition/TransitionFactory;)Lcom/bumptech/glide/TransitionOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/drawable/DrawableTransitionOptions;

    return-object v0
.end method
