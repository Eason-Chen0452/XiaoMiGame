.class public Lcom/bumptech/glide/request/target/FixedSizeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FixedSizeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;
    }
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private mutated:Z

.field private state:Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

.field private wrapped:Landroid/graphics/drawable/Drawable;

.field private final wrappedRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "wrapped"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;II)V

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/target/FixedSizeDrawable;-><init>(Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "state"    # Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;
    .param p2, "wrapped"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->state:Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

    .line 36
    invoke-static {p2}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->matrix:Landroid/graphics/Matrix;

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrappedRect:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->bounds:Landroid/graphics/RectF;

    .line 44
    return-void
.end method

.method private updateMatrix()V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrappedRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->bounds:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 62
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 103
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 161
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 162
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 164
    return-void
.end method

.method public getAlpha()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->state:Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->state:Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

    iget v0, v0, Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->state:Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

    iget v0, v0, Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;->width:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 143
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 144
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->mutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 185
    new-instance v0, Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

    iget-object v1, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->state:Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;-><init>(Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->state:Lcom/bumptech/glide/request/target/FixedSizeDrawable$State;

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->mutated:Z

    .line 188
    :cond_0
    return-object p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 155
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 156
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 169
    return-void
.end method

.method public setBounds(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->bounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 50
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->updateMatrix()V

    .line 51
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 57
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->updateMatrix()V

    .line 58
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 67
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 98
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 174
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 77
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 82
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 149
    iget-object v0, p0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
