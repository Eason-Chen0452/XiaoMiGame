.class public abstract Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;
.super Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;,
        Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:Z

.field protected d:Z

.field protected e:Ljava/lang/Object;

.field protected f:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->c:Z

    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final a(I)J
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    int-to-long v0, p1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->f:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;-><init>(Landroid/view/View;Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;)V

    return-object v0
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    iget-object v1, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    if-ltz p2, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->a(Landroid/view/View;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->f:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;

    return-void
.end method

.method public final a([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->e:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->c:Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->d:Z

    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x28

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    move v1, v0

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x28

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, p1

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, p1, v0

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->d:Z

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->d:Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->d:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->c()V

    :cond_3
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v2

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->a(II)V

    if-lez v1, :cond_3

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->c:Z

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public abstract b(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    return-object v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
