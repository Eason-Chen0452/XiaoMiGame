.class public Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/widget/AdapterView$OnItemClickListener;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/GridView;

.field private d:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

.field private e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

.field private f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

.field private g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AdapterView$OnItemClickListener;Landroid/view/View$OnClickListener;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->setGravity(I)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->setOrientation(I)V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->a:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->a()V

    return-void
.end method

.method private a()V
    .locals 14

    const/4 v13, 0x1

    const/4 v0, 0x0

    const/4 v12, -0x1

    const/4 v11, -0x2

    const/4 v10, 0x0

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v1

    const-string v3, "#FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->d:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const-string v1, "common"

    const-string v3, "base"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->d:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->d:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->d:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const-string v3, "\u8bf7\u9009\u62e9\u767b\u5f55\u65b9\u5f0f"

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x14

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->d:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "common"

    const-string v3, "base"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setId(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v13}, Landroid/widget/GridView;->setChoiceMode(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setStretchMode(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v3, "WEIBO"

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mio_selector_login_item"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setSelector(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x32

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareAdapter;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareAdapter;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->c:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "MI"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;-><init>()V

    aput-object v0, v4, v1

    aget-object v0, v4, v1

    const-string v6, "\u5c0f\u7c73"

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a(Ljava/lang/String;)V

    aget-object v0, v4, v1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "mio_login_third_account_mi"

    invoke-static {v6, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a(I)V

    aget-object v0, v4, v1

    sget-object v6, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->d:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/high16 v3, 0x41880000    # 17.0f

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    goto/16 :goto_0

    :cond_1
    const-string v6, "QQ"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;-><init>()V

    aput-object v0, v4, v1

    aget-object v0, v4, v1

    const-string v6, "QQ"

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a(Ljava/lang/String;)V

    aget-object v0, v4, v1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "mio_login_third_account_qq"

    invoke-static {v6, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a(I)V

    aget-object v0, v4, v1

    sget-object v6, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string v6, "WX"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;-><init>()V

    aput-object v0, v4, v1

    aget-object v0, v4, v1

    const-string v6, "\u5fae\u4fe1"

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a(Ljava/lang/String;)V

    aget-object v0, v4, v1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "mio_login_third_account_wx"

    invoke-static {v6, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a(I)V

    aget-object v0, v4, v1

    sget-object v6, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareAdapter;->a([Ljava/lang/Object;)V

    :goto_3
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->b:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setId(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v0, v13}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setGravity(I)V

    const-string v0, "common"

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    sget v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->l:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    :goto_4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v1

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v4, -0x58da

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v5, -0xa8400

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v6, -0x8c7002

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v7, -0xbaa122

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x1e0

    invoke-static {v7}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v7

    const/16 v8, 0x55

    invoke-static {v8}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v8

    invoke-direct {v1, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x14

    invoke-static {v7}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v7

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v7, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->b:Landroid/view/View$OnClickListener;

    invoke-direct {v7, v8, v9}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v7, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v8, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setId(I)V

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const-string v8, "\u4f7f\u7528\u5c0f\u7c73\u5e10\u53f7\u767b\u5f55"

    invoke-virtual {v7, v8}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v7, v12}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {v7, v8}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiSelector;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "mio_login_third_account_mi_pure"

    invoke-static {v4, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x41

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    const/16 v8, 0x41

    invoke-static {v8}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    invoke-virtual {v3, v4, v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v4, v3, v10, v10, v10}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->e:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1e0

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    const/16 v4, 0x55

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x2d

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/16 v3, 0x37

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->b:Landroid/view/View$OnClickListener;

    invoke-direct {v3, v4, v7}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setId(I)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const-string v4, " \u4f7f\u7528QQ\u5e10\u53f7\u767b\u5f55"

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v3, v12}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-static {v5, v6}, Lcom/xiaomi/gamecenter/sdk/ui/MiSelector;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mio_login_third_account_qq_pure"

    invoke-static {v4, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x41

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    const/16 v6, 0x41

    invoke-static {v6}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v0, v3, v10, v10, v10}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/16 v3, 0x14

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->f:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    sget v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->i:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectLoginAccount;->g:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    goto/16 :goto_4

    :cond_6
    move v0, v1

    goto/16 :goto_2
.end method
