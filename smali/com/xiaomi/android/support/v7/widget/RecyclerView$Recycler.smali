.class public final Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

.field final synthetic f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewCacheExtension;


# direct methods
.method public constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 2

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->g:Ljava/util/List;

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->h:I

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->d:I

    return-void
.end method

.method private a(J)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-wide v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f:I

    if-nez v3, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(II)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-wide v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_5

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f:I

    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(I)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private c(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 11

    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v0, v10}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0, p1, v2}, Lcom/xiaomi/android/support/v7/widget/a;->a(II)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a(I)J

    move-result-wide v6

    :goto_2
    if-ge v2, v4, :cond_5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h()Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v8, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    invoke-virtual {v0, v10}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private d(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v5, v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v5, v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    iget-object v0, v4, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_4

    iget-object v0, v4, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v6, v4, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v6, v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v7

    if-ne v7, p1, :cond_3

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v6

    if-nez v6, :cond_3

    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1, v3}, Lcom/xiaomi/android/support/v7/widget/b;->f(Landroid/view/View;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1, v3}, Lcom/xiaomi/android/support/v7/widget/b;->c(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move-object v3, v1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/b;->d(I)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c(Landroid/view/View;)V

    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_8

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v4

    if-ne v4, p1, :cond_7

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v0, :cond_2

    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/a;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method final a(IJ)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_6

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-nez v6, :cond_4

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->d(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    :goto_1
    if-nez v1, :cond_d

    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g()V

    :cond_3
    :goto_2
    invoke-virtual {p0, v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v6, 0x0

    :cond_4
    :goto_3
    if-nez v6, :cond_22

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v1, p1}, Lcom/xiaomi/android/support/v7/widget/a;->b(I)I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v2

    if-lt v1, v2, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid item position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget v1, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    if-ltz v1, :cond_8

    iget v1, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v2

    if-lt v1, v2, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    iget v1, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iget v1, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f:I

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-wide v2, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    iget v4, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    invoke-virtual {v1, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a(I)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i()V

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_e
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(J)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_21

    iput v1, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    const/4 v0, 0x1

    move v1, v0

    :goto_4
    if-nez v6, :cond_10

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->i:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewCacheExtension;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->i:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewCacheExtension;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewCacheExtension;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-nez v6, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-nez v6, :cond_11

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e()Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    if-eqz v0, :cond_12

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-object v6, v0

    :goto_5
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->r()V

    sget-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    iget-object v0, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Landroid/view/ViewGroup;Z)V

    :cond_11
    if-nez v6, :cond_15

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p2, v4

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e:Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0, v2, v3, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_12
    const/4 v6, 0x0

    goto :goto_5

    :cond_13
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const-string v5, "RV CreateView"

    invoke-static {v5}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a(Landroid/view/ViewGroup;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    const/4 v0, 0x0

    iput v0, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f:I

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->q()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b:Ljava/lang/ref/WeakReference;

    :cond_14
    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p()J

    move-result-wide v4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e:Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(J)V

    :cond_15
    move v7, v1

    :goto_7
    if-eqz v7, :cond_16

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v0, :cond_16

    const/16 v0, 0x2000

    invoke-virtual {v6, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(II)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->i:Z

    if-eqz v0, :cond_16

    invoke-static {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q()Ljava/util/List;

    invoke-static {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v6, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_16
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-eqz v1, :cond_17

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v1

    if-eqz v1, :cond_17

    iput p1, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    move v1, v0

    :goto_8
    iget-object v0, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    iput-object v6, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_1f

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    :goto_a
    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    move-object v0, v6

    goto/16 :goto_6

    :cond_17
    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->l()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_18
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/a;->b(I)I

    move-result v8

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iput-object v0, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget v1, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f:I

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, p2, v4

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e:Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(IJJ)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_b
    move v1, v0

    goto :goto_8

    :cond_19
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v6, v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p()J

    move-result-wide v0

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e:Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    iget v5, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f:I

    sub-long/2addr v0, v2

    invoke-virtual {v4, v5, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(IJ)V

    iget-object v0, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_1a
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->F:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-eqz v0, :cond_1c

    iput p1, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    :cond_1c
    const/4 v0, 0x1

    goto :goto_b

    :cond_1d
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v2, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    :cond_1e
    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    goto/16 :goto_9

    :cond_1f
    const/4 v1, 0x0

    goto/16 :goto_a

    :cond_20
    move v1, v0

    goto/16 :goto_8

    :cond_21
    move v1, v0

    goto/16 :goto_4

    :cond_22
    move v7, v0

    goto/16 :goto_7
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->d()V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g()V

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i()V

    goto :goto_0
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    :cond_5
    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->d:I

    if-lez v0, :cond_b

    const/16 v0, 0x20e

    invoke-virtual {p1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->d:I

    if-lt v0, v3, :cond_6

    if-lez v0, :cond_6

    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_6
    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->q()Z

    move-result v3

    if-eqz v3, :cond_8

    if-lez v0, :cond_8

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    iget v5, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    invoke-virtual {v3, v5}, Lcom/xiaomi/android/support/v7/widget/n$a;->a(I)Z

    move-result v3

    if-nez v3, :cond_8

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_7

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v5, v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    invoke-virtual {v5, v0}, Lcom/xiaomi/android/support/v7/widget/n$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v3, 0x1

    :cond_8
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    :goto_2
    if-nez v0, :cond_a

    invoke-virtual {p0, p1, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Z)V

    :goto_3
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v2, p1}, Lcom/xiaomi/android/support/v7/widget/ae;->f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    :cond_9
    return-void

    :cond_a
    move v1, v2

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_2

    :cond_c
    move v1, v2

    move v0, v2

    goto :goto_3
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->n:Lcom/xiaomi/android/support/v7/widget/RecyclerView$f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->n:Lcom/xiaomi/android/support/v7/widget/RecyclerView$f;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/ae;->f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_2
    iput-object v1, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e()Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method final b()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x:I

    :goto_0
    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->d:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->d:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Z)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method final b(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i()V

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->g:Ljava/util/List;

    return-object v0
.end method

.method final c(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_0

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Z)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    :cond_5
    invoke-virtual {v3, p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Z)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method final d()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/n$a;->a()V

    :cond_1
    return-void
.end method

.method final e()Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e:Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e:Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e:Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method
