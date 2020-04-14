.class final Lcom/xiaomi/android/support/v7/widget/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/n$a;,
        Lcom/xiaomi/android/support/v7/widget/n$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/n;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/n$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:J

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/n$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/n;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/o;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/o;-><init>()V

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/n;->e:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/n;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/n;->f:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;IJ)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget v4, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(IJ)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Z)V

    goto :goto_2
.end method


# virtual methods
.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;II)V
    .locals 4

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/n;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/n;->c:J

    invoke-virtual {p1, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    iput p2, v0, Lcom/xiaomi/android/support/v7/widget/n$a;->a:I

    iput p3, v0, Lcom/xiaomi/android/support/v7/widget/n$a;->b:I

    return-void
.end method

.method public final run()V
    .locals 14

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->c:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v7, :cond_1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->c:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :cond_2
    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/android/support/v7/widget/n;->d:J

    add-long v6, v2, v4

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v10, :cond_3

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Lcom/xiaomi/android/support/v7/widget/n$a;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Z)V

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    iget v2, v2, Lcom/xiaomi/android/support/v7/widget/n$a;->d:I

    add-int/2addr v2, v3

    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v9, v2

    :goto_5
    if-ge v9, v10, :cond_7

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWindowVisibility()I

    move-result v4

    if-nez v4, :cond_d

    iget-object v11, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    iget v4, v11, Lcom/xiaomi/android/support/v7/widget/n$a;->a:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v11, Lcom/xiaomi/android/support/v7/widget/n$a;->b:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v12, v4, v5

    const/4 v5, 0x0

    move v8, v5

    move v4, v3

    :goto_6
    iget v3, v11, Lcom/xiaomi/android/support/v7/widget/n$a;->d:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v8, v3, :cond_6

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v4, v3, :cond_4

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/n$b;

    invoke-direct {v3}, Lcom/xiaomi/android/support/v7/widget/n$b;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v3

    :goto_7
    iget-object v3, v11, Lcom/xiaomi/android/support/v7/widget/n$a;->c:[I

    add-int/lit8 v13, v8, 0x1

    aget v13, v3, v13

    if-gt v13, v12, :cond_5

    const/4 v3, 0x1

    :goto_8
    iput-boolean v3, v5, Lcom/xiaomi/android/support/v7/widget/n$b;->a:Z

    iput v12, v5, Lcom/xiaomi/android/support/v7/widget/n$b;->b:I

    iput v13, v5, Lcom/xiaomi/android/support/v7/widget/n$b;->c:I

    iput-object v2, v5, Lcom/xiaomi/android/support/v7/widget/n$b;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v3, v11, Lcom/xiaomi/android/support/v7/widget/n$a;->c:[I

    aget v3, v3, v8

    iput v3, v5, Lcom/xiaomi/android/support/v7/widget/n$b;->e:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v8, 0x2

    move v8, v3

    goto :goto_6

    :cond_4
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/android/support/v7/widget/n$b;

    move-object v5, v3

    goto :goto_7

    :cond_5
    const/4 v3, 0x0

    goto :goto_8

    :cond_6
    move v2, v4

    :goto_9
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v3, v2

    goto :goto_5

    :cond_7
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->f:Ljava/util/ArrayList;

    sget-object v3, Lcom/xiaomi/android/support/v7/widget/n;->e:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    move v8, v2

    :goto_a
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_c

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/n$b;

    move-object v3, v0

    iget-object v2, v3, Lcom/xiaomi/android/support/v7/widget/n$b;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_c

    iget-boolean v2, v3, Lcom/xiaomi/android/support/v7/widget/n$b;->a:Z

    if-eqz v2, :cond_9

    const-wide v4, 0x7fffffffffffffffL

    :goto_b
    iget-object v2, v3, Lcom/xiaomi/android/support/v7/widget/n$b;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget v9, v3, Lcom/xiaomi/android/support/v7/widget/n$b;->e:I

    invoke-static {v2, v9, v4, v5}, Lcom/xiaomi/android/support/v7/widget/n;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;IJ)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v4, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_b

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_b

    iget-boolean v4, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-eqz v4, :cond_8

    iget-object v4, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a()V

    :cond_8
    iget-object v5, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    const/4 v4, 0x1

    invoke-virtual {v5, v2, v4}, Lcom/xiaomi/android/support/v7/widget/n$a;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Z)V

    iget v4, v5, Lcom/xiaomi/android/support/v7/widget/n$a;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_b

    :try_start_3
    const-string v4, "RV Nested Prefetch"

    invoke-static {v4}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v9, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    const/4 v10, 0x1

    iput v10, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->c:I

    invoke-virtual {v9}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v9

    iput v9, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->d:I

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->e:Z

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->g:Z

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->h:Z

    const/4 v4, 0x0

    :goto_c
    iget v9, v5, Lcom/xiaomi/android/support/v7/widget/n$a;->d:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v4, v9, :cond_a

    iget-object v9, v5, Lcom/xiaomi/android/support/v7/widget/n$a;->c:[I

    aget v9, v9, v4

    invoke-static {v2, v9, v6, v7}, Lcom/xiaomi/android/support/v7/widget/n;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;IJ)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x2

    goto :goto_c

    :cond_9
    move-wide v4, v6

    goto :goto_b

    :cond_a
    :try_start_4
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :cond_b
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/xiaomi/android/support/v7/widget/n$b;->a:Z

    const/4 v2, 0x0

    iput v2, v3, Lcom/xiaomi/android/support/v7/widget/n$b;->b:I

    const/4 v2, 0x0

    iput v2, v3, Lcom/xiaomi/android/support/v7/widget/n$b;->c:I

    const/4 v2, 0x0

    iput-object v2, v3, Lcom/xiaomi/android/support/v7/widget/n$b;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    iput v2, v3, Lcom/xiaomi/android/support/v7/widget/n$b;->e:I

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_a

    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaomi/android/support/v7/widget/n;->c:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v2

    :cond_c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/n;->c:J

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto/16 :goto_0

    :cond_d
    move v2, v3

    goto/16 :goto_9

    :cond_e
    move v2, v3

    goto/16 :goto_4

    :cond_f
    move-wide v2, v4

    goto/16 :goto_2
.end method
