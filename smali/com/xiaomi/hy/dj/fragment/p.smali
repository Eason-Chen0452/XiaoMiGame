.class Lcom/xiaomi/hy/dj/fragment/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/o;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/o;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/p;->a:Lcom/xiaomi/hy/dj/fragment/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/p;->a:Lcom/xiaomi/hy/dj/fragment/o;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/o;->b:Lcom/xiaomi/hy/dj/fragment/HySzfPayFragment;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/p;->a:Lcom/xiaomi/hy/dj/fragment/o;

    iget-object v1, v1, Lcom/xiaomi/hy/dj/fragment/o;->a:Ljava/lang/String;

    const-wide/16 v2, 0x1f40

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/hy/dj/fragment/HySzfPayFragment;->a(Ljava/lang/String;JJ)V

    return-void
.end method
