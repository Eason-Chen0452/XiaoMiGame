.class final Lcom/xiaomi/android/support/v7/widget/helper/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->u:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->c:F

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->d:F

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v2, p1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Landroid/view/MotionEvent;)Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v4, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->c:F

    iget v5, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->l:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->c:F

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v4, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->d:F

    iget v5, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->m:F

    sub-float/2addr v4, v5

    iput v4, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->d:F

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Z)I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a:Ljava/util/List;

    iget-object v4, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {v3}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v4, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->i:I

    invoke-virtual {v3, v4, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->n:I

    invoke-virtual {v2, p1, v3, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Landroid/view/MotionEvent;II)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_7

    :goto_1
    return v0

    :cond_4
    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    if-ne v2, v0, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iput v4, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v4, v2, p1, v3}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(ILandroid/view/MotionEvent;I)Z

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, -0x1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->u:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    if-ne v1, v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v2, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, v1, p1, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(ILandroid/view/MotionEvent;I)Z

    :cond_3
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :cond_4
    :goto_1
    :pswitch_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iput v4, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    goto :goto_0

    :pswitch_2
    if-ltz v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->n:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Landroid/view/MotionEvent;II)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->q:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->k:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/b;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v2, v2, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->n:I

    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a(Landroid/view/MotionEvent;II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
