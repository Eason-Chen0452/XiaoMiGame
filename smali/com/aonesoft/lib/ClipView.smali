.class public Lcom/aonesoft/lib/ClipView;
.super Landroid/view/View;
.source "ClipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;
    }
.end annotation


# instance fields
.field private borderPaint:Landroid/graphics/Paint;

.field private clipBorderWidth:I

.field private clipHeight:I

.field private clipLeftMargin:I

.field private clipRatio:D

.field private clipTopMargin:I

.field private clipWidth:I

.field private customTopBarHeight:I

.field private isSetMargin:Z

.field private listenerComplete:Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widthPixels"    # I

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipView;->paint:Landroid/graphics/Paint;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipView;->borderPaint:Landroid/graphics/Paint;

    .line 16
    iput v2, p0, Lcom/aonesoft/lib/ClipView;->customTopBarHeight:I

    .line 18
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/aonesoft/lib/ClipView;->clipRatio:D

    .line 24
    iput v2, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    .line 26
    iput v2, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipBorderWidth:I

    .line 29
    iput-boolean v2, p0, Lcom/aonesoft/lib/ClipView;->isSetMargin:Z

    .line 34
    add-int/lit8 v0, p2, -0x2

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    .line 35
    add-int/lit8 v0, p2, -0x2

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipView;->paint:Landroid/graphics/Paint;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipView;->borderPaint:Landroid/graphics/Paint;

    .line 16
    iput v2, p0, Lcom/aonesoft/lib/ClipView;->customTopBarHeight:I

    .line 18
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/aonesoft/lib/ClipView;->clipRatio:D

    .line 24
    iput v2, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    .line 26
    iput v2, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipBorderWidth:I

    .line 29
    iput-boolean v2, p0, Lcom/aonesoft/lib/ClipView;->isSetMargin:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipView;->paint:Landroid/graphics/Paint;

    .line 13
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aonesoft/lib/ClipView;->borderPaint:Landroid/graphics/Paint;

    .line 16
    iput v2, p0, Lcom/aonesoft/lib/ClipView;->customTopBarHeight:I

    .line 18
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/aonesoft/lib/ClipView;->clipRatio:D

    .line 24
    iput v2, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    .line 26
    iput v2, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipBorderWidth:I

    .line 29
    iput-boolean v2, p0, Lcom/aonesoft/lib/ClipView;->isSetMargin:Z

    .line 44
    return-void
.end method


# virtual methods
.method public addOnDrawCompleteListener(Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;)V
    .locals 0
    .param p1, "listener"    # Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/aonesoft/lib/ClipView;->listenerComplete:Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;

    .line 145
    return-void
.end method

.method public getClipHeight()I
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    iget v1, p0, Lcom/aonesoft/lib/ClipView;->clipBorderWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getClipLeftMargin()I
    .locals 2

    .prologue
    .line 126
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    iget v1, p0, Lcom/aonesoft/lib/ClipView;->clipBorderWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getClipRatio()D
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/aonesoft/lib/ClipView;->clipRatio:D

    return-wide v0
.end method

.method public getClipTopMargin()I
    .locals 2

    .prologue
    .line 135
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    iget v1, p0, Lcom/aonesoft/lib/ClipView;->clipBorderWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getClipWidth()I
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    iget v1, p0, Lcom/aonesoft/lib/ClipView;->clipBorderWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCustomTopBarHeight()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->customTopBarHeight:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p0}, Lcom/aonesoft/lib/ClipView;->getWidth()I

    move-result v9

    .line 51
    .local v9, "width":I
    invoke-virtual {p0}, Lcom/aonesoft/lib/ClipView;->getHeight()I

    move-result v8

    .line 53
    .local v8, "height":I
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    if-eq v0, v10, :cond_0

    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    if-ne v0, v10, :cond_1

    .line 54
    :cond_0
    add-int/lit8 v0, v9, -0x32

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    .line 55
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/aonesoft/lib/ClipView;->clipRatio:D

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    .line 57
    if-le v9, v8, :cond_1

    .line 58
    add-int/lit8 v0, v8, -0x32

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    .line 59
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/aonesoft/lib/ClipView;->clipRatio:D

    div-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    .line 63
    :cond_1
    iget-boolean v0, p0, Lcom/aonesoft/lib/ClipView;->isSetMargin:Z

    if-nez v0, :cond_2

    .line 64
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    sub-int v0, v9, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    .line 65
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    sub-int v0, v8, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/aonesoft/lib/ClipView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 70
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->customTopBarHeight:I

    int-to-float v2, v0

    int-to-float v3, v9

    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aonesoft/lib/ClipView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 72
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    int-to-float v2, v0

    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    int-to-float v3, v0

    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    .line 73
    iget v4, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aonesoft/lib/ClipView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 72
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    iget v2, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    add-int/2addr v0, v2

    int-to-float v3, v0

    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    int-to-float v4, v0

    int-to-float v5, v9

    .line 76
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    iget v2, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    add-int/2addr v0, v2

    int-to-float v6, v0

    iget-object v7, p0, Lcom/aonesoft/lib/ClipView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    .line 75
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 78
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    iget v2, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    add-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v8

    iget-object v5, p0, Lcom/aonesoft/lib/ClipView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget-object v0, p0, Lcom/aonesoft/lib/ClipView;->borderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/aonesoft/lib/ClipView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/aonesoft/lib/ClipView;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aonesoft/lib/ClipView;->clipBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    int-to-float v1, v0

    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    int-to-float v2, v0

    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    .line 85
    iget v3, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    iget v4, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aonesoft/lib/ClipView;->borderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 84
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    iget-object v0, p0, Lcom/aonesoft/lib/ClipView;->listenerComplete:Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/aonesoft/lib/ClipView;->listenerComplete:Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;

    invoke-interface {v0}, Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;->onDrawCompelete()V

    .line 90
    :cond_3
    return-void
.end method

.method public removeOnDrawCompleteListener()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aonesoft/lib/ClipView;->listenerComplete:Lcom/aonesoft/lib/ClipView$OnDrawListenerComplete;

    .line 149
    return-void
.end method

.method public setClipHeight(I)V
    .locals 0
    .param p1, "clipHeight"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/aonesoft/lib/ClipView;->clipHeight:I

    .line 123
    return-void
.end method

.method public setClipLeftMargin(I)V
    .locals 1
    .param p1, "clipLeftMargin"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/aonesoft/lib/ClipView;->clipLeftMargin:I

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aonesoft/lib/ClipView;->isSetMargin:Z

    .line 132
    return-void
.end method

.method public setClipRatio(D)V
    .locals 1
    .param p1, "clipRatio"    # D

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/aonesoft/lib/ClipView;->clipRatio:D

    .line 106
    return-void
.end method

.method public setClipTopMargin(I)V
    .locals 1
    .param p1, "clipTopMargin"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/aonesoft/lib/ClipView;->clipTopMargin:I

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aonesoft/lib/ClipView;->isSetMargin:Z

    .line 141
    return-void
.end method

.method public setClipWidth(I)V
    .locals 0
    .param p1, "clipWidth"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/aonesoft/lib/ClipView;->clipWidth:I

    .line 115
    return-void
.end method

.method public setCustomTopBarHeight(I)V
    .locals 0
    .param p1, "customTopBarHeight"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/aonesoft/lib/ClipView;->customTopBarHeight:I

    .line 98
    return-void
.end method
