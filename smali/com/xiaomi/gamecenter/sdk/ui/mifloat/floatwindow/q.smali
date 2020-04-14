.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/q;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/q;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "show mifloat in jar"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method
