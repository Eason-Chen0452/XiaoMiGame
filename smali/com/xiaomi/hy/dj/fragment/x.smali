.class Lcom/xiaomi/hy/dj/fragment/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/u;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/u;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/x;->a:Lcom/xiaomi/hy/dj/fragment/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/x;->a:Lcom/xiaomi/hy/dj/fragment/u;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/x;->a:Lcom/xiaomi/hy/dj/fragment/u;

    iget-object v1, v1, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iget-object v1, v1, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->b(Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->a(Ljava/lang/String;JJ)V

    return-void
.end method
