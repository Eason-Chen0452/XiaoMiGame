.class public Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;
.super Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

# interfaces
.implements Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$a;
.implements Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;,
        Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;,
        Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;,
        Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;

.field private h:I

.field i:I

.field j:Lcom/xiaomi/android/support/v7/widget/r;

.field k:Z

.field l:I

.field m:I

.field n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

.field final o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;-><init>(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;

    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->h:I

    invoke-direct {p0, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(I)V

    invoke-direct {p0, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(Z)V

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c:Z

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;-><init>(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;

    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->h:I

    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;->a:I

    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(I)V

    iget-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;->c:Z

    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(Z)V

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;->d:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Z)V

    iput-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w:Z

    return-void
.end method

.method private A()V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c:Z

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->e()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private E()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->h(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private F()Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->h(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v2

    sub-int v1, v2, v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/r;->a(I)V

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I
    .locals 8

    const/high16 v7, -0x80000000

    const/4 v6, 0x0

    iget v1, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v0, v7, :cond_1

    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v0, :cond_0

    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v2, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v2

    iput v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;)V

    :cond_1
    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v2, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;

    :cond_2
    iget-boolean v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-nez v3, :cond_3

    if-lez v0, :cond_8

    :cond_3
    invoke-virtual {p2, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_8

    iput v6, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    iput-boolean v6, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->b:Z

    iput-boolean v6, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->c:Z

    iput-boolean v6, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {p0, p1, p3, p2, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;)V

    iget-boolean v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->b:Z

    if-nez v3, :cond_8

    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    iget v5, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-boolean v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->c:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v3, :cond_4

    iget-boolean v3, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v3, :cond_5

    :cond_4
    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v4, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v3, v4

    iput v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    iget v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v0, v3

    :cond_5
    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    if-eq v3, v7, :cond_7

    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    if-gez v3, :cond_6

    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    iget v4, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;)V

    :cond_7
    if-eqz p4, :cond_2

    iget-boolean v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->d:Z

    if-eqz v3, :cond_2

    :cond_8
    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int v0, v1, v0

    return v0
.end method

.method private a(IIZ)Landroid/view/View;
    .locals 3

    const/16 v1, 0x140

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    if-eqz p3, :cond_0

    const/16 v0, 0x6003

    :goto_0
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->r:Lcom/xiaomi/android/support/v7/widget/ad;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/xiaomi/android/support/v7/widget/ad;->a(IIII)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->s:Lcom/xiaomi/android/support/v7/widget/ad;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/xiaomi/android/support/v7/widget/ad;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private a(I)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid orientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-ne p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n()V

    goto :goto_0
.end method

.method private a(IIZLcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->B()Z

    move-result v3

    iput-boolean v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->l:Z

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0, p4}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->h(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v3

    iput v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput p1, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne p1, v1, :cond_2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/r;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->D()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    invoke-static {v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v2}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput p2, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->C()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v4, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    invoke-static {v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v3, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v2}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method private a(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    iget v0, p1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v1, p1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(II)V

    return-void
.end method

.method private a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 1

    if-ne p2, p3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-le p3, p2, :cond_2

    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;)V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v2

    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/r;->e()I

    move-result v3

    sub-int/2addr v3, v0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v5, v4}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v5

    if-lt v5, v3, :cond_2

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v5, v4}, Lcom/xiaomi/android/support/v7/widget/r;->d(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_3

    :cond_2
    invoke-direct {p0, p1, v1, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4, v1}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v4

    if-lt v4, v3, :cond_5

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4, v1}, Lcom/xiaomi/android/support/v7/widget/r;->d(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_6

    :cond_5
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    iget v2, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v3

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_a

    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4, v1}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v4

    if-gt v4, v2, :cond_8

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4, v1}, Lcom/xiaomi/android/support/v7/widget/r;->c(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_9

    :cond_8
    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;II)V

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_a
    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v5, v4}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v5

    if-gt v5, v2, :cond_b

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v5, v4}, Lcom/xiaomi/android/support/v7/widget/r;->c(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_c

    :cond_b
    invoke-direct {p0, p1, v1, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;II)V

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private b(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    invoke-direct {p0, v0, p2, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    neg-int v0, v0

    add-int v1, p1, v0

    if-eqz p4, :cond_0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/r;->a(I)V

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;)V
    .locals 2

    iget v0, p1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v1, p1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(II)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c:Z

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n()V

    goto :goto_0
.end method

.method private c(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a:Z

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    if-lez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-direct {p0, v0, v3, v1, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(IIZLcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0, p2, v4, p3, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    move-result v4

    add-int/2addr v1, v4

    if-gez v1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/r;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->j:I

    goto :goto_0
.end method

.method private c(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 6

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, -0x1

    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private d(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private e(II)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private f(II)V
    .locals 3

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput p1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput p2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/high16 v1, -0x80000000

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private g(II)V
    .locals 2

    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    iput p2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n()V

    return-void
.end method

.method private h(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(II)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    if-ge p2, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v1

    if-ge v0, v1, :cond_3

    const/16 v1, 0x4104

    const/16 v0, 0x4004

    :goto_2
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->r:Lcom/xiaomi/android/support/v7/widget/ad;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/xiaomi/android/support/v7/widget/ad;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v1, 0x1041

    const/16 v0, 0x1001

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->s:Lcom/xiaomi/android/support/v7/widget/ad;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/xiaomi/android/support/v7/widget/ad;->a(IIII)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method

.method private i(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v4, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    iget-boolean v5, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v6

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v7

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v5

    sub-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_3
    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v5

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v1

    sub-int v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v4

    int-to-float v1, v1

    div-float v1, v4, v1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v2

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3
.end method

.method private j(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v4, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v4, :cond_4

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v1}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/r;->f()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method private k(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    if-nez v4, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d(Z)Landroid/view/View;

    move-result-object v1

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e:Z

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v1}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, v2

    int-to-float v0, v0

    div-float v0, v1, v0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v2, v0

    goto :goto_0
.end method


# virtual methods
.method public a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/high16 v4, -0x80000000

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->A()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    const v0, 0x3eaaaaab

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->f()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v3, v0, v6, p4}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(IIZLcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v4, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput-boolean v6, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x1

    invoke-direct {p0, p3, v0, p4, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    if-ne v3, v5, :cond_4

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->F()Landroid/view/View;

    move-result-object v0

    :goto_1
    move-object v2, v0

    :goto_2
    if-ne v3, v5, :cond_6

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->C()Landroid/view/View;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_7

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->E()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->E()Landroid/view/View;

    move-result-object v0

    :goto_4
    move-object v2, v0

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->F()Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->D()Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    goto :goto_0
.end method

.method a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v6

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v2, v3

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_3

    invoke-virtual {p0, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_6

    move-object v0, v2

    move-object v4, v3

    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public final a(IILcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move p1, p2

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {p0, v0, v2, v1, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(IIZLcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    invoke-virtual {p0, p3, v0, p4}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    goto :goto_2
.end method

.method public final a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;)V
    .locals 5

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    iget v3, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    move v4, v0

    :goto_0
    if-eqz v4, :cond_3

    move v0, v2

    :goto_1
    move v2, v1

    :goto_2
    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->h:I

    if-ge v2, v4, :cond_4

    if-ltz v3, :cond_4

    if-ge v3, p1, :cond_4

    invoke-interface {p2, v3, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;->a(II)V

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->A()V

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    if-ne v0, v2, :cond_2

    if-eqz v4, :cond_1

    add-int/lit8 v0, p1, -0x1

    :goto_3
    move v3, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, -0x1

    const-string v0, "Cannot drop a view during a scroll or layout calculation"

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->A()V

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v3

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v4, :cond_2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, p2}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, p1}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->g(II)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, p2}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->g(II)V

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, p2}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->g(II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, p2}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, p1}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->g(II)V

    goto :goto_1
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    invoke-super {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    invoke-direct {p0, v3, v0, v3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1, v3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 0

    return-void
.end method

.method a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    invoke-virtual {p3, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_0

    iput-boolean v7, p4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->b:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    iget v3, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v10, :cond_1

    move v1, v7

    :cond_1
    if-ne v2, v1, :cond_5

    invoke-virtual {p0, v8}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(Landroid/view/View;)V

    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->s()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q()I

    move-result v5

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u()I

    move-result v6

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w()I

    move-result v9

    add-int/2addr v6, v9

    iget v9, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v9

    iget v9, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v6, v9

    add-int/2addr v3, v6

    iget v6, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v9

    invoke-static {v4, v5, v3, v6, v9}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->r()I

    move-result v5

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v()I

    move-result v6

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v9

    add-int/2addr v6, v9

    iget v9, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v6, v9

    iget v9, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v9

    add-int/2addr v2, v6

    iget v6, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v9

    invoke-static {v4, v5, v2, v6, v9}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result v2

    invoke-virtual {p0, v8, v3, v2, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;IILcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v8, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v8}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v1

    iput v1, p4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v7, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->s()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->w()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, v8}, Lcom/xiaomi/android/support/v7/widget/r;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    :goto_2
    iget v3, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v10, :cond_a

    iget v3, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v5, p4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int v5, v4, v5

    move v4, v1

    move v6, v2

    :goto_3
    invoke-static {v8, v6, v5, v4, v3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-boolean v7, p4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->c:Z

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    iput-boolean v0, p4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->d:Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v8}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    iget v3, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v3, v10, :cond_7

    move v1, v7

    :cond_7
    if-ne v2, v1, :cond_8

    invoke-virtual {p0, v8}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0, v8}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->u()I

    move-result v2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v8}, Lcom/xiaomi/android/support/v7/widget/r;->f(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_2

    :cond_a
    iget v5, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v3, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v3, v4

    move v4, v1

    move v6, v2

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->v()I

    move-result v5

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v8}, Lcom/xiaomi/android/support/v7/widget/r;->f(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v5

    iget v2, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    if-ne v2, v10, :cond_c

    iget v2, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v3, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v4, p4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    sub-int v6, v3, v4

    move v3, v1

    move v4, v2

    goto :goto_3

    :cond_c
    iget v6, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v2, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget v3, p4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v2, v3

    move v3, v1

    move v4, v2

    goto :goto_3
.end method

.method public a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a()V

    return-void
.end method

.method a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;)V
    .locals 3

    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    iget v2, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {p3, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;->a(II)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n()V

    goto :goto_0
.end method

.method public b(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public final c(I)Landroid/graphics/PointF;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v2

    if-ge p1, v2, :cond_1

    move v0, v1

    :cond_1
    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eq v0, v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V
    .locals 11

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a:Z

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->A()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->d:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v2

    if-ltz v2, :cond_1e

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v2

    if-ge v0, v2, :cond_1e

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_21

    iget-object v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->b()I

    move-result v0

    if-ltz v0, :cond_1f

    invoke-virtual {v6, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;)V

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_6

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b()V

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->d:Z

    :cond_7
    invoke-direct {p0, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->h(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->j:I

    if-ltz v0, :cond_2a

    const/4 v2, 0x0

    move v0, v1

    :goto_7
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->g()I

    move-result v2

    add-int/2addr v0, v2

    iget-boolean v2, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_8

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4, v2}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v2, v3

    :goto_8
    if-lez v2, :cond_2c

    add-int/2addr v1, v2

    :cond_8
    :goto_9
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v2, :cond_2e

    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v2, :cond_2d

    const/4 v2, 0x1

    :goto_a
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {p0, p1, p2, v3, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;I)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->B()Z

    move-result v3

    iput-boolean v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->l:Z

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget-boolean v3, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    iput-boolean v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->i:Z

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    iget-boolean v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v1, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v0, v2

    :cond_9
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v0, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v4, v4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    invoke-direct {p0, v3, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(II)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v0, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    :goto_b
    move v1, v2

    move v3, v0

    :goto_c
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    xor-int/2addr v0, v2

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    move-result v0

    add-int v2, v3, v0

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int v3, v2, v1

    add-int/2addr v1, v0

    :cond_a
    :goto_d
    iget-boolean v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->j:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v0

    if-nez v0, :cond_33

    :cond_b
    :goto_e
    iget-boolean v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->a()V

    :goto_f
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b:Z

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v1

    if-lt v0, v1, :cond_e

    :cond_d
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_e
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    iget-boolean v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    :goto_10
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_10

    :cond_10
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_19

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->f()I

    move-result v2

    if-le v1, v2, :cond_11

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b()V

    :goto_11
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_12

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v0

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    goto :goto_11

    :cond_12
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_13

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v0

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    goto :goto_11

    :cond_13
    iget-boolean v1, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->b()I

    move-result v1

    add-int/2addr v0, v1

    :goto_12
    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    :goto_13
    const/4 v0, 0x1

    goto/16 :goto_1

    :cond_14
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_12

    :cond_15
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    if-ge v1, v0, :cond_17

    const/4 v0, 0x1

    :goto_14
    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    :cond_16
    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b()V

    goto :goto_13

    :cond_17
    const/4 v0, 0x0

    goto :goto_14

    :cond_18
    const/4 v0, 0x0

    goto :goto_15

    :cond_19
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    iput-boolean v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_11

    :cond_1a
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_11

    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_2

    :cond_1d
    move-object v1, v0

    goto/16 :goto_2

    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_1f
    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v2

    iput v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    iget-boolean v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v2, :cond_20

    iget-object v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v2

    sub-int v0, v2, v0

    iget-object v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v2

    sub-int/2addr v2, v0

    iput v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    if-lez v0, :cond_5

    iget-object v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v2

    iget v3, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    sub-int v2, v3, v2

    iget-object v3, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v3

    iget-object v4, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4, v1}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v3

    sub-int v1, v2, v1

    if-gez v1, :cond_5

    iget v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_4

    :cond_20
    iget-object v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v3

    sub-int v3, v2, v3

    iput v2, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    if-lez v3, :cond_5

    iget-object v4, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4, v1}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v4

    sub-int v0, v4, v0

    iget-object v4, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v4, v1}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v1

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    sub-int/2addr v0, v2

    if-gez v0, :cond_5

    iget v1, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    neg-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    goto/16 :goto_4

    :cond_21
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_28

    iget-boolean v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-nez v0, :cond_25

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    :goto_16
    if-eqz v0, :cond_28

    invoke-virtual {v6, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a(Landroid/view/View;)V

    iget-boolean v1, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v1, :cond_23

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->g()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v2

    if-ge v1, v2, :cond_22

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v1

    if-ge v0, v1, :cond_26

    :cond_22
    const/4 v0, 0x1

    :goto_17
    if-eqz v0, :cond_23

    iget-boolean v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v0

    :goto_18
    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    :cond_23
    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_24
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v0, :cond_25

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    goto :goto_16

    :cond_25
    move-object v1, p1

    move-object v0, p0

    move-object v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v4

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object v0

    goto :goto_16

    :cond_26
    const/4 v0, 0x0

    goto :goto_17

    :cond_27
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v0

    goto :goto_18

    :cond_28
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_29
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_2a
    const/4 v0, 0x0

    move v2, v1

    goto/16 :goto_7

    :cond_2b
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v3, v2}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    sub-int v2, v3, v2

    goto/16 :goto_8

    :cond_2c
    sub-int/2addr v0, v2

    goto/16 :goto_9

    :cond_2d
    const/4 v2, -0x1

    goto/16 :goto_a

    :cond_2e
    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eqz v2, :cond_2f

    const/4 v2, -0x1

    goto/16 :goto_a

    :cond_2f
    const/4 v2, 0x1

    goto/16 :goto_a

    :cond_30
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v0, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v3, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v2, :cond_31

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v2, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    add-int/2addr v1, v2

    :cond_31
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-direct {p0, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v1, v2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v4, v4, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v2, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    if-lez v1, :cond_3c

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    invoke-direct {p0, v3, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(II)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    move v1, v0

    move v3, v2

    goto/16 :goto_c

    :cond_32
    const/4 v0, 0x1

    invoke-direct {p0, v3, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    move-result v0

    add-int v2, v3, v0

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int v3, v2, v1

    add-int/2addr v1, v0

    goto/16 :goto_d

    :cond_33
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v9

    const/4 v0, 0x0

    move v6, v0

    :goto_19
    if-ge v6, v8, :cond_37

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v2

    if-ge v2, v9, :cond_34

    const/4 v2, 0x1

    :goto_1a
    iget-boolean v10, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    if-eq v2, v10, :cond_35

    const/4 v2, -0x1

    :goto_1b
    const/4 v10, -0x1

    if-ne v2, v10, :cond_36

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v0

    add-int v2, v5, v0

    move v0, v4

    :goto_1c
    add-int/lit8 v6, v6, 0x1

    move v4, v0

    move v5, v2

    goto :goto_19

    :cond_34
    const/4 v2, 0x0

    goto :goto_1a

    :cond_35
    const/4 v2, 0x1

    goto :goto_1b

    :cond_36
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    move v2, v5

    goto :goto_1c

    :cond_37
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput-object v7, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-lez v5, :cond_38

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->C()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->f(II)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v5, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    :cond_38
    if-lez v4, :cond_39

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->D()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(II)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    iput v4, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->c:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Z)I

    :cond_39
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    goto/16 :goto_e

    :cond_3a
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->o:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a()V

    goto/16 :goto_f

    :cond_3b
    move v0, v4

    move v2, v5

    goto :goto_1c

    :cond_3c
    move v1, v0

    move v3, v2

    goto/16 :goto_c

    :cond_3d
    move v0, v1

    goto/16 :goto_b
.end method

.method public final d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 2

    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->m:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n()V

    return-void
.end method

.method final e(I)I
    .locals 4

    const/4 v0, -0x1

    const/high16 v2, -0x80000000

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-eq v3, v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :sswitch_4
    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_5
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public final f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public f()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public final g(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->d:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->p()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->l()V

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b:Z

    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->k:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->D()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v3, v1}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->C()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final k()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/xiaomi/android/support/v7/widget/s;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/s;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    :cond_1
    return-void

    :pswitch_1
    new-instance v0, Lcom/xiaomi/android/support/v7/widget/t;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/t;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final m()Z
    .locals 6

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->r()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->q()I

    move-result v2

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v5, :cond_0

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v4, :cond_0

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
