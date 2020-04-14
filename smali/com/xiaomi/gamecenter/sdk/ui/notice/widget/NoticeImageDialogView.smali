.class public Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;
.super Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;


# instance fields
.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

.field private m:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->n:Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_notice_image_dialog"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_image"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_close"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_checkbox"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->h:Landroid/widget/CheckBox;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/a;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/a;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->g:Landroid/widget/TextView;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/b;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_checkbox_tip"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->i:Landroid/widget/TextView;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/c;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/c;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_img_parent"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/d;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_checkbox_parent"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view_dimen_1800"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->o:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view_dimen_880"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->p:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view_dimen_960"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->q:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view_dimen_1732"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->r:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bf;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->c:Lcom/xiaomi/gamecenter/sdk/bf;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->l:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->n:Z

    return v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bf;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->c:Lcom/xiaomi/gamecenter/sdk/bf;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->b:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->c:Lcom/xiaomi/gamecenter/sdk/bf;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->b:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->dismiss()V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->b:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->d()V

    return-void
.end method

.method static synthetic h(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->h:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    return-object v0
.end method

.method static synthetic k(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;)Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->e:Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->l:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    return-object v0
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->l:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    invoke-interface {v1, p1}, Lcom/xiaomi/gamecenter/sdk/bg;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V

    :cond_2
    const-string v1, ""

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->k()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/DisplayUtils;->a(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v5, v2

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->l()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/DisplayUtils;->a(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v6, v2

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v2, v1

    :goto_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/bd;->a()Lcom/xiaomi/gamecenter/sdk/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_empty_dark"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_3
    if-ne v2, v4, :cond_6

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->i()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/DisplayUtils;->a(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v5, v2

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->j()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/DisplayUtils;->a(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v6, v2

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v2, v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->m:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    if-nez v1, :cond_5

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->f:Landroid/widget/ImageView;

    invoke-direct {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->m:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->f:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mio_empty_dark"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->m:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;II)V

    goto/16 :goto_0

    :cond_6
    move v6, v0

    move v5, v0

    move-object v2, v1

    goto :goto_1
.end method

.method protected final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->n:Z

    return v0
.end method

.method protected final c()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->c()V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->d()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->l:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->l:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeImageDialogView;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V

    :cond_0
    return-void
.end method
