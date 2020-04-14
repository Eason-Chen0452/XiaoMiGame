.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 2

    instance-of v0, p1, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/b;

    invoke-interface {p1}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/b;->a()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/b;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuWindow;)Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->b(I)V

    :cond_0
    return-void
.end method
