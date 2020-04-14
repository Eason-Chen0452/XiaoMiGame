.class public Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;
.super Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private i:Z

.field private j:Landroid/widget/RelativeLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/app/Dialog;

.field private u:Z

.field private v:I

.field private w:J

.field private x:J

.field private y:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->i:Z

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->u:Z

    const v0, 0xc353

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->v:I

    iput-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->w:J

    iput-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->x:J

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->i()Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x7531

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->c(I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;I)V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mio_download_progress"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "progressbar"

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "progressbar_title"

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "progressbar_progress"

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->p:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->o:Landroid/widget/ProgressBar;

    sget-wide v4, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f:J

    const/16 v3, 0xa

    shr-long/2addr v4, v3

    long-to-int v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->t:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->t:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->t:Landroid/app/Dialog;

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    const/16 v1, 0x8

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/content/Context;IZ)V
    .locals 10

    const/4 v3, 0x0

    const/16 v9, 0x14

    const/4 v8, 0x0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_dialog_download_failure"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    :goto_0
    const-string v0, "btn_close"

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "btn"

    invoke-static {p1, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "tv_info"

    invoke-static {p1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    packed-switch p2, :pswitch_data_0

    :goto_1
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/q;

    invoke-direct {v3, p0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/q;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/r;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/r;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_dialog_install"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u60a8\u9700\u8981\u5b89\u88c5\u65b0\u7248\u672c\u6e38\u620f\u670d\u52a1("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f:J

    shr-long/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB)\u624d\u80fd\u4f7f\u7528\u5fae\u4fe1\u767b\u5f55\u529f\u80fd\uff0c\u70b9\u51fb\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u60a8\u9700\u8981\u5b89\u88c5\u65b0\u7248\u672c\u6e38\u620f\u670d\u52a1("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f:J

    shr-long/2addr v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "MB)\u624d\u80fd\u4f7f\u7528\u5fae\u535a\u767b\u5f55\u529f\u80fd\uff0c\u70b9\u51fb\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xc353
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->q:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;I)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->o:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->q:Landroid/widget/TextView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->q:Landroid/widget/TextView;

    const-string v1, "\u6e38\u620f\u670d\u52a1\u4e0b\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->p:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v2, p1, 0x64

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->o:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->p:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->q:Landroid/widget/TextView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->o:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->p:Landroid/widget/TextView;

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->q:Landroid/widget/TextView;

    const-string v1, "\u6e38\u620f\u670d\u52a1\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private d(I)V
    .locals 4

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->v:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    const/16 v2, 0x4e20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->j()V

    return-void
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    const/16 v2, 0x4e21

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->y:Landroid/os/Handler;

    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final b()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->b:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected final d()Landroid/view/View;
    .locals 9

    const/4 v2, -0x1

    const/4 v1, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x4

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_login"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wechat_account_icon"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_login_third_account_wechat_disable"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mi_account_layout"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->j:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wechat_account_layout"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "qq_account_layout"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->l:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "weibo_account_layout"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->m:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "info_text"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "version_text"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->s:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wechat_account_last_login"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "mi_account_last_login"

    invoke-static {v2, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "qq_account_last_login"

    invoke-static {v5, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->s:Landroid/widget/TextView;

    const-string v6, "SDK_MI_SP_3.1.2"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->r:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v5}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v5, v6, :cond_1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->n:Landroid/view/View;

    invoke-virtual {v3, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x821

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iput-boolean v8, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->i:Z

    return-object v3

    :cond_1
    sget-object v6, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v5, v6, :cond_2

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v5, v6, :cond_0

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final e()V
    .locals 0

    return-void
.end method

.method protected final f()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->u:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->j()V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->v:I

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->c(I)V

    :cond_0
    return-void
.end method

.method protected final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    const-wide/16 v10, 0x1388

    const-wide/16 v8, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->i:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a:Landroid/content/Context;

    const-string v1, "\u6b63\u5728\u5904\u7406\u4e2d..."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    if-ne v1, v0, :cond_2

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->i:Z

    const v0, 0x9c41

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->c(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->l:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    if-ne v1, v0, :cond_3

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->i:Z

    const v0, 0x9c42

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->c(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    if-ne v1, v0, :cond_7

    const-string v0, "common"

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sWxCpCallBack:Lcom/xiaomi/gamecenter/sdk/WxCpCallback;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a:Landroid/content/Context;

    const-string v1, "\u5fae\u4fe1\u767b\u5f55\u672a\u6ce8\u518c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->i:Z

    const v0, 0x9c43

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->c(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->a:Landroid/content/Context;

    const-string v1, "\u5fae\u4fe1\u672a\u5b89\u88c5,\u65e0\u6cd5\u4f7f\u7528\u5fae\u4fe1\u767b\u5f55"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    const v0, 0xc353

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->d(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    if-ne v1, v0, :cond_8

    const v0, 0xc354

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->d(I)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->r:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->x:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->w:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v10

    if-gez v2, :cond_9

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_9
    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->w:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_a

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->w:J

    iput-wide v8, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->x:J

    goto/16 :goto_0

    :cond_a
    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->x:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->x:J

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_dialog_cancel_login"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "btn_close"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "btn_left"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "btn_right"

    invoke-static {v2, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/n;

    invoke-direct {v3, p0, v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/n;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/o;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/o;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/p;

    invoke-direct {v1, p0, v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/p;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method
