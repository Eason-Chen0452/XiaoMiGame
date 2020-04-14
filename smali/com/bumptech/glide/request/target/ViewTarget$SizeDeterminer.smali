.class Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
.super Ljava/lang/Object;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeDeterminer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    }
.end annotation


# static fields
.field private static final PENDING_SIZE:I


# instance fields
.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    .line 177
    iput-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    .line 178
    return-void
.end method

.method private getTargetDimen(III)I
    .locals 3
    .param p1, "viewSize"    # I
    .param p2, "paramSize"    # I
    .param p3, "paddingSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 275
    sub-int v0, p1, p3

    .line 276
    .local v0, "adjustedViewSize":I
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    .end local v0    # "adjustedViewSize":I
    :goto_0
    return v0

    .line 280
    .restart local v0    # "adjustedViewSize":I
    :cond_0
    if-nez p2, :cond_1

    move v0, v1

    .line 281
    goto :goto_0

    .line 284
    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    .line 285
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 286
    :cond_2
    if-lez p2, :cond_3

    .line 287
    sub-int v0, p2, p3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 289
    goto :goto_0
.end method

.method private getTargetHeight()I
    .locals 5

    .prologue
    .line 261
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int v2, v3, v4

    .line 262
    .local v2, "verticalPadding":I
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 263
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_0

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    .local v0, "layoutParamSize":I
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v3, v0, v2}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getTargetDimen(III)I

    move-result v3

    return v3

    .line 263
    .end local v0    # "layoutParamSize":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTargetWidth()I
    .locals 5

    .prologue
    .line 268
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 269
    .local v0, "horizontalPadding":I
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 270
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_0

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 271
    .local v1, "layoutParamSize":I
    :goto_0
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-direct {p0, v3, v1, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getTargetDimen(III)I

    move-result v3

    return v3

    .line 270
    .end local v1    # "layoutParamSize":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSizeValid(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 294
    if-gtz p1, :cond_0

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewStateAndSizeValid(II)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isViewStateValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewStateValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 248
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    .line 249
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    .line 250
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 255
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    goto :goto_0

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyCbs(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 181
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 182
    .local v0, "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    goto :goto_0

    .line 184
    .end local v0    # "cb":Lcom/bumptech/glide/request/target/SizeReadyCallback;
    :cond_0
    return-void
.end method


# virtual methods
.method checkCurrentDimens()V
    .locals 3

    .prologue
    .line 188
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getTargetWidth()I

    move-result v1

    .line 193
    .local v1, "currentWidth":I
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getTargetHeight()I

    move-result v0

    .line 194
    .local v0, "currentHeight":I
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isViewStateAndSizeValid(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->notifyCbs(II)V

    .line 199
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    goto :goto_0
.end method

.method clearCallbacksAndListener()V
    .locals 2

    .prologue
    .line 233
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 234
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 237
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 238
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 239
    return-void
.end method

.method getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 4
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getTargetWidth()I

    move-result v1

    .line 204
    .local v1, "currentWidth":I
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getTargetHeight()I

    move-result v0

    .line 205
    .local v0, "currentHeight":I
    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isViewStateAndSizeValid(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-interface {p1, v1, v0}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_2
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    if-nez v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 217
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    new-instance v3, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-direct {v3, p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;-><init>(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V

    iput-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 218
    iget-object v3, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method removeCallback(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method
