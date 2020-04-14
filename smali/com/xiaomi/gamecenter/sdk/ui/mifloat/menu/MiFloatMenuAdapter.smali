.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;
.super Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/view/LayoutInflater;

.field private h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/widget/recyclerview/BaseRecyclerAdapter;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->g:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;

    instance-of v0, p1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;

    invoke-virtual {p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuItemInfo;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->g:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->a:Landroid/content/Context;

    const-string v2, "mifloat_meun_icon_item"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuAdapter;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuIconItem;->a(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-object v0
.end method
