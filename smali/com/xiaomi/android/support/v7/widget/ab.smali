.class final Lcom/xiaomi/android/support/v7/widget/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/android/support/v7/widget/ad$b;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/ab;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ab;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ab;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ab;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/ab;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->k(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method
