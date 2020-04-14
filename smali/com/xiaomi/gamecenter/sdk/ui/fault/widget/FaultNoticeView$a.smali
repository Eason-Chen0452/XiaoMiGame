.class public final Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView$a;
.super Landroid/text/style/ClickableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView$a;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/fault/widget/FaultNoticeView$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
