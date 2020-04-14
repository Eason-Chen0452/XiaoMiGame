.class public Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 2

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->d:I

    return-object p0
.end method
