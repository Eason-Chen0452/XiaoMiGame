.class public Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$c;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnFlingListener;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$a;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$d;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$f;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;
    }
.end annotation


# static fields
.field static final H:Landroid/view/animation/Interpolator;

.field private static final I:[I

.field private static final J:[I

.field private static final K:Z

.field private static final L:Z

.field private static final M:Z

.field private static final N:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final a:Z

.field static final b:Z

.field static final c:Z


# instance fields
.field A:Lcom/xiaomi/android/support/v7/widget/n$a;

.field final B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

.field C:Z

.field D:Z

.field E:Z

.field F:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field final G:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;

.field private P:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

.field private final Q:Landroid/graphics/Rect;

.field private final R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;",
            ">;"
        }
    .end annotation
.end field

.field private S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

.field private T:I

.field private U:Z

.field private V:I

.field private final W:Landroid/view/accessibility/AccessibilityManager;

.field private final aA:[I

.field private final aB:[I

.field private final aC:[I

.field private aD:Ljava/lang/Runnable;

.field private final aE:Lcom/xiaomi/android/support/v7/widget/ae$b;

.field private aa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$d;",
            ">;"
        }
    .end annotation
.end field

.field private ab:I

.field private ac:I

.field private ad:Landroid/widget/EdgeEffect;

.field private ae:Landroid/widget/EdgeEffect;

.field private af:Landroid/widget/EdgeEffect;

.field private ag:Landroid/widget/EdgeEffect;

.field private ah:I

.field private ai:I

.field private aj:Landroid/view/VelocityTracker;

.field private ak:I

.field private al:I

.field private am:I

.field private an:I

.field private ao:I

.field private ap:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnFlingListener;

.field private final aq:I

.field private final ar:I

.field private as:F

.field private at:Z

.field private au:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;

.field private av:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private aw:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;

.field private ax:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

.field private final ay:[I

.field private az:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

.field e:Lcom/xiaomi/android/support/v7/widget/a;

.field f:Lcom/xiaomi/android/support/v7/widget/b;

.field final g:Lcom/xiaomi/android/support/v7/widget/ae;

.field h:Z

.field final i:Ljava/lang/Runnable;

.field final j:Landroid/graphics/Rect;

.field final k:Landroid/graphics/RectF;

.field l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

.field m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field n:Lcom/xiaomi/android/support/v7/widget/RecyclerView$f;

.field final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field p:Z

.field q:Z

.field r:Z

.field s:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

.field final y:Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

.field z:Lcom/xiaomi/android/support/v7/widget/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [I

    const v3, 0x1010436

    aput v3, v0, v1

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->I:[I

    new-array v0, v2, [I

    const v3, 0x10100eb

    aput v3, v0, v1

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_3

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_4

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->K:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_5

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->L:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v4, :cond_6

    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->M:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->N:[Ljava/lang/Class;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/w;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/w;-><init>()V

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->H:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->O:Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-direct {v3}, Lcom/xiaomi/android/support/v7/widget/ae;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/u;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xiaomi/android/support/v7/widget/u;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->i:Ljava/lang/Runnable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->k:Landroid/graphics/RectF;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ab:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ac:I

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ah:I

    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->as:F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->at:Z

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y:Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

    sget-boolean v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->K:Z

    if-eqz v3, :cond_3

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/n$a;

    invoke-direct {v3}, Lcom/xiaomi/android/support/v7/widget/n$a;-><init>()V

    :goto_0
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A:Lcom/xiaomi/android/support/v7/widget/n$a;

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-direct {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->C:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->D:Z

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$c;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$c;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aw:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->E:Z

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ay:[I

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aB:[I

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/v;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xiaomi/android/support/v7/widget/v;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aD:Ljava/lang/Runnable;

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/x;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xiaomi/android/support/v7/widget/x;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aE:Lcom/xiaomi/android/support/v7/widget/ae$b;

    if-eqz p2, :cond_4

    sget-object v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J:[I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aq:I

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ar:I

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aw:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;

    invoke-virtual {v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$a;)V

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/a;

    new-instance v4, Lcom/xiaomi/android/support/v7/widget/z;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/xiaomi/android/support/v7/widget/z;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    invoke-direct {v3, v4}, Lcom/xiaomi/android/support/v7/widget/a;-><init>(Lcom/xiaomi/android/support/v7/widget/a$a;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/b;

    new-instance v4, Lcom/xiaomi/android/support/v7/widget/y;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/xiaomi/android/support/v7/widget/y;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    invoke-direct {v3, v4}, Lcom/xiaomi/android/support/v7/widget/b;-><init>(Lcom/xiaomi/android/support/v7/widget/b$b;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->W:Landroid/view/accessibility/AccessibilityManager;

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->F:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->F:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    const/4 v12, 0x1

    if-eqz p2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "RecyclerView"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->d(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "RecyclerView_layoutManager"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "RecyclerView_android_descendantFocusability"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    invoke-virtual {v13, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/high16 v3, 0x40000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "RecyclerView_fastScrollEnabled"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v13, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->r:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->r:Z

    if-eqz v3, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "RecyclerView_fastScrollVerticalThumbDrawable"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "RecyclerView_fastScrollVerticalTrackDrawable"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "RecyclerView_fastScrollHorizontalThumbDrawable"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "RecyclerView_fastScrollHorizontalTrackDrawable"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-nez v8, :cond_6

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Trying to set fast scroller without both required drawables."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fastscroll_default_thickness"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v9, "fastscroll_minimum_range"

    invoke-static {v3, v9}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v9, "fastscroll_margin"

    invoke-static {v3, v9}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/k;

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/xiaomi/android/support/v7/widget/k;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    :cond_7
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v7

    const/4 v6, 0x0

    :try_start_1
    sget-object v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->N:[Ljava/lang/Class;

    invoke-virtual {v7, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    const/4 v8, 0x1

    aput-object p2, v5, v8

    const/4 v8, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    :goto_5
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_d

    sget-object v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->I:[I

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void

    :cond_9
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v3

    goto :goto_3

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto/16 :goto_3

    :cond_b
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v3

    goto/16 :goto_4

    :catch_0
    move-exception v3

    const/4 v5, 0x0

    :try_start_4
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    move-result-object v3

    move-object v5, v6

    goto :goto_5

    :catch_1
    move-exception v5

    :try_start_5
    invoke-virtual {v5, v3}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Error creating LayoutManager "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_6

    :catch_2
    move-exception v3

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Unable to find LayoutManager "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v3

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_4
    move-exception v3

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_5
    move-exception v3

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Cannot access non-public constructor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_6
    move-exception v3

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Class is not a LayoutManager "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_c
    const/high16 v3, 0x40000

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    :cond_d
    move v3, v12

    goto/16 :goto_6
.end method

.method private A()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ab:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/a;->a()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/a;->b()V

    :goto_0
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->C:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->D:Z

    if-eqz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u:Z

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->i:Z

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->i:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    iput-boolean v2, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->j:Z

    return-void

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/a;->e()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v3, v1

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_3
.end method

.method private D()V
    .locals 10

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    const-string v0, "RecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "RecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->h:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->G()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->H()V

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->c:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->i:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_10

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->j()Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/ae;->b:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v6, v0}, Lcom/xiaomi/android/support/v7/widget/ae;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    iget-object v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v7, v3}, Lcom/xiaomi/android/support/v7/widget/ae;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    if-eqz v6, :cond_2

    if-eq v0, v3, :cond_f

    :cond_2
    iget-object v8, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v8, v0}, Lcom/xiaomi/android/support/v7/widget/ae;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v9, v3, v1}, Lcom/xiaomi/android/support/v7/widget/ae;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v1, v3}, Lcom/xiaomi/android/support/v7/widget/ae;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v1

    if-nez v8, :cond_b

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v6

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_9

    iget-object v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v7, v1}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eq v7, v3, :cond_8

    invoke-direct {p0, v7}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_8

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->s()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->H()V

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    goto/16 :goto_1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n View Holder 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_9
    const-string v1, "RecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " cannot be found but it is necessary for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_2

    :cond_b
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    if-eqz v6, :cond_c

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_c
    if-eq v0, v3, :cond_e

    if-eqz v7, :cond_d

    invoke-direct {p0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_d
    iput-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    iput-object v0, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    :cond_e
    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v0, v3, v8, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j()V

    goto :goto_5

    :cond_f
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v0, v3, v1}, Lcom/xiaomi/android/support/v7/widget/ae;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aE:Lcom/xiaomi/android/support/v7/widget/ae$b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/ae;->a(Lcom/xiaomi/android/support/v7/widget/ae$b;)V

    :cond_11
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->d:I

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->i:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->j:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_12
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->y:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->y:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b()V

    :cond_13
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/ae;->a()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ay:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ay:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ay:[I

    invoke-direct {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a([I)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ay:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ne v2, v0, :cond_14

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ay:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    if-eq v0, v1, :cond_17

    :cond_14
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m()V

    :cond_15
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->at:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_16

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_18

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    :goto_7
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->E()V

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    goto :goto_6

    :cond_18
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    sget-boolean v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->M:Z

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1a

    :cond_19
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestFocus()Z

    goto :goto_7

    :cond_1a
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_1b
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-wide v2, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->l:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-wide v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->l:J

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(J)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :cond_1c
    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/b;->d(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1d
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v0

    if-lez v0, :cond_1e

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->F()Landroid/view/View;

    move-result-object v1

    :cond_1e
    :goto_8
    if-eqz v1, :cond_16

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->m:I

    int-to-long v2, v0

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->m:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_20

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_7

    :cond_1f
    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    goto :goto_8

    :cond_20
    move-object v0, v1

    goto :goto_9
.end method

.method private E()V
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->l:J

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->k:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->m:I

    return-void
.end method

.method private F()Landroid/view/View;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->k:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->k:I

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v3

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-direct {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v0, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    :goto_2
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_5

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_2

    :cond_3
    iget-object v3, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private G()V
    .locals 9

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->a(I)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v4, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->h:Z

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/ae;->a()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f()V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->C()V

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->at:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    move-object v5, v0

    :goto_1
    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->E()V

    :goto_2
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->i:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->D:Z

    if-eqz v0, :cond_a

    move v0, v3

    :goto_3
    iput-boolean v0, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->g:Z

    iput-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->D:Z

    iput-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->C:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->j:Z

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->d:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ay:[I

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a([I)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->i:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v1

    move v0, v4

    :goto_4
    if-ge v0, v1, :cond_b

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v5, v0}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)I

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q()Ljava/util/List;

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->j()Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v7, v5, v6}, Lcom/xiaomi/android/support/v7/widget/ae;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v6, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->g:Z

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v6

    iget-object v8, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v8, v6, v7, v5}, Lcom/xiaomi/android/support/v7/widget/ae;->a(JLcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v5, v0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_1

    :cond_4
    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-wide v0, v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    :goto_5
    iput-wide v0, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->l:J

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_6
    iput v0, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->k:I

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v0, v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    :cond_5
    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_9

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_9

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_7

    :cond_6
    const-wide/16 v0, -0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    goto :goto_6

    :cond_8
    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e()I

    move-result v0

    goto :goto_6

    :cond_9
    iput v1, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->m:I

    goto/16 :goto_2

    :cond_a
    move v0, v4

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->j:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v1

    move v0, v4

    :goto_8
    if-ge v0, v1, :cond_d

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v5, v0}, Lcom/xiaomi/android/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v6

    if-nez v6, :cond_c

    iget v6, v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    if-ne v6, v2, :cond_c

    iget v6, v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iput v6, v5, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d:I

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->e:Z

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v4, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->e:Z

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v2, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->e:Z

    move v1, v4

    :goto_9
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v0

    if-ge v1, v0, :cond_12

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/ae;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/ae$a;

    if-eqz v0, :cond_f

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/ae$a;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    move v0, v3

    :goto_a
    if-nez v0, :cond_e

    invoke-static {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)I

    const/16 v0, 0x2000

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(I)Z

    move-result v0

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->q()Ljava/util/List;

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->j()Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v5

    if-eqz v0, :cond_10

    invoke-virtual {p0, v2, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_e
    :goto_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_f
    move v0, v4

    goto :goto_a

    :cond_10
    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    iget-object v0, v6, Lcom/xiaomi/android/support/v7/widget/ae;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/ae$a;

    if-nez v0, :cond_11

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/ae$a;->a()Lcom/xiaomi/android/support/v7/widget/ae$a;

    move-result-object v0

    iget-object v6, v6, Lcom/xiaomi/android/support/v7/widget/ae;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v2, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/ae$a;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/ae$a;->a:I

    iput-object v5, v0, Lcom/xiaomi/android/support/v7/widget/ae$a;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_b

    :cond_12
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->I()V

    :goto_c
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g()V

    invoke-virtual {p0, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x2

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->c:I

    return-void

    :cond_13
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->I()V

    goto :goto_c

    :cond_14
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private H()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/a;->e()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v2

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->d:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->P:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->i:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->c:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g()V

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private I()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_3

    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a()V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    return-void
.end method

.method private J()Landroid/support/v4/view/NestedScrollingChildHelper;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->az:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->az:Landroid/support/v4/view/NestedScrollingChildHelper;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->az:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private a(J)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v3

    const/4 v2, 0x0

    move-object v1, v0

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v4

    if-nez v4, :cond_3

    iget-wide v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/xiaomi/android/support/v7/widget/b;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ak:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->al:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v5

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    move-object v0, p2

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-boolean v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s:Z

    if-nez v2, :cond_3

    move v4, v5

    :goto_1
    if-nez p2, :cond_4

    :goto_2
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void

    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_1

    :cond_4
    move v5, v1

    goto :goto_2
.end method

.method static a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p0    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b:Ljava/lang/ref/WeakReference;

    goto :goto_1
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a([I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v5

    if-nez v5, :cond_0

    aput v1, p1, v4

    aput v1, p1, v7

    :goto_0
    return-void

    :cond_0
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v0

    if-ge v0, v2, :cond_1

    move v2, v0

    :cond_1
    if-le v0, v1, :cond_3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    aput v2, p1, v4

    aput v1, p1, v7

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private a(IILandroid/view/MotionEvent;)Z
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d()V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_11

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f()V

    const-string v2, "RV Scroll"

    invoke-static {v2}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    if-eqz p1, :cond_10

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, p1, v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v5

    sub-int v3, p1, v5

    :goto_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p2, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    sub-int v1, p2, v0

    move v4, v1

    :cond_0
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    move v2, v0

    move v1, v5

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    :cond_1
    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {p3, v0, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    const/4 v3, 0x0

    aget v4, v0, v3

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v0, v3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    const/4 v3, 0x1

    aget v4, v0, v3

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v0, v3

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m()V

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    :cond_6
    if-nez v1, :cond_7

    if-eqz v2, :cond_f

    :cond_7
    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    int-to-float v4, v4

    const/4 v0, 0x0

    const/4 v7, 0x0

    cmpg-float v7, v3, v7

    if-gez v7, :cond_d

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    neg-float v7, v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v6, v9

    sub-float v6, v8, v6

    invoke-static {v0, v7, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    const/4 v0, 0x1

    :cond_9
    :goto_4
    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_e

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->v()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    neg-float v6, v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v0, v6, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    const/4 v0, 0x1

    :cond_a
    :goto_5
    if-nez v0, :cond_b

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(II)V

    goto :goto_2

    :cond_d
    const/4 v7, 0x0

    cmpl-float v7, v3, v7

    if-lez v7, :cond_9

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v3, v7

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    invoke-static {v0, v7, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_a

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    sub-float v5, v7, v5

    invoke-static {v0, v6, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    const/4 v0, 0x1

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_10
    move v5, v1

    goto/16 :goto_0

    :cond_11
    move v2, v0

    goto/16 :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    sparse-switch p3, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "direction must be absolute. received:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_5

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v2, v3, :cond_1

    :cond_8
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method private c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/xiaomi/android/support/v7/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/b;->a(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/b;->e(Landroid/view/View;)V

    goto :goto_1
.end method

.method private d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e:J

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method private d(I)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v3

    const/4 v2, 0x0

    move-object v1, v0

    :goto_1
    if-ge v2, v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/xiaomi/android/support/v7/widget/b;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method static d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static g(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    instance-of v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    goto :goto_0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object p0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move-object p0, v0

    goto :goto_0
.end method

.method static p()J
    .locals 2

    sget-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->K:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic q()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->K:Z

    return v0
.end method

.method private r()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(I)V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s()V

    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y:Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->b()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->y()V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method private v()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0
.end method

.method private x()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    return-void
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->stopNestedScroll()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private z()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(I)V

    return-void
.end method


# virtual methods
.method public final a(FF)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->d()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a()V

    return-void
.end method

.method final a(I)V
    .locals 2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ah:I

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ah:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method final a(II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method final a(IIZ)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x1

    add-int v1, p1, p2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    if-lt v4, v1, :cond_1

    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v6, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->e:Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v4, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    if-lt v4, p1, :cond_0

    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v7}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    invoke-virtual {v3, v5, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    iput v4, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v6, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->e:Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    add-int v3, p1, p2

    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_5

    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_3

    iget v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    if-lt v4, v3, :cond_4

    neg-int v4, p2

    invoke-virtual {v0, v4, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(IZ)V

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iget v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    if-lt v4, p1, :cond_3

    invoke-virtual {v0, v7}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_1

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t:Z

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->O:Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/a;->a()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->O:Lcom/xiaomi/android/support/v7/widget/RecyclerView$g;

    invoke-virtual {p1, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a()V

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->e()Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$RecycledViewPool;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->e:Z

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->k()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->r()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->d()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a()V

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    :goto_1
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/b;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    :goto_2
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/xiaomi/android/support/v7/widget/b$a;->a:J

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/b$a;->b:Lcom/xiaomi/android/support/v7/widget/b$a;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a()V

    goto :goto_1

    :cond_4
    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_5

    iget-object v3, v2, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v3, v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->d(Landroid/view/View;)V

    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/b;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_5
    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/b;->a:Lcom/xiaomi/android/support/v7/widget/b$b;

    invoke-interface {v0}, Lcom/xiaomi/android/support/v7/widget/b$b;->b()V

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LayoutManager "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v:Z

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    goto/16 :goto_0
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(II)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v2, v0, v1, p1}, Lcom/xiaomi/android/support/v7/widget/ae;->a(JLcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/ae;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
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

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ax:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ax:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ax:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ac:I

    if-lez v0, :cond_2

    const-string v0, "RecyclerView"

    const-string v1, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method final a(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    if-gtz v0, :cond_0

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    :cond_0
    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t:Z

    :cond_1
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    if-ne v0, v2, :cond_3

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->D()V

    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t:Z

    :cond_3
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    return-void
.end method

.method final a(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->g(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->l:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    return-void
.end method

.method final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 8

    const/4 v2, -0x1

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->m()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    iget v1, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->c:I

    iget-object v0, v4, Lcom/xiaomi/android/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_1

    iget-object v0, v4, Lcom/xiaomi/android/support/v7/widget/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/a$b;

    iget v6, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->a:I

    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :sswitch_0
    iget v6, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->b:I

    if-gt v6, v1, :cond_3

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->d:I

    add-int/2addr v1, v0

    goto :goto_2

    :sswitch_1
    iget v6, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->b:I

    if-gt v6, v1, :cond_3

    iget v6, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->b:I

    iget v7, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->d:I

    add-int/2addr v6, v7

    if-le v6, v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->d:I

    sub-int/2addr v1, v0

    goto :goto_2

    :sswitch_2
    iget v6, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->b:I

    if-ne v6, v1, :cond_5

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->d:I

    goto :goto_2

    :cond_5
    iget v6, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->b:I

    if-ge v6, v1, :cond_6

    add-int/lit8 v1, v1, -0x1

    :cond_6
    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/a$b;->d:I

    if-gt v0, v1, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method public final b()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public final b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->r()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->d(I)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method final b(II)V
    .locals 2

    if-gez p1, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_0
    :goto_0
    if-gez p2, :cond_5

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->v()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_5
    if-lez p2, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1
.end method

.method public final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
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

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ah:I

    return v0
.end method

.method public final c(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, p1

    :goto_0
    if-eqz v1, :cond_0

    if-eq v1, p0, :cond_0

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-ne v1, p0, :cond_1

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->d(I)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method final c(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method final d()V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-eqz v2, :cond_2

    :cond_0
    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->D()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/a;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "RV PartialInvalidate"

    invoke-static {v2}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f()V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/a;->b()V

    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v3

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v4, v2}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v1

    :cond_3
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->D()V

    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/a;->c()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->D()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ad:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_3
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-boolean v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ae:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    iget-boolean v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->af:Landroid/widget/EdgeEffect;

    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_7
    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ag:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_8
    if-eqz v2, :cond_6

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    return-void

    :cond_7
    move v0, v1

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_2

    :cond_9
    move v3, v1

    goto/16 :goto_4

    :cond_a
    move v3, v1

    goto/16 :goto_5

    :cond_b
    move v3, v1

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method final e()V
    .locals 2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t:Z

    :cond_0
    return-void
.end method

.method final f(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, v6, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;->a(Landroid/graphics/Rect;Landroid/view/View;)V

    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    iput-boolean v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    move-object v0, v2

    goto :goto_0
.end method

.method final f()V
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ab:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ab:I

    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 9

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v6

    if-eqz v0, :cond_c

    if-eq p2, v8, :cond_0

    if-ne p2, v1, :cond_c

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-ne p2, v8, :cond_4

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v6, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_2
    sget-boolean v7, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->L:Z

    if-eqz v7, :cond_1

    move p2, v0

    :cond_1
    :goto_3
    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v3, v1

    :goto_4
    if-ne p2, v8, :cond_7

    move v0, v1

    :goto_5
    xor-int/2addr v0, v3

    if-eqz v0, :cond_8

    const/16 v0, 0x42

    :goto_6
    invoke-virtual {v6, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_9

    move v3, v1

    :goto_7
    sget-boolean v7, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->L:Z

    if-eqz v7, :cond_2

    move p2, v0

    :cond_2
    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    move-object p1, v5

    :goto_8
    return-object p1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    const/16 v0, 0x21

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v4

    goto :goto_6

    :cond_9
    move v3, v2

    goto :goto_7

    :cond_a
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v3, v7}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    :cond_b
    invoke-virtual {v6, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_9
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_e

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto :goto_8

    :cond_c
    invoke-virtual {v6, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1a

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    move-object p1, v5

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v3, v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    goto :goto_9

    :cond_e
    invoke-direct {p0, v0, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;)V

    goto :goto_8

    :cond_f
    if-eqz v0, :cond_10

    if-ne v0, p0, :cond_12

    :cond_10
    move v1, v2

    :cond_11
    :goto_a
    if-eqz v1, :cond_19

    move-object p1, v0

    goto :goto_8

    :cond_12
    if-eqz p1, :cond_11

    if-eq p2, v8, :cond_13

    if-ne p2, v1, :cond_18

    :cond_13
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v1, :cond_16

    move v3, v1

    :goto_b
    if-ne p2, v8, :cond_14

    move v2, v1

    :cond_14
    xor-int/2addr v2, v3

    if-eqz v2, :cond_15

    const/16 v4, 0x42

    :cond_15
    invoke-direct {p0, p1, v0, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_11

    if-ne p2, v8, :cond_17

    const/16 v1, 0x82

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    goto :goto_a

    :cond_16
    move v3, v2

    goto :goto_b

    :cond_17
    const/16 v1, 0x21

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    goto :goto_a

    :cond_18
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    goto :goto_a

    :cond_19
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    goto/16 :goto_8

    :cond_1a
    move-object v0, v3

    goto/16 :goto_9

    :cond_1b
    move v3, v2

    goto/16 :goto_3
.end method

.method final g()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ab:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ab:I

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ab:I

    if-gtz v0, :cond_3

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ab:I

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->V:I

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->V:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-static {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->l:I

    if-eq v2, v4, :cond_1

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    iput v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->l:I

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ax:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ax:Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$b;->a(II)I

    move-result v0

    goto :goto_0
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    return v0
.end method

.method final h(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aa:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aa:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$d;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$d;->a(Landroid/view/View;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method final h()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->W:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->W:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public final i()Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method final i(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aa:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aa:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method final j()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->E:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aD:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->E:Z

    :cond_0
    return-void
.end method

.method final k()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iput-boolean v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_1

    iput-boolean v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method final l()V
    .locals 6

    const/4 v5, 0x6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/b;->b()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v3, v1}, Lcom/xiaomi/android/support/v7/widget/b;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->k()V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v0, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->d()V

    :cond_4
    return-void
.end method

.method final m()V
    .locals 2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ac:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ac:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->au:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->au:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->av:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnScrollListener;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ac:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ac:I

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final o()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ab:I

    iput-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p:Z

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v:Z

    :cond_0
    iput-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->E:Z

    sget-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->K:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/n;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/n;

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/n;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/n;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v2, 0x41f00000    # 30.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float v0, v2, v0

    float-to-long v2, v0

    iput-wide v2, v1, Lcom/xiaomi/android/support/v7/widget/n;->d:J

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/n;->a:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->r()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->p:Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->G:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/xiaomi/android/support/v7/widget/ae$a;->b()V

    sget-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->K:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, p1, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;->b(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    :goto_1
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    :goto_2
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    cmpl-float v3, v2, v1

    if-eqz v3, :cond_0

    :cond_2
    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->as:F

    const/4 v4, 0x1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x101004d

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->as:F

    :cond_3
    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->as:F

    :cond_4
    mul-float/2addr v2, v1

    float-to-int v2, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v2, v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v1, -0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-eqz v0, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v9, :cond_2

    if-nez v5, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;->a(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eq v5, v9, :cond_4

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z()V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_7

    move v2, v3

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v0

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v4

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    if-nez v5, :cond_8

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    :cond_8
    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    packed-switch v5, :pswitch_data_0

    :cond_9
    :goto_3
    :pswitch_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ah:I

    if-eq v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->U:Z

    if-eqz v1, :cond_a

    iput-boolean v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->U:Z

    :cond_a
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ak:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v8

    float-to-int v1, v1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->al:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ah:I

    const/4 v5, 0x2

    if-ne v1, v5, :cond_b

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(I)V

    :cond_b
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    aput v3, v5, v2

    aput v3, v1, v3

    if-eqz v0, :cond_12

    move v0, v2

    :goto_4
    if-eqz v4, :cond_c

    or-int/lit8 v0, v0, 0x2

    :cond_c
    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ak:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->al:I

    goto :goto_3

    :pswitch_3
    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_d

    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ah:I

    if-eq v7, v2, :cond_9

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ak:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->al:I

    sub-int/2addr v5, v7

    if-eqz v0, :cond_11

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    if-le v0, v7, :cond_11

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ak:I

    iget v8, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    if-gez v6, :cond_f

    move v0, v1

    :goto_5
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    move v0, v2

    :goto_6
    if-eqz v4, :cond_e

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    if-le v4, v6, :cond_e

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->al:I

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    if-gez v5, :cond_10

    :goto_7
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    move v0, v2

    :cond_e
    if-eqz v0, :cond_9

    invoke-virtual {p0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(I)V

    goto/16 :goto_3

    :cond_f
    move v0, v2

    goto :goto_5

    :cond_10
    move v1, v2

    goto :goto_7

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z()V

    goto/16 :goto_3

    :cond_11
    move v0, v3

    goto :goto_6

    :cond_12
    move v0, v3

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->D()V

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w:Z

    if-eqz v2, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v2, v4, :cond_2

    if-ne v3, v4, :cond_2

    move v0, v1

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(II)V

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->c:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->G()V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(II)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->h:Z

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->H()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(II)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(II)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->h:Z

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->H()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(II)V

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->q:Z

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(II)V

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->v:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f()V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->C()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g()V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->j:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    :goto_1
    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->v:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v2

    iput v2, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->d:I

    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(II)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Z)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->e:Lcom/xiaomi/android/support/v7/widget/a;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/a;->e()V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput-boolean v0, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iput v0, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->d:I

    goto :goto_2
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->P:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->P:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->P:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->P:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->P:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->P:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    iput-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SavedState;->a:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->U:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    iput-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    :cond_2
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_7

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;->a(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_6

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    move v0, v4

    :goto_2
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z()V

    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    invoke-interface {v2, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;->b(Landroid/view/MotionEvent;)V

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_5

    :cond_4
    iput-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->S:Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v6

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-nez v0, :cond_a

    iget-object v8, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    iget-object v9, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    aput v3, v9, v4

    aput v3, v8, v3

    :cond_a
    iget-object v8, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    aget v8, v8, v3

    int-to-float v8, v8

    iget-object v9, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    aget v9, v9, v4

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v0, :pswitch_data_0

    :cond_b
    :goto_3
    :pswitch_0
    if-nez v3, :cond_c

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_c
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    move v3, v4

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ak:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->al:I

    if-eqz v5, :cond_28

    move v0, v4

    :goto_4
    if-eqz v6, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ak:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->al:I

    goto :goto_3

    :pswitch_3
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_e

    const-string v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v10

    float-to-int v8, v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v10

    float-to-int v9, v0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    sub-int v1, v0, v8

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    sub-int/2addr v0, v9

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aB:[I

    iget-object v10, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    invoke-virtual {p0, v1, v0, v2, v10}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aB:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aB:[I

    aget v2, v2, v4

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v10, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    aget v10, v10, v4

    int-to-float v10, v10

    invoke-virtual {v7, v2, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    aget v10, v2, v3

    iget-object v11, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    aget v11, v11, v3

    add-int/2addr v10, v11

    aput v10, v2, v3

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aC:[I

    aget v10, v2, v4

    iget-object v11, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    aget v11, v11, v4

    add-int/2addr v10, v11

    aput v10, v2, v4

    :cond_f
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ah:I

    if-eq v2, v4, :cond_11

    if-eqz v5, :cond_27

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v10, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    if-le v2, v10, :cond_27

    if-lez v1, :cond_14

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    sub-int/2addr v1, v2

    :goto_5
    move v2, v4

    :goto_6
    if-eqz v6, :cond_10

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    if-le v10, v11, :cond_10

    if-lez v0, :cond_15

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    sub-int/2addr v0, v2

    :goto_7
    move v2, v4

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {p0, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(I)V

    :cond_11
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ah:I

    if-ne v2, v4, :cond_b

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    aget v2, v2, v3

    sub-int v2, v8, v2

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->am:I

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aA:[I

    aget v2, v2, v4

    sub-int v2, v9, v2

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->an:I

    if-eqz v5, :cond_16

    move v5, v1

    :goto_8
    if-eqz v6, :cond_17

    move v2, v0

    :goto_9
    invoke-direct {p0, v5, v2, v7}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_12
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    if-eqz v2, :cond_b

    if-nez v1, :cond_13

    if-eqz v0, :cond_b

    :cond_13
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z:Lcom/xiaomi/android/support/v7/widget/n;

    invoke-virtual {v2, p0, v1, v0}, Lcom/xiaomi/android/support/v7/widget/n;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_3

    :cond_14
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    add-int/2addr v1, v2

    goto :goto_5

    :cond_15
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ao:I

    add-int/2addr v0, v2

    goto :goto_7

    :cond_16
    move v5, v3

    goto :goto_8

    :cond_17
    move v2, v3

    goto :goto_9

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v8, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ar:I

    int-to-float v8, v8

    invoke-virtual {v0, v2, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    if-eqz v5, :cond_1c

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    move v2, v0

    :goto_a
    if-eqz v6, :cond_1d

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aj:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ai:I

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    neg-float v0, v0

    :goto_b
    cmpl-float v5, v2, v1

    if-nez v5, :cond_18

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1a

    :cond_18
    float-to-int v1, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v2, :cond_1e

    const-string v0, "RecyclerView"

    const-string v1, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    move v0, v3

    :goto_c
    if-nez v0, :cond_1b

    :cond_1a
    invoke-virtual {p0, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(I)V

    :cond_1b
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y()V

    move v3, v4

    goto/16 :goto_3

    :cond_1c
    move v2, v1

    goto :goto_a

    :cond_1d
    move v0, v1

    goto :goto_b

    :cond_1e
    iget-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v5

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v6

    if-eqz v5, :cond_1f

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v8, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aq:I

    if-ge v2, v8, :cond_26

    :cond_1f
    move v2, v3

    :goto_d
    if-eqz v6, :cond_20

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v8, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->aq:I

    if-ge v1, v8, :cond_25

    :cond_20
    move v1, v3

    :goto_e
    if-nez v2, :cond_21

    if-eqz v1, :cond_19

    :cond_21
    int-to-float v0, v2

    int-to-float v8, v1

    invoke-virtual {p0, v0, v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v0

    if-nez v0, :cond_19

    if-nez v5, :cond_22

    if-eqz v6, :cond_23

    :cond_22
    move v0, v4

    :goto_f
    int-to-float v5, v2

    int-to-float v6, v1

    invoke-virtual {p0, v5, v6, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ap:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnFlingListener;

    if-eqz v5, :cond_24

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ap:Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$OnFlingListener;->a()Z

    move-result v5

    if-eqz v5, :cond_24

    move v0, v4

    goto :goto_c

    :cond_23
    move v0, v3

    goto :goto_f

    :cond_24
    if-eqz v0, :cond_19

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ar:I

    neg-int v0, v0

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ar:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ar:I

    neg-int v2, v2

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->ar:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y:Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->a(II)V

    move v0, v4

    goto :goto_c

    :pswitch_6
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->z()V

    goto/16 :goto_3

    :cond_25
    move v1, v0

    goto :goto_e

    :cond_26
    move v2, v1

    goto :goto_d

    :cond_27
    move v2, v3

    goto/16 :goto_6

    :cond_28
    move v0, v3

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;

    invoke-interface {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$e;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->T:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->t:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    if-eqz v2, :cond_4

    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    move p2, v0

    goto :goto_2
.end method

.method public scrollTo(II)V
    .locals 2

    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->V:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->V:I

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    :goto_2
    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x()V

    :cond_0
    iput-boolean p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->J()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method
