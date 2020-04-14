.class public Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_fault_notice_view"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fault_notice_title"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fault_notice_close"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fault_notice_okbtn"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fault_notice_actionbtn"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "fault_notice_content"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->g:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/protocol/login/FaultInfo;)V
    .locals 10

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/login/FaultInfo;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/login/FaultInfo;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->b:Landroid/widget/TextView;

    const/high16 v2, -0x4d000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->b:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    const v4, 0x3fc66666    # 1.55f

    invoke-virtual {v1, v2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->b:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_2

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    array-length v5, v1

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    new-instance v7, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView$a;

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->g:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {v7, v8, v9}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView$a;-><init>(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {v0, v6}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/16 v9, 0x22

    invoke-virtual {v4, v7, v8, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/login/FaultInfo;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fault_notice_close"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fault_notice_okbtn"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-string v0, "fault_notice"

    const-string v1, "fault_close"

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->g:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fault_notice_actionbtn"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "fault_notice"

    const-string v1, "fault_goto"

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;->g:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x193

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    goto :goto_0
.end method
