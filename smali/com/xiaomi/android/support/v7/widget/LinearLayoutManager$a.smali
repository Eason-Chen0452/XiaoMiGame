.class final Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field final synthetic e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->d:Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    :goto_0
    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    goto :goto_0
.end method

.method final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->e:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
