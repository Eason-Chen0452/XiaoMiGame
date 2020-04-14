.class final Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;->a(Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;)Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/BtnClickUtil;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;->c()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;->a(Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$ItemViewHolder;)Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
