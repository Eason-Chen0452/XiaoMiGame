.class public Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;
    }
.end annotation


# instance fields
.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->b:I

    return-void
.end method

.method private a(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static b(JJ)J
    .locals 6

    const-wide/16 v4, 0x4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    div-long v0, p0, v4

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    div-long v2, p2, v4

    add-long p2, v0, v2

    goto :goto_0
.end method


# virtual methods
.method final a(IJ)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    move-result-object v0

    iget-wide v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->d:J

    invoke-static {v2, v3, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->b(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->d:J

    return-void
.end method

.method final a(J)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    move-result-object v0

    iget-wide v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->c:J

    invoke-static {v2, v3, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->b(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->c:J

    return-void
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->b:I

    :cond_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->b:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->b:I

    :cond_2
    return-void
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    iget v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f:I

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->b:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->r()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final a(IJJ)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    move-result-object v0

    iget-wide v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, v0, p4

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(JJ)Z
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;

    move-result-object v1

    iget-wide v2, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool$a;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    add-long/2addr v2, p1

    cmp-long v1, v2, p3

    if-gez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method
