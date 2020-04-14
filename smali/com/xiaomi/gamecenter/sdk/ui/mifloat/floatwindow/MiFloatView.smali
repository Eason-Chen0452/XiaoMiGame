.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;
    }
.end annotation


# instance fields
.field public a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

.field b:J

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private final i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Landroid/widget/RelativeLayout;

.field private q:Landroid/widget/ImageSwitcher;

.field private r:Landroid/widget/ImageView;

.field private s:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

.field private t:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;

.field private u:I

.field private v:I

.field private w:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;

.field private x:Z

.field private y:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;)V
    .locals 3

    const/16 v0, 0x12c

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->j:I

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->l:I

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->m:I

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->n:Z

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->o:Z

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->NORMAL:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->x:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ae;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->y:Landroid/view/View$OnTouchListener;

    iput p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->j:I

    iput p3, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->s:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_layout_float_view"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "is_float_icon"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageSwitcher;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->q:Landroid/widget/ImageSwitcher;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->q:Landroid/widget/ImageSwitcher;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ac;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ac;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "img_float_point"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->r:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "float_window_nor"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->u:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "float_window_disable"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->v:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->q:Landroid/widget/ImageSwitcher;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->u:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appear"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->q:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageSwitcher;->setInAnimation(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "disappear"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->q:Landroid/widget/ImageSwitcher;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/ImageSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->c:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->d:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->y:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ad;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ad;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->t:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ab;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ab;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;-><init>(Landroid/view/View;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->t:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->c:F

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->w:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->x:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->d:F

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->s:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    return-object v0
.end method

.method private declared-synchronized b(II)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    iput v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->l:I

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v3, v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v2, v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    iget v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->l:I

    if-le v4, v3, :cond_0

    iput v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->l:I

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v4

    sub-int p1, v3, v4

    :cond_0
    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, p2

    iput v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->m:I

    iget v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->m:I

    if-le v4, v2, :cond_1

    iput v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->m:I

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    sub-int p2, v2, v4

    :cond_1
    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->j:I

    iput p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    if-nez p1, :cond_2

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->n:Z

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int v2, v3, v2

    if-ne p1, v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->o:Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->l:I

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->m:I

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->g:F

    return p1
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)F
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->g:F

    return v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->h:F

    return p1
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)F
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->h:F

    return v0
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->e:F

    return p1
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;F)F
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->f:F

    return p1
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->x:Z

    return v0
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->g:F

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->e:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->h:F

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->f:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic h(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->e:F

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->c:F

    sub-float/2addr v0, v1

    float-to-int v1, v0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->f:F

    iget v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->d:F

    sub-float/2addr v0, v3

    float-to-int v3, v0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v4, v4, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    sub-int v0, v4, v0

    if-lt v1, v0, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v4, v4, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->b:I

    sub-int v1, v4, v1

    if-lt v3, v1, :cond_2

    :goto_1
    if-gez v0, :cond_1

    move v3, v2

    :goto_2
    if-gez v1, :cond_0

    move v0, v2

    :goto_3
    invoke-direct {p0, v3, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_3

    :cond_1
    move v3, v0

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic i(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->r:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->j:I

    return v0
.end method

.method public final a(II)V
    .locals 1

    int-to-float v0, p1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->e:F

    int-to-float v0, p2

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->f:F

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->j:I

    iput p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(II)V

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->w:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->x:Z

    return v0
.end method

.method final f()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    invoke-direct {p0, v2, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(II)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->s:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->s:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;->a(II)V

    :cond_0
    return-void
.end method

.method final g()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(II)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->s:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->s:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;->a(II)V

    :cond_0
    return-void
.end method

.method final h()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->j:I

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-ge v2, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(II)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->s:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->s:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;

    invoke-interface {v2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/b;->a(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->a:I

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->NORMAL:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->NORMAL:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->q:Landroid/widget/ImageSwitcher;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->u:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->DISABLE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->DISABLE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->q:Landroid/widget/ImageSwitcher;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->v:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageSwitcher;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->c:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/af;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/af;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->clearAnimation()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final l()V
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;

    iget v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/a;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ag;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ag;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->clearAnimation()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "icon_red_point_right"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->clearAnimation()V

    const-string v0, "MiGameSDK.MiFloatView"

    const-string v1, "appearFromEdge"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->i()V

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->n:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->o:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b:J

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->w:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->w:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;->a()V

    :cond_0
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->j:I

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->j:I

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->b(II)V

    return-void
.end method

.method public final p()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "icon_red_point_right"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;->RIGHT_HIDE:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "icon_red_point_left"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->r:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiFloatView{xInView="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yInView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xInScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yInScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xDownInScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yDownInScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLeftEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRightEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView$STATUS;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMoving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
