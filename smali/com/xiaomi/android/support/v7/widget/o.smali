.class final Lcom/xiaomi/android/support/v7/widget/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xiaomi/android/support/v7/widget/n$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    check-cast p1, Lcom/xiaomi/android/support/v7/widget/n$b;

    check-cast p2, Lcom/xiaomi/android/support/v7/widget/n$b;

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/n$b;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v4, p2, Lcom/xiaomi/android/support/v7/widget/n$b;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-nez v4, :cond_2

    move v4, v1

    :goto_1
    if-eq v0, v4, :cond_4

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/n$b;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-nez v0, :cond_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    iget-boolean v0, p1, Lcom/xiaomi/android/support/v7/widget/n$b;->a:Z

    iget-boolean v4, p2, Lcom/xiaomi/android/support/v7/widget/n$b;->a:Z

    if-eq v0, v4, :cond_5

    iget-boolean v0, p1, Lcom/xiaomi/android/support/v7/widget/n$b;->a:Z

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_2

    :cond_5
    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/n$b;->b:I

    iget v1, p1, Lcom/xiaomi/android/support/v7/widget/n$b;->b:I

    sub-int v1, v0, v1

    if-nez v1, :cond_0

    iget v0, p1, Lcom/xiaomi/android/support/v7/widget/n$b;->c:I

    iget v1, p2, Lcom/xiaomi/android/support/v7/widget/n$b;->c:I

    sub-int v1, v0, v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_2
.end method
