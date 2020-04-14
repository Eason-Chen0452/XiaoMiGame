.class final Lcom/xiaomi/android/support/v7/widget/helper/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/helper/a;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/a;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/a;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/a;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/a;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/a;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/a;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/a;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/a;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
