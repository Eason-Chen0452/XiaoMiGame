.class public abstract Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->c:J

    iput-wide v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->d:J

    iput-wide v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->e:J

    iput-wide v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->f:J

    return-void
.end method

.method public static d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p0    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 4

    const/4 v3, -0x1

    invoke-static {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e()I

    move-result v2

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method

.method public static j()Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;

    return-void
.end method

.method public abstract a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->g(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public abstract b()Z
.end method

.method public abstract b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
.end method

.method public abstract c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract d()V
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->e:J

    return-wide v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->c:J

    return-wide v0
.end method

.method public final f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->d:J

    return-wide v0
.end method

.method public g(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    return v0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->f:J

    return-wide v0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
