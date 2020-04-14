.class final Lcom/xiaomi/android/support/v7/widget/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/u;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/u;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/u;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/u;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/u;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/u;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/u;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/u;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d()V

    goto :goto_0
.end method
