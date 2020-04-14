.class public Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;
.super Landroid/widget/TextView;


# static fields
.field private static final FIRST_SCROLL_DELAY_DEFAULT:I = 0x3e8

.field private static final ROLLING_INTERVAL_DEFAULT:I = 0x14

.field public static final SCROLL_FOREVER:I = 0x0

.field public static final SCROLL_ONCE:I = 0x1


# instance fields
.field private mFirst:Z

.field private mFirstScrollDelay:I

.field private mPaused:Z

.field private mRollingInterval:I

.field private mScrollMode:I

.field private mScroller:Landroid/widget/Scroller;

.field private mXPaused:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mXPaused:I

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mFirst:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mXPaused:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    return p1
.end method

.method private calculateScrollingLen()I
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/16 v4, 0x3e8

    const/16 v3, 0x14

    const/4 v2, 0x0

    const-string v0, "MarqueeTextView"

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->j(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_0

    iput v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mRollingInterval:I

    iput v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScrollMode:I

    iput v4, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mFirstScrollDelay:I

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->setSingleLine()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "MarqueeTextView_scroll_interval"

    invoke-static {p1, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mRollingInterval:I

    const-string v1, "MarqueeTextView_scroll_mode"

    invoke-static {p1, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScrollMode:I

    const-string v1, "MarqueeTextView_scroll_first_delay"

    invoke-static {p1, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mFirstScrollDelay:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/TextView;->computeScroll()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScrollMode:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->stopScroll()V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mXPaused:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mFirst:Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->resumeScroll()V

    goto :goto_0
.end method

.method public getRndDuration()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mRollingInterval:I

    return v0
.end method

.method public getScrollFirstDelay()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mFirstScrollDelay:I

    return v0
.end method

.method public getScrollMode()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScrollMode:I

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    return v0
.end method

.method public pauseScroll()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mXPaused:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0
.end method

.method public resumeScroll()V
    .locals 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->setGravity(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->setHorizontallyScrolling(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->setScroller(Landroid/widget/Scroller;)V

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->calculateScrollingLen()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mXPaused:I

    sub-int v3, v0, v1

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mRollingInterval:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v5

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mFirst:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/utils/g;

    invoke-direct {v1, p0, v3, v5}, Lcom/xiaomi/gamecenter/sdk/utils/g;-><init>(Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;II)V

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mFirstScrollDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mXPaused:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->invalidate()V

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    goto :goto_0
.end method

.method public setRndDuration(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mRollingInterval:I

    return-void
.end method

.method public setScrollFirstDelay(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mFirstScrollDelay:I

    return-void
.end method

.method public setScrollMode(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScrollMode:I

    return-void
.end method

.method public startScroll()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mXPaused:I

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mFirst:Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->resumeScroll()V

    return-void
.end method

.method public stopScroll()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->setGravity(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mPaused:Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->mScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method
