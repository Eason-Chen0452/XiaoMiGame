.class public Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
    }
.end annotation


# instance fields
.field final a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

.field final b:Landroid/support/v4/view/AccessibilityDelegateCompat;


# direct methods
.method public constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    instance-of v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    const-class v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/16 v3, 0x2000

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_1
    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/16 v3, 0x1000

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_3
    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v3

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    invoke-static {v3, v0, v6, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
