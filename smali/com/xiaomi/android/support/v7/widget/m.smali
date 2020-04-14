.class final Lcom/xiaomi/android/support/v7/widget/m;
.super Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/m;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/m;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/k;->a(II)V

    return-void
.end method
