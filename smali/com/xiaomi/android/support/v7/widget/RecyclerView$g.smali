.class final Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;
.super Lcom/xiaomi/android/support/v7/widget/RecyclerView$AdapterDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->i:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->v:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/16 v6, 0x200

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v3, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->e:Z

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-boolean v1, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-nez v1, :cond_4

    iput-boolean v3, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    iget-object v1, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v4, v1}, Lcom/xiaomi/android/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/a;->d()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_5
    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->b()V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;->b()V

    :cond_0
    return-void
.end method
