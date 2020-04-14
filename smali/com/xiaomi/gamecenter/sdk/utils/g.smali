.class final Lcom/xiaomi/gamecenter/sdk/utils/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;II)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/g;->c:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    iput p2, p0, Lcom/xiaomi/gamecenter/sdk/utils/g;->a:I

    iput p3, p0, Lcom/xiaomi/gamecenter/sdk/utils/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/g;->c:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->access$100(Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/g;->c:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->access$000(Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;)I

    move-result v1

    iget v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/g;->a:I

    iget v5, p0, Lcom/xiaomi/gamecenter/sdk/utils/g;->b:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/g;->c:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->invalidate()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/g;->c:Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;->access$202(Lcom/xiaomi/gamecenter/sdk/utils/MarqueeTextView;Z)Z

    return-void
.end method
