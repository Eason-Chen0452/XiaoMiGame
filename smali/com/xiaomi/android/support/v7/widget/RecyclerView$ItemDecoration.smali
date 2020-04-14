.class public abstract Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method
