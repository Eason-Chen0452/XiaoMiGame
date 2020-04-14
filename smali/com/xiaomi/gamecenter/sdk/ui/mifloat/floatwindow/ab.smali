.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ab;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    const-string v0, "MiGameSDK.MiFloatView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHeightChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ab;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ab;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;->a(I)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    const-string v0, "MiGameSDK.MiFloatView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWidthChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ab;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/ab;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatView;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/aa;->b(I)V

    :cond_0
    return-void
.end method
