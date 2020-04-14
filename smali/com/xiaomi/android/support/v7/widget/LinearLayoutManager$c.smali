.class final Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field l:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a:Z

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->h:I

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v0

    if-ne v4, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a(Landroid/view/View;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p1, v0, v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(IJ)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    const v1, 0x7fffffff

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    if-eq v2, p1, :cond_3

    iget-object v6, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v0

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    sub-int/2addr v0, v6

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    mul-int/2addr v0, v6

    if-ltz v0, :cond_3

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :cond_1
    if-nez v2, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    goto :goto_2

    :cond_3
    move v0, v1

    move-object v2, v3

    goto :goto_1
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
