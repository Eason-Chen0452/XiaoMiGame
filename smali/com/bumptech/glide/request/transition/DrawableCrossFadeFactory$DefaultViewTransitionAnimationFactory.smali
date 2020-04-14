.class final Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$DefaultViewTransitionAnimationFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/transition/ViewTransition$ViewTransitionAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultViewTransitionAnimationFactory"
.end annotation


# instance fields
.field private final durationMillis:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "durationMillis"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$DefaultViewTransitionAnimationFactory;->durationMillis:I

    .line 72
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 77
    .local v0, "animation":Landroid/view/animation/AlphaAnimation;
    iget v1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeFactory$DefaultViewTransitionAnimationFactory;->durationMillis:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 78
    return-object v0
.end method
