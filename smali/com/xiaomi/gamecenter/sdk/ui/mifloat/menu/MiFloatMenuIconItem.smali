.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/b;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

.field private e:Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/report/MiFloatDataReport;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;)V

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->clear(Landroid/view/View;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mifloat_menu_welfare"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mifloat_menu_gift"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mifloat_menu_coup"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_empty_dark"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/widget/ImageView;I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->d:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    if-nez v0, :cond_5

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->d:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->e:Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    if-nez v0, :cond_6

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->e:Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mio_empty_dark"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->d:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    iget v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->f:I

    iget v6, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->f:I

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;II)V

    goto/16 :goto_1

    :cond_7
    const/16 v0, 0x8

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_icon"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_icon_redpoint"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mifloat_menu_name"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "view_dimen_134"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->f:I

    return-void
.end method
