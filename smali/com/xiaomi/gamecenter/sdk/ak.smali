.class final Lcom/xiaomi/gamecenter/sdk/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/aj;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ak;->a:Lcom/xiaomi/gamecenter/sdk/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ak;->a:Lcom/xiaomi/gamecenter/sdk/aj;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0a\u4f20\u89d2\u8272\u4fe1\u606f\uff1a\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ak;->a:Lcom/xiaomi/gamecenter/sdk/aj;

    iget-object v2, v2, Lcom/xiaomi/gamecenter/sdk/aj;->b:Lcom/xiaomi/gamecenter/sdk/RoleData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
