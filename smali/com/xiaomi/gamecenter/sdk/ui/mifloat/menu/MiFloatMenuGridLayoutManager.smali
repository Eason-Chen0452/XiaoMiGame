.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;
.super Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;


# instance fields
.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;->z:Z

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;->z:Z

    return-void
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/MiFloatMenuGridLayoutManager;->z:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
