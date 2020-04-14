.class final Lcom/xiaomi/android/support/v7/widget/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/b$b;,
        Lcom/xiaomi/android/support/v7/widget/b$a;
    }
.end annotation


# instance fields
.field final a:Lcom/xiaomi/android/support/v7/widget/b$b;

.field final b:Lcom/xiaomi/android/support/v7/widget/b$a;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/b$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/b$a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    return-void
.end method

.method private e(I)I
    .locals 4

    const/4 v1, -0x1

    if-gez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->a()I

    move-result v2

    move v0, p1

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/b$a;->e(I)I

    move-result v3

    sub-int v3, v0, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private h(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b$b;->c(Landroid/view/View;)V

    return-void
.end method

.method private i(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b$b;->d(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method final a(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->b(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/b$a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/b;->i(Landroid/view/View;)Z

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(I)V

    goto :goto_0
.end method

.method final a(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/b;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 2

    if-gez p2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->a()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v0, p4}, Lcom/xiaomi/android/support/v7/widget/b$a;->a(IZ)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->h(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v1, p1, v0, p3}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/xiaomi/android/support/v7/widget/b;->e(I)I

    move-result v0

    goto :goto_0
.end method

.method final a(Landroid/view/View;IZ)V
    .locals 2

    if-gez p2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->a()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v0, p3}, Lcom/xiaomi/android/support/v7/widget/b$a;->a(IZ)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->h(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(Landroid/view/View;I)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/xiaomi/android/support/v7/widget/b;->e(I)I

    move-result v0

    goto :goto_0
.end method

.method final b()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->a()I

    move-result v0

    return v0
.end method

.method final b(I)Landroid/view/View;
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->i(Landroid/view/View;)Z

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(I)V

    goto :goto_0
.end method

.method final c(Landroid/view/View;)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v1, p1}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/b$a;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/b$a;->e(I)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method final c(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b$b;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final d(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->e(I)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$a;->d(I)Z

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->c(I)V

    return-void
.end method

.method final d(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final e(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$a;->a(I)V

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->h(Landroid/view/View;)V

    return-void
.end method

.method final f(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$a;->c(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b$a;->b(I)V

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->i(Landroid/view/View;)Z

    return-void
.end method

.method final g(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v1, p1}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->i(Landroid/view/View;)Z

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/b$a;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/b$a;->d(I)Z

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->i(Landroid/view/View;)Z

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v2, v1}, Lcom/xiaomi/android/support/v7/widget/b$b;->a(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
