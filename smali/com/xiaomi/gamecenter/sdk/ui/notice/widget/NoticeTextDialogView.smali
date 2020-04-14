.class public Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;
.super Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView$a;
    }
.end annotation


# instance fields
.field private f:Landroid/content/Context;

.field private g:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

.field private o:Z

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->o:Z

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->f:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_notice_text_dialog"

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

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_title"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->g:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_content"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_close"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_checkbox"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->j:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->j:Landroid/widget/CheckBox;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/e;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/e;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->i:Landroid/widget/TextView;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/f;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_checkbox_tip"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->k:Landroid/widget/TextView;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/g;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/g;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_btn_parent"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_notice_btn"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->m:Landroid/widget/TextView;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/h;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bf;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->c:Lcom/xiaomi/gamecenter/sdk/bf;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->n:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bf;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->c:Lcom/xiaomi/gamecenter/sdk/bf;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->c:Lcom/xiaomi/gamecenter/sdk/bf;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->a:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->d()V

    return-void
.end method

.method static synthetic h(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->j:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/bg;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    return-object v0
.end method

.method static synthetic k(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->e:Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;

    return-object v0
.end method

.method static synthetic l(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->g:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->n:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    return-object v0
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V
    .locals 9

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->n:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->b()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->p:I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->p:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->d()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    invoke-interface {v3, p1}, Lcom/xiaomi/gamecenter/sdk/bg;->a(Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;)V

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->g:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    invoke-virtual {v3, v1}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/i;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->h:Landroid/widget/TextView;

    const/high16 v3, -0x4d000000

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->h:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3fc66666    # 1.55f

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v3, v1, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v0, v2, v1, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    if-eqz v1, :cond_6

    array-length v4, v1

    if-lez v4, :cond_6

    array-length v4, v1

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    new-instance v6, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView$a;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView$a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v8, 0x22

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->n:Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;->n()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->o:Z

    return v0
.end method

.method protected final c()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->c()V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeTextDialogView;->d()V

    return-void
.end method
