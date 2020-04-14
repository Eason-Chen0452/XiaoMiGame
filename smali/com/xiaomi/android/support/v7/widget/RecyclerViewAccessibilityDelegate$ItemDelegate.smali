.class public Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# instance fields
.field final a:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->n()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->n()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerViewAccessibilityDelegate;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    goto :goto_0
.end method
