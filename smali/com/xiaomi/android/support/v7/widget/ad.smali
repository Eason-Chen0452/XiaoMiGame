.class final Lcom/xiaomi/android/support/v7/widget/ad;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/ad$b;,
        Lcom/xiaomi/android/support/v7/widget/ad$a;
    }
.end annotation


# instance fields
.field final a:Lcom/xiaomi/android/support/v7/widget/ad$b;

.field b:Lcom/xiaomi/android/support/v7/widget/ad$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/ad$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/ad$a;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/ad$a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    return-void
.end method


# virtual methods
.method final a(IIII)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-interface {v0}, Lcom/xiaomi/android/support/v7/widget/ad$b;->a()I

    move-result v3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-interface {v0}, Lcom/xiaomi/android/support/v7/widget/ad$b;->b()I

    move-result v4

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eq p1, p2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-interface {v1, p1}, Lcom/xiaomi/android/support/v7/widget/ad$b;->a(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-interface {v5, v1}, Lcom/xiaomi/android/support/v7/widget/ad$b;->a(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-interface {v6, v1}, Lcom/xiaomi/android/support/v7/widget/ad$b;->b(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/xiaomi/android/support/v7/widget/ad$a;->a(IIII)V

    if-eqz p3, :cond_1

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    iput v8, v5, Lcom/xiaomi/android/support/v7/widget/ad$a;->a:I

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    invoke-virtual {v5, p3}, Lcom/xiaomi/android/support/v7/widget/ad$a;->a(I)V

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/ad$a;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_2
    return-object v1

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_3

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    iput v8, v5, Lcom/xiaomi/android/support/v7/widget/ad$a;->a:I

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    invoke-virtual {v5, p4}, Lcom/xiaomi/android/support/v7/widget/ad$a;->a(I)V

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/ad$a;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_3
.end method

.method final a(Landroid/view/View;)Z
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-interface {v1}, Lcom/xiaomi/android/support/v7/widget/ad$b;->a()I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-interface {v2}, Lcom/xiaomi/android/support/v7/widget/ad$b;->b()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-interface {v3, p1}, Lcom/xiaomi/android/support/v7/widget/ad$b;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/ad;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-interface {v4, p1}, Lcom/xiaomi/android/support/v7/widget/ad$b;->b(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/android/support/v7/widget/ad$a;->a(IIII)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/ad$a;->a:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    const/16 v1, 0x6003

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/ad$a;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/ad;->b:Lcom/xiaomi/android/support/v7/widget/ad$a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/ad$a;->a()Z

    move-result v0

    return v0
.end method
