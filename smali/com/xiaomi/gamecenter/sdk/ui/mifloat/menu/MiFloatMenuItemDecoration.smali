.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;
.super Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Landroid/content/res/Resources;

.field private m:I

.field private n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->k:Z

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->n:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->l:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->n:Landroid/content/Context;

    const-string v1, "view_dimen_740"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->j:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->n:Landroid/content/Context;

    const-string v1, "view_dimen_20"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->f:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->n:Landroid/content/Context;

    const-string v1, "view_dimen_80"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->g:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->n:Landroid/content/Context;

    const-string v1, "view_dimen_10"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->h:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->n:Landroid/content/Context;

    const-string v1, "view_dimen_40"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->i:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->n:Landroid/content/Context;

    const-string v1, "view_dimen_50"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->m:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->n:Landroid/content/Context;

    const-string v1, "view_dimen_180"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->c:I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->j:I

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->e:I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->e:I

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->c:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a:I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->b:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->l:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->c:I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->j:I

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->e:I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->e:I

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->c:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a:I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->b:I

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result v0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->k:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    rem-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    iput v3, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->m:I

    if-lt v1, v2, :cond_3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->b:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    rem-int/lit8 v1, v0, 0x3

    if-nez v1, :cond_4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->d:I

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->k:Z

    return-void
.end method
