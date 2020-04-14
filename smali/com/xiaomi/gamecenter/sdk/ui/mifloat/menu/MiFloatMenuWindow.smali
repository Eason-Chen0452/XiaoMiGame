.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

.field private g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

.field private h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;

.field private i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;

.field private j:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

.field private k:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

.field private l:Lcom/xiaomi/gamecenter/sdk/a;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/Space;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->k:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    return-object v0
.end method

.method private a(Z)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->d()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->b(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private b(Z)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->d()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->b(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private g()V
    .locals 10

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/a;->a()Lcom/xiaomi/gamecenter/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->l:Lcom/xiaomi/gamecenter/sdk/a;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_layout"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_userav"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_username"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_name_top_margin"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Space;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->o:Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_redpoint"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_member"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->m:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_vip"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->n:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_vip_tips"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_title_parent"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_recyclerview"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;->A()V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->k:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/b;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->a(Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->k:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->j:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    if-nez v2, :cond_0

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a:Landroid/widget/ImageView;

    invoke-direct {v2, v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;-><init>(Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->j:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->d()Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->k:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->c()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->d()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->j()Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->j()Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;->c()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view_dimen_96"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "game_icon"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->k:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v1, v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a:Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->j:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->b(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;II)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->l:Lcom/xiaomi/gamecenter/sdk/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->l:Lcom/xiaomi/gamecenter/sdk/a;

    const-string v1, "pref_key_vip_tips_show"

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/a;->b(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_4
    const-string v0, "MiGameSDK.MiFloatMenuWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "headImgUrl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatMenuWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nickName "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mifloat_default_nick_name"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a:Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;

    move-result-object v2

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->j:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;II)V

    goto :goto_2

    :cond_8
    const/16 v0, 0x8

    goto :goto_3

    :cond_9
    move-object v8, v1

    goto/16 :goto_1

    :cond_a
    move-object v7, v0

    goto/16 :goto_0

    :cond_b
    move-object v7, v0

    move-object v8, v1

    goto :goto_4
.end method

.method private h()V
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x8

    const-string v0, "showVipAndMemberIcon"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->k()Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->m:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "view is null , return"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "no vip info cached or user changed"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->o:Landroid/widget/Space;

    invoke-virtual {v0, v9}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->getVipLevelInfo()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getLevel()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getLevelNickIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view_dimen_118"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view_dimen_38"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vip_default_icon"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->n:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;II)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v7}, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->getMemInfo()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_game_member"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;->getValidateStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->i()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mio_game_vip_lost_icon"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :pswitch_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->i()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->n:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->m:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->o:Landroid/widget/Space;

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->o:Landroid/widget/Space;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;)V
    .locals 5

    const/4 v4, 0x4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuInfo;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->f:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view_dimen_10"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view_dimen_10"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;

    invoke-virtual {v0, v4}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a(Z)V

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->e()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->h()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view_dimen_40"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view_dimen_40"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->h:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->i:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemDecoration;->a(Z)V

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a(Z)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->b(Z)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->b(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_title_parent"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->k:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "miservicesdk://mifloat_userinfo"

    const-string v2, "\u66f4\u591a"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->l:Lcom/xiaomi/gamecenter/sdk/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->l:Lcom/xiaomi/gamecenter/sdk/a;

    const-string v1, "pref_key_vip_tips_show"

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->l:Lcom/xiaomi/gamecenter/sdk/a;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/a;->b()V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->c()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRefreshVipEvent(Lcom/xiaomi/gamecenter/sdk/entry/RefreshVipEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->h()V

    return-void
.end method
