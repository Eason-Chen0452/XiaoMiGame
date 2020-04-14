.class public abstract Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected a:Landroid/app/AlertDialog;

.field protected b:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

.field protected c:Lcom/xiaomi/gamecenter/sdk/bf;

.field protected d:Lcom/xiaomi/gamecenter/sdk/bg;

.field protected e:Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/xiaomi/gamecenter/sdk/protocol/result/NoticeConfig;
.end method

.method public final a(Landroid/app/AlertDialog;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->a:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->a:Landroid/app/AlertDialog;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/a;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/a;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->c:Lcom/xiaomi/gamecenter/sdk/bf;

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->d:Lcom/xiaomi/gamecenter/sdk/bg;

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->e:Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->b:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->b:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;->b:Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/b;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/notice/dialog/BaseDialog;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/widget/NoticeDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method protected abstract b()Z
.end method

.method protected c()V
    .locals 0

    return-void
.end method
