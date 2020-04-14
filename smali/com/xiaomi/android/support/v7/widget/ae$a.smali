.class final Lcom/xiaomi/android/support/v7/widget/ae$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static d:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/ae$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/ae$a;->d:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/xiaomi/android/support/v7/widget/ae$a;
    .locals 1

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/ae$a;->d:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/ae$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/ae$a;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/ae$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Lcom/xiaomi/android/support/v7/widget/ae$a;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/ae$a;->a:I

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/ae$a;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/ae$a;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/ae$a;->d:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method static b()V
    .locals 1

    :cond_0
    sget-object v0, Lcom/xiaomi/android/support/v7/widget/ae$a;->d:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void
.end method
