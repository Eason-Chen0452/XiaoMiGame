.class public abstract Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract a(Landroid/view/ViewGroup;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")TVH;"
        }
    .end annotation
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;->a(II)V

    return-void
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;->a(I)V

    return-void
.end method

.method public final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    const/4 v2, 0x1

    iput p2, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    :cond_0
    const/16 v0, 0x207

    invoke-virtual {p1, v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(II)V

    const-string v0, "RV OnBindView"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q()Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->p()V

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iput-boolean v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b:Z

    return v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;->a()V

    return-void
.end method
