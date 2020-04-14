.class Lcom/xiaomi/hy/dj/fragment/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/d;->a:Lcom/xiaomi/hy/dj/fragment/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/d;->a:Lcom/xiaomi/hy/dj/fragment/c;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/c;->c:Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;->b:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u67e5\u8be2\u652f\u4ed8\u7ed3\u679c..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/d;->a:Lcom/xiaomi/hy/dj/fragment/c;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/c;->c:Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/d;->a:Lcom/xiaomi/hy/dj/fragment/c;

    iget-object v1, v1, Lcom/xiaomi/hy/dj/fragment/c;->b:Ljava/lang/String;

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;->a(Ljava/lang/String;JJ)V

    return-void
.end method
