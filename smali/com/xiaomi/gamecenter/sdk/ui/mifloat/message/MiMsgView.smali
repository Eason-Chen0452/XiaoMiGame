.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

.field private g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    const-string v0, "float_new_msg_layout"

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    const-string v0, "float_new_msg_layout"

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    const-string v1, "float_new_msg_win_message"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->b:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    const-string v1, "float_new_msg_win_close_btn"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    const-string v1, "float_newmsg_win_btnroot"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    const-string v1, "float_new_msg_win_icon"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->b:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V
    .locals 8

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->getNotice()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->getIcon()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->isHideIcon()Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    const-string v3, "float_new_msg_win_horn"

    invoke-static {v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->e:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-static {v7}, Lcn/com/wali/basetool/utils/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->b:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->b:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->startScroll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->e:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;Lcom/bumptech/glide/load/Transformation;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_5
    move-object v0, v6

    goto :goto_2
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;

    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    const-string v2, "float_newmsg_win_btnroot"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->a:Landroid/content/Context;

    const-string v2, "float_new_msg_win_message"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->g:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgView;->f:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/a;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V

    goto :goto_0
.end method
