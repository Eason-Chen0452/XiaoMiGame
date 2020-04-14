.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/o;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/o;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/o;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2710

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
