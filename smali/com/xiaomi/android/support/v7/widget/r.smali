.class public abstract Lcom/xiaomi/android/support/v7/widget/r;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

.field final b:Landroid/graphics/Rect;

.field private c:I


# direct methods
.method private constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/r;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/r;->b:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/r;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/r;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)I
.end method

.method public final a()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/r;->f()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/r;->c:I

    return-void
.end method

.method public abstract a(I)V
.end method

.method public final b()I
    .locals 2

    const/high16 v0, -0x80000000

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/r;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/r;->f()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/r;->c:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d()I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f()I
.end method

.method public abstract f(Landroid/view/View;)I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method
