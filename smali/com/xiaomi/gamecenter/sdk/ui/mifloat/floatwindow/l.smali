.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/i;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/i;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/l;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/i;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/l;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/l;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/i;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/i;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/l;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/i;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/i;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->s(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/n;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/l;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/n;->a(Landroid/view/View;)V

    return-void
.end method
