.class public abstract Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$a;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

.field private c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->g:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;II)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->c()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->d:Z

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->g:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a(Landroid/view/View;Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->g:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->c()V

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->g:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a(IILcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->g:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->a()Z

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->g:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->d:Z

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y:Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->c()V

    goto :goto_1
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    return-void
.end method

.method protected abstract a(IILcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected final a(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e(Landroid/view/View;)I

    move-result v0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/view/View;Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public final b()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method protected final c()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->f:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    iput-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->d:Z

    iput-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;)V

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->e:Z

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v0

    return v0
.end method
