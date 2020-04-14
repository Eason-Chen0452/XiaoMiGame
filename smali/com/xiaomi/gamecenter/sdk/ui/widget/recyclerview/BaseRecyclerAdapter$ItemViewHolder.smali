.class public Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;
.super Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private n:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;->n:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;->a:Landroid/view/View;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/a;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/a;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;)Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;->n:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;

    return-object v0
.end method
