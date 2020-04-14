.class public abstract Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field private static final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:J

.field f:I

.field g:I

.field h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

.field i:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field m:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

.field private n:I

.field private p:I

.field private q:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

.field private r:Z

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f:I

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    iput-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iput-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iput-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    iput-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k:Ljava/util/List;

    iput v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    iput-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iput-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->r:Z

    iput v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->s:I

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->l:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->s:I

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->s:I

    invoke-virtual {p1, p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->s:I

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->r:Z

    return v0
.end method

.method static synthetic d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    return v0
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    return-void
.end method

.method final a(II)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    return-void
.end method

.method final a(IZ)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    :cond_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    :cond_2
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    :cond_3
    return-void
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iput-boolean p2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->r:Z

    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    goto :goto_1
.end method

.method final a(I)Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    return-void
.end method

.method final b()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    goto :goto_0
.end method

.method final f()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method final h()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()V
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    return-void
.end method

.method final j()V
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    return-void
.end method

.method final k()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final m()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final n()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final o()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final p()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    return-void
.end method

.method final q()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k:Ljava/util/List;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o:Ljava/util/List;

    goto :goto_0
.end method

.method final r()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iput v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    iput v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    iput-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iput-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p()V

    iput v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->s:I

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->l:I

    invoke-static {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final s()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final t()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ViewHolder{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->r:Z

    if-eqz v0, :cond_b

    const-string v0, "[changeScrap]"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->s()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_9

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "[attachedScrap]"

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_1
.end method
