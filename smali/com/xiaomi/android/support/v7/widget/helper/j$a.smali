.class final Lcom/xiaomi/android/support/v7/widget/helper/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/android/support/v7/widget/helper/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/helper/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;FF)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, p2, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;FFI)V
    .locals 1

    const/4 v0, 0x2

    if-ne p6, v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/xiaomi/android/support/v7/widget/helper/j$a;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;FF)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 1

    const/4 v0, 0x2

    if-eq p6, v0, :cond_0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/xiaomi/android/support/v7/widget/helper/j$a;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;FF)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
